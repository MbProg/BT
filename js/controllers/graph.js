
'use strict'

var _ = require('lodash');
var configuration = require('../general/configuration');
var generalFunctions = require('../general/generalFunctions');
var sizeof = require('sizeof');
const ipc = require("electron").ipcMain;
var fs = require('fs');
var Viz = require('../../node_modules/viz.js/viz.js');
var g_pipelineThreshold = 0.0
var g_doAllThreshold = 0.0
const CONSTANTS = require('../general/constants');
/**
 * Class for keeping track of the node-expansions done by the user.
 */
class ExpansionPath {
  constructor(rootNodes) {
    this._expandedNodesPerLevel = [];
    this._expansionLevelsPerNode = {};
    this._visibleLevelsPerNode = {};
    this._patternDetectedNodes = [];
    this._rootNodes = rootNodes;
  }
  expandToNodes(nodeIds,nodePatterns,reserve){
    reserve = reserve || false;
    // use DFS to expand all nodes which are in the path to a node with pipeline    
    _.each(this._rootNodes,(root)=>{
      this.expandToNodesSub(root,nodeIds,nodePatterns,reserve);
    })
  }
  expandToNodesSub(node,nodeIds,nodePatterns,reserve)
  {
    // first we expand the nodes and add them to the ExpansionPath, because we are going bottom up
    // if the node is not detected then we close them and remove them from ExpansionPath until we have reachted the root
    this.addNode(node);
    node.expand();
    let childNodeIdMatched = false
    var temp = node._childrenDetails;
    _.each(node.children,(child)=>{
      childNodeIdMatched |= this.expandToNodesSub(child,nodeIds,nodePatterns,reserve);
    })
    let NodeIdMatched = nodeIds.indexOf( node.originalId)
    // if one of the children or this node is the goal -> don't remove them from ExpansionPath
    if (childNodeIdMatched || NodeIdMatched >=0 || (reserve && node._gui_shownPattern != ""))
    {
      // if this node is the goal -> set red border, pattern of the node and the right border- and fillcolor for the children
      if (NodeIdMatched >=0)
      {        
        node._gui_shownPattern = nodePatterns[NodeIdMatched]; // the pattern selected for the node
        node._gui_borderColor = CONSTANTS.PATTERNBORDERCOLOR; // red border
        this._patternDetectedNodes.push(node);                // we need that to reference all found pattern nodes

        // set the gui attributes of the children
        _.each(node.children,(child)=>{
          if (child._evaluate){
            // color is changed if the pattern is taskparallelism
            if(node._gui_shownPattern == CONSTANTS.TASKPARALLELISM){
              _.filter(node._childrenDetails,(childDetails)=>{
                if (childDetails.id == child._originalId){
                  switch(childDetails.mwType){
                    case CONSTANTS.FORK:child._gui_fillcolor = CONSTANTS.FORKFILLCOLOR; break;
                    case CONSTANTS.WORKER:child._gui_fillcolor = CONSTANTS.WORKERFILLCOLOR; break;
                    case CONSTANTS.CON_BARRIER:child._gui_fillcolor = CONSTANTS.CON_BARRIERFILLCOLOR; break;
                    default: child._gui_fillcolor = CONSTANTS.NONCON_BARRIERFILLCOLOR; child._gui_borderColor = CONSTANTS.NORMALBORDERCOLOR; break;
                  }
                  child._gui_borderColor = child.containsPattern(g_pipelineThreshold,g_doAllThreshold)?CONSTANTS.PATTERNBORDERCOLOR:CONSTANTS.EVALUATEDNODEBORDERCOLOR;
                  return;
                }
              });
            }
            // for all other evaluated childnodes of other patterns just the redorange fill color and red border if they contain patterns
            else{
              child._gui_fillcolor = CONSTANTS.EVALUATIONFILLCOLOR;
              child._gui_borderColor = child.containsPattern(g_pipelineThreshold,g_doAllThreshold)?CONSTANTS.PATTERNBORDERCOLOR:CONSTANTS.EVALUATEDNODEBORDERCOLOR;
            }
          }
        })
      }
    }
    // the node was not in the list and none of its children -> collapse it and remove it from ExpansionPath
    else
    {
      this.removeNode(node);
      node.collapse()
    }
    return node.expanded;
  }

