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

  expandPipelineNodes()
  {
    // use DFS to expand all nodes which are in the path to a node with pipeline
    
    _.each(this._rootNodes,(root)=>{
      this.expandPipelineNode(root);
    })
    
  }
  expandPipelineNode(node)
  {
    this.addNode(node);
    node.expand();
    let bPipeline = false
    _.each(node.children,(child)=>{
      bPipeline |= this.expandPipelineNode(child);
    })
    if (bPipeline || node._pipelineScalarValue > g_pipelineThreshold)
    {
      if (node._pipelineScalarValue > g_pipelineThreshold)
      {
        this._patternDetectedNodes.push(node);
        _.each(node.children,(child)=>{
          child.setFlag(true);
        })
      }
      // this.addNode(node);
      // node.expand()
    }
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
    this._visibleLevelsPerNode = {}
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

    ipc.on('showParallelPatterns',function(event){
      expansionPath.reset();
      expansionPath.expandPipelineNodes()
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
      function createNode(node,shape){
        let tempDiagraph = "";
        if (node._flagged)
        {
          tempDiagraph =  node.id + ' [id=' + node.id + ', shape=' + shape + ';color="#F5BDA2";fillcolor="#F5BDA2";label=' + createLabel(node) + ', style="filled"];';
        }
        else
        {
          tempDiagraph =  node.id + ' [id=' + node.id + ', shape=' + shape + ';color="#A4A4A4";fillcolor="white";label=' + createLabel(node) + ', style="filled",fontsize=6,fixedsize=true,width=0.5,height=0.2];';
        }
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
              // check if the node is flagged -> highlight
              digraph += '\n' + createNode(child,'Mrecord');// + child.id + ' [id=' + child.id + ', shape=rect;label=' + createLabel(child) + ', style="filled"];';

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
                    digraph += '\n' + edge + ' [style=dotted, id="' + edge.replace(' -> ', 't') + '",color="#717070",arrowsize=.5];';
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
          digraph += '\nstyle="filled"';
          digraph += '\nid=' + node.id;
          digraph += "\n}";
          if(node.expandDependency)
          {
            // if it should show the dependencies of the children
            // we create here the edge DOT language
          }
        } else {
          var shape;
          switch (node.type) {
            case 1:
              shape = "hexagon";
              break;
            case 2:
              shape = "ellipse";
              break;
            case 3:
              shape = "diamond";
              break;
          }
          digraph += "\n" + createNode(node,shape);// + node.id + ' [id=' + node.id + ', shape="' + shape + '", label=' + createLabel(node) + ', style="filled"];';
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
        digraph += '\n' + edge + ' [style=dotted, id="' + edge.replace(' -> ', 't') + '"];';
      });
      _.each(dependencyEdges, function(edge) {
          digraph += edge;          
      });

      if(showWeakDependency)
      {
        _.each(expansionPath._patternDetectedNodes,(nd)=>{
            if(nd._depBadDotString != "")
            {
              digraph +='{edge [id = ED' + nd.id + ', color="red",penwidth="0.5"]; ' + nd._depBadDotString + "}"
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
          digraph += '{edge [id = ED' + expandNodeDependency + ', color="blue",penwidth="3.0"]; ' + nodes[expandNodeDependency]._depGoodDotString + "}"
        }
        if(nodes[expandNodeDependency]._depBadDotString != "")
        {
          digraph +='{edge [id = ED' + expandNodeDependency + ', color="red",penwidth="3.0"]; ' + nodes[expandNodeDependency]._depBadDotString + "}"
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
          if (node.expanded){label += '\n<TR><TD>Loop</TD></TR>';}
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