  reset() {
    this._expandedNodesPerLevel = [];
    this._expansionLevelsPerNode = {};
    this._visibleLevelsPerNode = {};
    this._patternDetectedNodes = [];
  }

  getVisibleRootNodes() {
    var level = this._expandedNodesPerLevel.length - configuration.readSetting('visibleParents');
    if (level < 0) {
      return this._rootNodes;
    }
    return this._expandedNodesPerLevel[level];
  }
  getPipelineThreshold(){
    return configuration.readSetting('pipelineThreshold');
  }
  getDoAllThreshold(){
    return configuration.readSetting('doAllThreshold');
  }

  /**
	 * Add a node to the expansion paths
	 * 
	 * @param {Node}
	 *            node The node to be added
	 */
  addNode(node) {
    if (!_.has(this._expansionLevelsPerNode, node.id)) {
      var that = this;
      var parentLevel = -1;
      _.each(node.parents, function(parentNode) {
        if (_.has(that._expansionLevelsPerNode, parentNode.id) && that._expansionLevelsPerNode[parentNode.id] > parentLevel) {
          parentLevel = that._expansionLevelsPerNode[parentNode.id];
        }
      });
      parentLevel++;
      if (this._expandedNodesPerLevel.length <= parentLevel) {
        this._expandedNodesPerLevel[parentLevel] = [];
      }
      this._expandedNodesPerLevel[parentLevel].push(node);
      this._expansionLevelsPerNode[node.id] = parentLevel;
      this._visibleLevelsPerNode[node.id] = parentLevel;
      _.each(node.children,(child)=>{
        this._visibleLevelsPerNode[child.id] = parentLevel + 1;
      })
      node.expand();
    }
  }


  /**
	 * Remove a node from the expansion paths
	 * 
	 * @param {Node}
	 *            node The node to be removed
	 */
  removeNode(node) {
    if (_.has(this._expansionLevelsPerNode, node.id)) {
      var level = this._expansionLevelsPerNode[node.id];
      var levelNodes = this._expandedNodesPerLevel[level];
      var index = levelNodes.indexOf(node);
      this._expandedNodesPerLevel[level].splice(index, 1);
      delete this._expansionLevelsPerNode[node.id];
      if (!this._expandedNodesPerLevel[level].length) {
        this._expandedNodesPerLevel.splice(level);
      }
      node.collapse();
    }
  }
}

/**
 * Module for interacting with the graph and updating the displayed one.
 * 
 * @module graphController
 */
module.exports = {
  controller: function controller(nodes, rootNodes) {
    var expansionPath = new ExpansionPath(rootNodes);
    var expandNodeDependency;
    var showWeakDependency;
    var showAllDependencies;
    function findFirstVisibleAncestor(node) {
      if (!node.parents.length)
        return false;
      var i, res;
      for (i = 0; i < node.parents.length; i++) {
        if (node.parents[i].expanded) {
          return node;
        }
      }
      for (i = 0; i < node.parents.length; i++) {
        res = findFirstVisibleAncestor(node.parents[i]);
        if (res) {
          return res;
        }
      }
      return false;
    }

    /**
	 * Shows/Hides the function-nodes and function-call-edges of the given node
	 */
    ipc.on('toggleFunctionCalls', function(event, nodeId) {
      if (nodes[nodeId].collapsed) {
        expansionPath.addNode(nodes[nodeId]);
      } else {
        expansionPath.removeNode(nodes[nodeId]);
      }
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    /**
	 * Toggle the visibility of the dependencies-edges for a given CU node
	 */
    ipc.on('toggleDependencyEdges', function(event, nodeId) {
      var node = nodes[nodeId];
      if (node.type == 0) {
        nodes[nodeId].toggleDependencyVisibility();
      }else{
    	  var stack = [node];
    	  while(stack.length > 0){
    		  node = stack.pop();
    		  _.each(node.children, function(child){
    			  if(child.type == 0){
    				  child.toggleDependencyVisibility();
    			  }else if(child.expanded){
    				  stack.push(child);
    			  }
    			  
    		  });
    	  }
      }
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('showWeakDependency',function(event,expandDependency){
      showWeakDependency = expandDependency
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    })

    ipc.on('showAllDependencies',function(event,expandDependency){
      showAllDependencies = expandDependency;
      showWeakDependency = expandDependency;
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    })

    ipc.on('expandDependency', function(event,nodeId,expandDependency)
  {
    console.log("Test");
    console.log('expandOne', nodeId);
    nodes[nodeId].expandDependency = !nodes[nodeId].expandDependency;
    if(nodes[nodeId].expandDependency)
      expandNodeDependency = nodeId;
    else
      expandNodeDependency = -1;

    var node = nodes[nodeId];
    if (node.type >= 0 && node.type < 3) {
      expansionPath.addNode(node);
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    }
  })
    ipc.on('expandNode', function(event, nodeId) {
      console.log("Test");
      console.log('expandOne', nodeId);
      var node = nodes[nodeId];
      if (node.type >= 0 && node.type < 3) {
        expansionPath.addNode(node);
        event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
      }
    });

    ipc.on('collapseNode', function(event, nodeId) {
      var node = nodes[nodeId];
      expansionPath.removeNode(node);
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('expandAll', function(event, nodeId) {
      console.log('expandAll', nodeId);
      var node = nodes[nodeId];
      var stack = [];
      var seen = [];
      stack.push(node);
      do {
        node = stack.pop();
        if (seen.indexOf(node.id) == -1) {
          seen.push(node.id);
          expansionPath.addNode(node);
          node.expand();
          _.each(node.children, function(childNode) {
            if (childNode.children.length) {
              stack.push(childNode);
            }
          });
        }
      }
      while (stack.length);
      event.sender.send('update-graph', generateSvgGraph([nodes[nodeId]],expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('resetNodes',function(event){
      expansionPath.reset();
      _.each(nodes, function(node) {
        node.collapse();
        node._gui_shownPattern = ""
      });
      event.sender.send('update-graph', generateSvgGraph(rootNodes,expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('showANode',function(event,searchedNode,pattern){
      expansionPath.reset();
      let searchNodes = Array(1).fill(searchedNode);
      let searchPatterns = Array(1).fill(pattern);
      expansionPath.expandToNodes(searchNodes,searchPatterns,true)
      event.sender.send('update-graph', generateSvgGraph(rootNodes,expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('showAllNodes',function(event,nodeIds,nodePatterns){
      expansionPath.reset();
      expansionPath.expandToNodes(nodeIds,nodePatterns);
      event.sender.send('update-graph', generateSvgGraph(rootNodes,expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    })
    ipc.on('showNodes',function(event,searchedNodesId){
      expansionPath.reset();
      expansionPath.expandToNodes(searchedNodesId)
      event.sender.send('update-graph', generateSvgGraph(rootNodes,expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });
    
    ipc.on('fullGraph', function(event) {
      var node;
      var stack = [];
      var seen = [];
      _.each(rootNodes, function(root) {
        stack.push(root);
      });
      do {
        node = stack.pop();
        if (seen.indexOf(node.id) == -1) {
          seen.push(node.id);
          expansionPath.addNode(node);
          node.expand();
          _.each(node.children, function(childNode) {
            if (childNode.children.length) {
              stack.push(childNode);
            }
          });
        }
      }
      while (stack.length);
      event.sender.send('update-graph', generateSvgGraph(rootNodes,expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('expandTo', function(event, nodeId) {
      var currentNode = nodes[nodeId];
      var queue = [];
      // Find nearest visible ancestor of the given node to start expanding
		  // from
      while (currentNode.parents.length && currentNode.parents[0].collapsed) {
        queue.push(currentNode.parents[0]);
        currentNode = currentNode.parents[0];
      }
      while (queue.length) {
        currentNode = queue.pop();
        expansionPath.addNode(currentNode);
      }
      event.sender.send('update-graph', generateSvgGraph(expansionPath.getVisibleRootNodes(),expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    /**
	 * Resets the graph to its root-nodes
	 */
    ipc.on('resetGraph', function(event) {
      _.each(nodes, function(node) {
        expansionPath.reset();
        node.collapse();
      });
      event.sender.send('update-graph', generateSvgGraph(rootNodes,expansionPath.getPipelineThreshold(),expansionPath.getDoAllThreshold()));
    });

    ipc.on('nodeInfo', function(nodeId) {
      var node = nodes[nodeId];
    });

    /**
	 * Generates the svg HTML-Markup for the full displayed graph
	 * 
	 * @return {String} the string containing the HTML-Markup for the svg
	 */
    function generateSvgGraph(startNodes,pipelineThreshold,doAllThreshold) {
      
      if(pipelineThreshold == undefined)
        pipelineThreshold = configuration.readSetting('pipelineThreshold');
      if(doAllThreshold == undefined)
        doAllThreshold =  configuration.readSetting('doAllThreshold');

      g_pipelineThreshold = pipelineThreshold;
      g_doAllThreshold = doAllThreshold;
      var log = "StartNodes: ";
      _.each(startNodes, function(val) {
        log += val.id + ", ";
      });
      console.log(log);
      /*
		 * digraph in DOT format. Used as input for Viz.js
		 */
      var digraph;
      var expandendDependencies = [];
      var checkedNodes = [];
      var functionNodes = [];
      var functionCallEdges = [];
      var addedFlowEdges = [];
      var dependencyEdges = [];
	    var hiddenNodes = [];
      var visibleAncestor;

      _.each(startNodes, function(root) {
        if (root.type == 0) {
		  hiddenNodes.push(root);
          functionNodes = functionNodes.concat(root.children);
        } else {
          functionNodes.push(root);
        }
      });

      /**
       * creates in DOT language the node; some of the property are fixed set to get the desired look
       * @param {Node} node     
       * @param {String} shape  shape of the node
       */
      function createNode(node){
        let tempDiagraph = "";
        if(!node.expanded)
          node._gui_borderColor = (node.containsPattern(g_pipelineThreshold,g_doAllThreshold)?CONSTANTS.PATTERNBORDERCOLOR:CONSTANTS.NORMALBORDERCOLOR)
        tempDiagraph =  node.id + ' [id=' + node.id + ', shape=' + node._gui_shape + ';color="' +  node._gui_borderColor +'";fillcolor="' + node._gui_fillcolor +'";label=' + createLabel(node) + ', style="filled",fontsize=6,fixedsize=true,width=' + node._gui_size.width + ',height=' + node._gui_size.height + '];';
        return tempDiagraph;
      }
      /**
		 * Recursively adds a subgraph to the digraph.
		 * 
		 * @param {Node}
		 *            node the node for which to add a sub-graph
		 */
      function addSubgraph(node) {
        // Avoid endless-loops for recursive-functions
        if (checkedNodes.indexOf(node.id) > -1) {
          return;
        }
        checkedNodes.push(node.id);

        // Continue with new subgraph only if node is expanded, otherwise add as
		    // node (bottom)
        if (node.expanded) {
          digraph += "\nsubgraph cluster" + node.id + " {"
          var edge;
          _.each(node.children, function(child) {
            if (child.type == 2) {
              addSubgraph(child);
            } else if (child.type == 0) {
              checkedNodes.push(child.id);
              digraph += '\n' + createNode(child);

              // Add edges to successors and predecessors of CU
              _.each(child.successors, function(successor) {
                visibleAncestor = findFirstVisibleAncestor(successor);
                edge = child.id + ' -> ' + visibleAncestor.id;
                if (addedFlowEdges.indexOf(edge) == -1 && expansionPath._visibleLevelsPerNode[child.id]<=expansionPath._visibleLevelsPerNode[visibleAncestor.id]) {
                  digraph += "\n" + edge + ' [id="' + edge.replace(' -> ', 't') + '",color="#717070",arrowsize=.5];';
                  addedFlowEdges.push(edge);
                }
              });
              _.each(child.predecessors, function(predecessor) {
                visibleAncestor = findFirstVisibleAncestor(predecessor);
                edge = visibleAncestor.id + " -> " + child.id;
                if (addedFlowEdges.indexOf(edge) == -1 && expansionPath._visibleLevelsPerNode[child.id]<=expansionPath._visibleLevelsPerNode[visibleAncestor.id]) {
                  digraph += '\n' + edge + '[id="' + edge.replace(' -> ', 't') + '",color="#717070",arrowsize=.5];';
                  addedFlowEdges.push(edge);
                }
              });

              // Add edges to called function-nodes to the queue to be added
              // to the digraph at the end
              // (adding them at the end, renders the called-function outside
              // of this function)
              if (child.expanded) {
                _.each(child.children, function(functionCall) {
                  if (functionCall.type == 1) {
                    if (functionCall.expanded) {
                      edge = child.id + ' -> ' + functionCall.entry.id;
                      functionCallEdges.push(edge);
                    } else {
                      edge = child.id + ' -> ' + functionCall.id;
                      functionCallEdges.push(edge);
                    }
                  } else {
                    edge = child.id + ' -> ' + functionCall.id;
                    digraph += '\n' + edge + ' [id="' + edge.replace(' -> ', 't') + '",color="#717070",arrowsize=.5];';
                  }
                  functionNodes.push(functionCall);
                });
              } 

              // Add dependency-edges
              if (child.dependenciesVisible) {
                _.each(child.dependencies, function(dependency) {
                  visibleAncestor = findFirstVisibleAncestor(dependency.cuNode);
                  edge = child.id + ' -> ' + visibleAncestor.id;
                  edge = '\n' + edge + '[id="' + edge.replace(' -> ', 't') + '", label="' + dependency.variableName + '", taillabel="' + (dependency.isRaW() ? 'R' : 'W') + '", headlabel="' + (dependency.isWaR() ? 'R' : 'W') + '", constraint=false];';
                  dependencyEdges.push(edge);
                });
              }
            }
          });
          digraph += '\nlabel=' + createLabel(node) + ';';
          digraph += 'style="rounded"';
          digraph += 'bgcolor="#EDF1F2"'
          digraph += 'color="' + node._gui_borderColor + '"';
          digraph += '\nid=' + node.id;
          digraph += "\n}";
          if(node.expandDependency)
          {
            // if it should show the dependencies of the children
            // we create here the edge DOT language
          }
        } else {
          digraph += "\n" + createNode(node);// + node.id + ' [id=' + node.id + ', shape="' + shape + '", label=' + createLabel(node) + ', style="filled"];';
        }
      }

      digraph = "digraph G {rankdir=\"LR\"; \nnode [fontname = \"font-awesome\"];";
      while (functionNodes.length) {
        addSubgraph(functionNodes.pop());
      };
      
      _.each(hiddenNodes, function(node){
        _.each(node.children, function(functionNode){
          digraph += '\n'+(-functionNode.id)+' [id='+(-functionNode.id)+', shape="point", label="entry", style="filled"];';
          digraph += '\n' + (-functionNode.id) + ' -> ' + (functionNode.type == 1 ? functionNode.entry.id : functionNode.id) + ';';
      });
      });
	  
      // Add function-call and dependency edges outside of subgraphs. Correct clustering breaks otherwise
      _.each(functionCallEdges, function(edge) {
        digraph += '\n' + edge + ' [style=filled, id="' + edge.replace(' -> ', 't') + '",arrowsize=.5,penwidth="0.5"];';
      });
      _.each(dependencyEdges, function(edge) {
          digraph += edge;          
      });
      
      if(showWeakDependency)
      {
        _.each(expansionPath._patternDetectedNodes,(nd)=>{
            if(nd._depBadDotString != "")
            {
              digraph +='{edge [id = ED' + nd.id + ', color="red",penwidth="0.5",style="dashed",arrowsize=.5]; ' + nd._depBadDotString + "}"
            }
            if(showAllDependencies && nd._depGoodDotString!="")
            {
              digraph +='{edge [id = ED' + nd.id + ', color="blue",penwidth="0.5",style="dashed",arrowsize=.5]; ' + nd._depGoodDotString + "}"
            }          
        })

      }
      // 
      if (expandNodeDependency >= 0)
      {
        // then we should show the dependencies of this node
        //edge [id = 1123, color="red",penwidth="3.0"]; 2 -> c -> e -> a [weight=1]
        if(nodes[expandNodeDependency]._depGoodDotString != "")
        {
          digraph += '{edge [id = ED' + expandNodeDependency + ', color="blue",penwidth="3.0",style="dashed"]; ' + nodes[expandNodeDependency]._depGoodDotString + "}"
        }
        if(nodes[expandNodeDependency]._depBadDotString != "")
        {
          digraph +='{edge [id = ED' + expandNodeDependency + ', color="red",penwidth="3.0",style="dashed"]; ' + nodes[expandNodeDependency]._depBadDotString + "}"
        }
        // highlight the children with a blue shape border
        let highlightBorder = "{";
        _.each(nodes[expandNodeDependency]._children,function(child){
          highlightBorder += child._id + "[penwidth=2, color=blue, fillcolor=grey];"
        })
        highlightBorder += "}";
        digraph += highlightBorder;
      }
      // 
      digraph += "\n}";
      
      fs.writeFile('debug_dot.txt', digraph, function(err) {
            if (err) {
              return console.log('Unable to write file ' + err);
            }
            console.log('DOT-File was saved');
          });
	  

          var svg;
      try {
        var start = new Date().getTime();
        svg = Viz(digraph, {
          engine: "dot",
          format: "svg"
        });
        
        var end = new Date().getTime();
        console.log('Execution-Time of Layout-Calculation: ', end - start);


        // Hack for adding classes to svg nodes (not supported by graphviz)
        var node, nodeClass;
        _.each(checkedNodes, function(nodeId) {
          node = nodes[nodeId];
          switch (node.type) {
            case 0:
              nodeClass = 'cu-node';
              break;
            case 1:
              nodeClass = 'function-node';
              break;
            case 2:
              nodeClass = 'loop-node';
              break;
            case 3:
              nodeClass = 'function-call-node';
              break;
            default:
              nodeClass = "default-node";
          }

          svg = svg.replace('<g id="' + nodeId + '" class="node"', '<g id="' + nodeId + '" class="node ' + nodeClass + '"');
          svg = svg.replace('<g id="' + nodeId + '" class="cluster"', '<g id="' + nodeId + '" class="cluster ' + nodeClass + '"');
        });
        // Hack for adding classes to svg edges (not supported by graphviz)
        // _.each(addedFlowEdges, function(edge) {
        //   svg = svg.replace('<g id="' + edge.replace(' -> ', 't') + '" class="edge"', '<g id="' + edge + '" class="edge flow-edge"');
        // });

        _.each(functionCallEdges, function(edge) {
          svg = svg.replace('<g id="' + edge.replace(' -> ', 't') + '" class="edge"', '<g id="' + edge + '" class="edge function-call-edge"');
        });

        _.each(dependencyEdges, function(edge) {
          edge = svg.replace(/\[.*\]/, '');
          svg = svg.replace('<g id="' + edge.replace(' -> ', 't') + '" class="edge"', '<g id="' + edge + '" class="edge dependency-edge"');
        });

        // remove the href tag
        svg = svg.replace(new RegExp('</a>', 'g'),'')

        while(svg.indexOf('<a xlink')> -1)
        {
          svg = svg.replace(svg.substring(svg.indexOf('<a xlink'),svg.indexOf('>',svg.indexOf('<a xlink'))+1),'')
        }
        
        // Hack for removing title tooltip from elements (not supported by
		  // graphviz)
        svg = svg.replace(/<title>.*<\/title>/g, '');
      } catch (err) {
        console.error(err);
        fs.writeFile('error_dot.txt', digraph, function(err) {
          if (err) {
            return console.log('Unable to write file ' + err);
          }
          console.log('DOT-File was saved');
        });
      }
      console.log('Resulting DOT-String size: ', sizeof.sizeof(digraph, true), digraph.length);
      //svg =svg.substring(1,svg.indexOf('g id="3"')) + svg.substring(svg.indexOf('<p',svg.indexOf('g id="3"')),svg.indexOf('/>',svg.indexOf('<p',svg.indexOf('g id="3"')))) + '>' +'<animate attributeType="XML" attributeName="stroke-width" values="6;1;6;1" dur="2s" repeatCount="3"></animate>' + '</p>'
      return svg;
    }


    function createLabel(node) {
      function getHeatColor() {
        var r = Math.floor(255 * node.heatFactor);
        var b = Math.floor(255 * (1 - node.heatFactor));
        return generalFunctions.rgbToHex(r, 0, b);
      }
      var label = "<<TABLE BORDER=\"0\">";
      switch (node.type) {
        case 0:
          var colspan = 1;
          if (node.children.length) {
            colspan++;
          }
          if (node.dependencies.length) {
            colspan++;
          }
          // label += '\n<TR><TD COLSPAN="' + colspan + '">[' + node.startLine
			// + '-' + node.endLine + ']</TD></TR>';
           label += '\n<TR><TD>' + node.originalId + '</TD></TR>';
          // label += '\n<TR><TD COLSPAN="' + colspan + '">Data-Read: ' + generalFunctions.humanFileSize(node.readDataSize, true) + '</TD></TR>';
          // label += '\n<TR><TD COLSPAN="' + colspan + '">Data-Written: ' + generalFunctions.humanFileSize(node.writeDataSize, true) + '</TD></TR><TR>';
          // if (node.children.length) {
          //   label += '\n<TD>&#8618;: ' + node.children.length + '</TD>';
          // }
          // label += '<TD><FONT COLOR="' + getHeatColor() + '">&#xf06d;</FONT></TD>';
          // if (node.dependencies.length) {
          //   label += '<TD>D: ' + node.dependencies.length + '</TD>';
          // }    
          // label += '\n</TR>'      
          // if(node._pipelineScalarValue > g_pipelineThreshold)
          //   label += '\n<TR><TD id = "pipeline" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf231; (' + node._pipelineScalarValue + ')</FONT></TD></TR>';
          // if(node._doAllScalarValue > g_doAllThreshold)
          //   label += '\n<TR><TD id = "doAll" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf0ec; (' + node._doAllScalarValue + ')</FONT></TD></TR>';
          // if(node._geometricDecomposition == 1)
          //   label += '\n<TR><TD id = "geometricDecomp" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf2a6; </FONT></TD></TR>';


          label += '\n</TABLE>>';
          break;
        case 1:
          // label += '\n<TR><TD>' + node.name + '</TD></TR>';
          label += '\n<TR><TD>' + node.originalId + '</TD></TR>';
          // label += '\n<TR><TD>[' + node.startLine + '-' + node.endLine + ']</TD></TR>';
          // label += '\n<TR><TD><FONT COLOR="' + getHeatColor() + '">&#xf06d;</FONT></TD></TR>';
          // if(node._pipelineScalarValue > g_pipelineThreshold)
          //   label += '\n<TR><TD id = "pipeline" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf231; (' + node._pipelineScalarValue + ')</FONT></TD></TR>';
          // if(node._doAllScalarValue > g_doAllThreshold)
          //   label += '\n<TR><TD id = "doAll" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf0ec; (' + node._doAllScalarValue + ')</FONT></TD></TR>';
          // if(node._geometricDecomposition == 1)
          //   label += '\n<TR><TD id = "geometricDecomp" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf2a6; </FONT></TD></TR>';
          
          label += '\n</TABLE>>';
          break;
        case 2:
          if (node.expanded){label +=  '\n<TR><TD>' + node.originalId + '</TD><TD> (Loop)</TD></TR>';}
          else{label += '\n<TR><TD>' + node.originalId + '</TD></TR>';}
          // label += '\n<TR><TD>[' + node.startLine + '-' + node.endLine + ']</TD></TR>';
          // label += '\n<TR><TD><FONT COLOR="' + getHeatColor() + '">&#xf06d;</FONT></TD></TR>';
          // if(node._pipelineScalarValue > g_pipelineThreshold)
          //   label += '\n<TR><TD id = "pipeline" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf231; (' + node._pipelineScalarValue + ')</FONT></TD></TR>';
          // if(node._doAllScalarValue > g_doAllThreshold)
          //   label += '\n<TR><TD id = "doAll" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf0ec; (' + node._doAllScalarValue + ')</FONT></TD></TR>';
          // if(node._geometricDecomposition == 1)
          //   label += '\n<TR><TD id = "geometricDecomp" HREF=" "><FONT COLOR="' + getHeatColor() + '">&#xf2a6; </FONT></TD></TR>';
          label += '\n</TABLE>>';
          break;
        default:
          label = '"' + node.name + '"';
          label += '\n<TR><TD>' + node.originalId + '</TD></TR>';
          label += '\n</TABLE>>';

      }
      return label;
    }


    return {
      generateSvgGraph: generateSvgGraph
    }
  }
}
