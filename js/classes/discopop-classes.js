'use strict';

const CONSTANTS = require('../general/constants');
var _ = require('lodash');

/**
 * Represents a basic DiscoPoP node
 */
class Node {
  /**
   * Constructs a basic DiscoPoP node
   * @param   {!number}     id              The id of the node it refers to
   * @param   {!number}     fileId          The id of the file it refers to
   * @param   {!number}     type            The type of the node (0: CU, 1: Function, 2: Loop, 3: LibraryFunction)
   * @param   {number}      startLine       The start-line of the CUs code-section
   * @param   {number}      endLine         The end-line of the CUs code-section
   * @param   {number}      readDataSize    The amount of data read within the CU
   * @param   {number}      writeDataSize   The amount of data written within the CU
   * @param   {number[]}    readLines       The lines on which a read occurs within the CU
   * @param   {number[]}    writeLines      The lines on which a write occurs within the CU
   * @param   {number}      heatFactor      The factor of heat of this node in relation to other nodes in the graph
   */
  constructor(id, originalId, fileId, depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, type, childrenDetails, startLine, endLine, readDataSize, writeDataSize, readLines, writeLines, heatFactor,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,evaluate) {
    this._id = id;
    this._originalId = originalId;
    this._fileId = fileId;
    this._type = type;
    this._startLine = startLine;
    this._endLine = endLine;
    this._readDataSize = readDataSize;
    this._writeDataSize = writeDataSize;
    this._readLines = readLines;
    this._writeLines = writeLines;
    this._parents = [];
    this._children = [];
    this._childrenDetails = childrenDetails;
    this._heatFactor = heatFactor
    this._collapsed = true;
    this._dependencyCollapsed = true;
    this._depsOn = false;
    this._depGoodDotString = depGoodDotString;
    this._depBadDotString = depBadDotString
    this._depGoodPipelineDotString = depGoodPipelineDotString;
    this._depBadPipelineDotString = depBadPipelineDotString;
    this._depGoodTPDotString = depGoodTPDotString;
    this._depBadTPDotString = depBadTPDotString;
    this._pipelineScalarValue = pipelineScalarValue;
    this._doAllScalarValue = doAllScalarValue;
    this._geometricDecomposition = geometricDecomposition;
    this._taskParallelism = taskParallelism;
    this._evaluate = evaluate;
    // GUI Attributes
    this._flagged = "NULL";
    this._gui_shape = "Mrecord"           // default type for CU
    this._gui_size = "6";                 // if it has children the size gets bigger
    this._gui_shownPattern = "";          // the pattern the current node is showing 
    this._gui_fillcolor = "white";        // defualt white filled color
    this._gui_borderColor = "#A4A4A4";    // default grey border
  }

  /**
   * Adds a node to this nodes children and adds this node to the added node's parents
   * @param {Node} node The node to be added
   */
  addChild(node) {
    this._children.push(node);
    node.addParent(this);
  }

  /**
   * Adds a node to this nodes parents
   * @param {Node} node The node to be added
   */
  addParent(node) {
    this.parents.push(node);
  }

  /**
   * A boolean to mark nodes -> used for marking the nodes that should be highlighted in the graph
   * @param {flag} flag 
   */
  setFlag(flag){
    this._flagged = flag;
  }
  /**
   * The id of the file which the node refers to
   * @type {number}
   */
  get fileId() {
    return this._fileId;
  }

  /**
   * The ID of this node
   * @type {number}
   */
  get id() {
    return this._id;
  }

  get originalId(){
    return this._originalId;
  }

  /**
   * The type of this node
   * @type {number}
   */
  get type() {
    return this._type;
  }

  /**
   * The parent-nodes of this node
   * @type {Node[]}
   */
  get parents() {
    return this._parents;
  }

  /**
   * The children-nodes of this node
   * @type {Node[]}
   */
  get children() {
    return this._children;
  }

  /**
   * The start-line of the code-section referenced by this node
   * @type {number}
   */
  get startLine() {
    return this._startLine;
  }

  /**
   * The end-line of the code-section referenced by this node
   * @type {number}
   */
  get endLine() {
    return this._endLine;
  }

  /**
   * The amount of data being read within the node
   * @type {number}
   */
  get readDataSize() {
    return this._readDataSize;
  }

  /**
   * The amount of data being written within the node
   * @type {number}
   */
  get writeDataSize() {
    return this._writeDataSize;
  }

  /**
   * The lines on which reads occur within the node
   * @type {number[]}
   */
  get readLines() {
    return this._readLines;
  }

  /**
   * The lines on which writes occur within the node
   * @type {number[]}
   */
  get writeLines() {
    return this._writeLines;
  }

  /**
   * The heat-factor of this node in relation to other nodes
   * @type {number}
   */
  get heatFactor() {
    return this._heatFactor;
  }

  /**
   * Gives whether the node is collapsed or not
   * @return {Boolean}  True iff node is collapsed
   */
  get collapsed() {
    return this._collapsed;
  }

  /**
   * Gives whether the node is expanded or not
   * @return {Boolean}  True iff node is expanded
   */
  get expanded() {
    return !this._collapsed;
  }

  get dependencyExpanded(){
    return !this._dependencyCollapsed;
  }
  /**
   * Sets the node to be expanded
   */
  expand() {
    if (this._children.length) {
      this._collapsed = false;
    }
  }

  /**
   * Sets the node to be collapsed
   */
  collapse() {
    this._collapsed = true;
  }

  dependencyExpand(){
    this._dependencyCollapsed = false;
  }

  dependencyCollapse(){
    this._dependencyCollapsed = true;
  }

  containsPattern(pipelineThreshold,doAllThreshold){
    if(this._pipelineScalarValue>=pipelineThreshold || this._doAllScalarValue >= doAllThreshold || this._geometricDecomposition ){
      return true;
    }
    _.each(this._childrenDetails,(node)=>{
      if(node.mwtype == CONSTANTS.WORKER && node._evaluate){return true;}
      if(node.mwtype == CONSTANTS.BARRIER && node._evaluate){return true;}      
    });
    return false;  
  }

  getBiggestPattern(pipelineThreshold,doAllThreshold){
    var p = (this._pipelineScalarValue>=pipelineThreshold)?this._pipelineScalarValue:0;
    var d = (this._doAllScalarValue>=doAllThreshold)?this._doAllScalarValue:0;
    var g = this._geometricDecomposition;
    var m = 0;
    _.each(this._childrenDetails,function(node){
      if(node.mwtype == CONSTANTS.WORKER && node._evaluate){m = 1;}
      if(node.mwtype == CONSTANTS.BARRIER && node._evaluate){m = 1;}      
    });
    if(p>=d && p>=g && p>=m){return CONSTANTS.PIPELINE;}
    if(d>=g && d>=m){return CONSTANTS.DOALL;}
    if(g>=m){return g;}else{return CONSTANTS.GEOMETRICDECOMPOSITION;}
    if(m>0){return CONSTANTS.TASKPARALLELISM}
    return ""
  }
}

/**
 *	Represents a DiscoPoP Computational-Unit node
 *	@extends Node
 *	@inheritdoc
 */
class CuNode extends Node {
  /**
   * Constructs a CU DiscoPoP node
   * @param  {!number}          id              The id of the node it refers to
   * @param  {!number}          fileId          The id of the file it refers to
   * @param  {!number}          startLine       The start-line of the CUs code-section
   * @param  {!number}          endLine         The end-line of the CUs code-section
   * @param  {!number}          readDataSize    The amount of data read within the CU
   * @param  {!number}          writeDataSize   The amount of data written within the CU
   * @param  {!number[]}        readLines       The lines on which a read occurs within the CU
   * @param  {!number[]}        writeLines      The lines on which a write occurs within the CU
   * @param  {number}           heatFactor      The factor of heat of this node in relation to other nodes in the graph
   */
  constructor(id, originalId, fileId, lines, depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, childrenDetails, readDataSize, writeDataSize, readLines, writeLines, heatFactor,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism, evaluate) {
      var start = lines[0];
      var end = lines[0];
      var temp = [];
      for(var i = 0; i < lines.length; i++){
    	  if(lines[i] < start){
    		  start = lines[i];
    	  }
    	  if(lines[i] > end){
    		  end = lines[i];
    	  }
    	  temp[i] = lines[i];
      }
	  super(id, originalId, fileId, depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, 0, childrenDetails, start, end, readDataSize, writeDataSize, readLines, writeLines, heatFactor,pipelineScalarValue,doAllScalarValue ,geometricDecomposition,taskParallelism,evaluate);
      this._localVariables = [];
      this._globalVariables = [];
      this._dependencies = [];
      this._functionCalls = [];
      this._successors = [];
      this._predecessors = [];
      this._depsOn = false;
      this._lines = temp;
      this._gui_shape = 'Mrecord'
      this._gui_size = (this._childrenDetails.length)?{width:0.6,height:0.3}:{width:0.5,height:0.2};

    }
    /**
     * Add a successor CU to this node, and add this node to the predecessors of the added CU
     * @param {CuNode} node The successor CU
     */
  addSuccessor(node) {
    this._successors.push(node);
    node.addPredecessor(this);
  }

  /**
   * Add a CU to the nodes predecessors
   * @param {CuNode} node The predecessor CU
   */
  addPredecessor(node) {
    this._predecessors.push(node);
  }

  /**
   * Add a dependency to the CU
   * @param {Dependency} dependency The dependency to be added
   */
  addDependency(dependency) {
    this._dependencies.push(dependency);
  }

  /**
   * Add a function-call to the CU
   * @param {FunctionCall} functionCall The function-call to be added
   */
  addFunctionCall(functionCall) {
    this._functionCalls.push(functionCall);
  }

  /**
   * Add a variable to the local-variables of this CuNode
   * @param {NodeVariable} variable The variable to be added
   */
  addLocalVariable(variable) {
    this._localVariables.push(variable);
  }

  /**
   * Add a variable to the global-variables of this CuNode
   * @param {NodeVariable} variable The variable to be added
   */
  addGlobalVariable(variable) {
    this._localVariables.push(variable);
  }

  get lines(){
	return this._lines;  
  }
  
  /**
   * The successor-CUs of the CU
   * @type {CuNode[]}
   */
  get successors() {
    return this._successors;
  }

  /**
   * The predecessor-CUs of the CU
   * @type {CuNode[]}
   */
  get predecessors() {
    return this._predecessors;
  }

  /**
   * The local variables of the CU
   * @type {NodeVariable[]}
   */
  get localVariables() {
    return this._localVariables;
  }

  /**
   * The global variables of the CU
   * @type {NodeVariable[]}
   */
  get globalVariables() {
    return this._globalVariables;
  }

  /**
   * The dependencies of the CU
   * @type {Dependency[]}
   */
  get dependencies() {
    return this._dependencies;
  }

  /**
   * The function-calls of the CU
   * @type {FunctionCall[]}
   */
  get functionCalls() {
    return this._functionCalls;
  }

  /**
   * Gives whether the dependencies for this node are visible or not
   * @return {Boolean} True iff the dependency-edges are visible
   */
  get dependenciesVisible() {
    return this._depsOn;
  }

  /**
   * Toggles the visibility of the dependencies of this node
   */
  toggleDependencyVisibility() {
    this._depsOn = !this._depsOn;
  }
}

/**
 * Defines a DiscoPoP Loop node
 * @extends Node
 */
class LoopNode extends Node {
  /**
   * Constructs a Loop DiscoPoP node
   * @param  {!number}          id                    The id of the node it refers to
   * @param  {!number}          fileId                The id of the file it refers to
   * @param  {!number}          startLine             The start-line of the CUs code-section
   * @param  {!number}          endLine               The end-line of the CUs code-section
   * @param  {!number}          readDataSize          The amount of data read within the CU
   * @param  {!number}          writeDataSize         The amount of data written within the CU
   * @param  {!number[]}        readLines             The lines on which a read occurs within the loop
   * @param  {!number[]}        writeLines            The lines on which a read occurs within the loop
   * @param  {!number}          level                 The nested-level of the referenced loop
   * @param  {!number}          descendantNodeCount   The amount of nodes that are descendants of this one
   * @param  {number}           heatFactor            The factor of heat of this node in relation to other nodes in the graph
   */
  constructor(id, originalId, fileId, depGoodDotString,depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, childrenDetails, startLine, endLine, readDataSize, writeDataSize, readLines, writeLines, heatFactor, level, descendantNodeCount,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,evaluate) {
    super(id, originalId, fileId, depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, 2, childrenDetails, startLine, endLine, readDataSize, writeDataSize, readLines, writeLines, heatFactor,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,evaluate);
    this._level = level;
    this._descendantNodeCount = descendantNodeCount;
    this._gui_shape = 'ellipse'
    this._gui_size = (this._childrenDetails.length)?{width:0.6,height:0.3}:{width:0.5,height:0.2};
}

  /**
   * The nested-level of the loop
   * @type {number}
   */
  get level() {
    return this._level;
  }

  /**
   * The amount of nodes that are descendants of this one
   * @type {number}
   */
  get descendantNodeCount() {
    return this._descendantNodeCount;
  }

}

/**
 * Defines a DiscoPoP Library-Function
 * @extends Node
 */
class LibraryFunctionNode extends Node {
  /**
   * Constructs a DiscoPoP Library-Function
   * @param  {!number} id  The id of the node it refers to
   * @param  {!number} fileId  The id of the file it refers to
   * @param  {!string} name    The name of the function
   */
  constructor(id, originalId, fileId, name,depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,childrenDetails,evaluate) {
    super(id,originalId, fileId, depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, 3,childrenDetails,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,evaluate);
    this._name = name;
  }

  /**
   * The name of the function
   * @type {string}
   */
  get name() {
    return this._name;
  }
}

/**
 * Defines a DiscoPoP Function node
 * @extends Node
 */
class FunctionNode extends Node {
  /**
   * Constructs a Loop DiscoPoP node
   * @param  {!number}          id                    The id of the node it refers to
   * @param  {!number}          fileId                The id of the file it refers to
   * @param  {!number}          startLine             The start-line of the CUs code-section
   * @param  {!number}          endLine               The end-line of the CUs code-section
   * @param  {!number}          readDataSize          The amount of data read within the CU
   * @param  {!number}          writeDataSize         The amount of data written within the CU
   * @param  {!number[]}        readLines             The lines on which a read occurs within the function
   * @param  {!number[]}        writeLines            The lines on which a read occurs within the function
   * @param  {!string}          name                  The name of the function
   * @param  {!number}          descendantNodeCount   The amount of nodes that are descendants of this one
   * @param  {number}           heatFactor            The factor of heat of this node in relation to other nodes in the graph
   */
  constructor(id, originalId, fileId, depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, childrenDetails, startLine, endLine, readDataSize, writeDataSize, readLines, writeLines, heatFactor, name, descendantNodeCount,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,evaluate) {
    super(id, originalId, fileId,  depGoodDotString, depBadDotString, depGoodPipelineDotString, depBadPipelineDotString, depGoodTPDotString, depBadTPDotString, 1, childrenDetails, startLine, endLine, readDataSize, writeDataSize, readLines, writeLines, heatFactor,pipelineScalarValue,doAllScalarValue,geometricDecomposition,taskParallelism,evaluate);
    this._name = name;
    this._arguments = [];
    this._descendantNodeCount = descendantNodeCount;
    this._gui_shape = 'rect'
    this._gui_size = (this._childrenDetails.length)?{width:0.6,height:0.3}:{width:0.5,height:0.2};
}

  /**
   * The name of the function
   * @type {string}
   */
  get name() {
    return this._name;
  }

  /**
   * The entry CU of the function
   * @type {CuNode}
   */
  get entry() {
    for (var i = 0; i < this._children.length; i++) {
      if (this._children[i] instanceof CuNode && !this._children[i].predecessors.length) {
        return this._children[i];
      }
    }
    console.error("Function-Node did not contain an entry-CU", this);
    return null;
  }

  /**
   * The exit CU of the function
   * @type {CuNode}
   */
  get exit() {
    for (var i = 0; i < this._children.length; i++) {
      if (this._children[i] instanceof CuNode && !this._children[i].successors.length) {
        return this._children[i];
      }
    }
    console.error("Function-Node did not contain an exit-CU", this);
    return null;
  }

  /**
   * The arguments of the function
   * @type {NodeVariable[]}
   */
  get arguments() {
    return this._arguments;
  }

  /**
   * The amount of nodes that are descendants of this one.
   * @type {number}
   */
  get descendantNodeCount() {
    return this._descendantNodeCount;
  }

  /**
   * Add an argument to the function-node
   * @param {NodeVariable} variable The argument to be added
   */
  addArgument(variable) {
    this._arguments.push(variable);
  }
}

/**
 * Represents a DiscoPoP Node-Variable
 */
class NodeVariable {
  /**
   * Constructs a DiscoPoP Node-Variable
   * @param  {string} name The name of the variable
   * @param  {string} type The type of the variable
   */
  constructor(name, type) {
      this._name = name;
      this._type = type;
    }
    /**
     * The name of the variable
     * @type {string}
     */
  get name() {
      return this._name;
    }
    /**
     * The type of the variable
     * @type {string}
     */
  get type() {
    return this._type;
  }
}


/**
 * Defines a DiscoPoP Function-Call
 */
class FunctionCall {
  /**
   * Constructs a DiscoPoP FunctionCall
   * @param  {number}                             lineNumber  The line on which the function-call occurs
   * @param  {(FunctionNode|LibraryFunctionNode)} functionNode    The node of the called function
   */
  constructor(lineNumber, functionNode) {
      this._lineNumber = lineNumber;
      this._functionNode = functionNode;
    }
    /**
     * The line-number on which the function is called
     * @type {number}
     */
  get lineNumber() {
      return this._lineNumber;
    }
    /**
     * The node of the called function
     * @type {FunctionNode}
     */
  get functionNode() {
    return this._functionNode;
  }
}

/**
 * Defines a DiscoPoP Dependency
 */
class Dependency {
  /**
   * Constructs a DiscoPoP Dependency
   * @param {CuNode}  cuNode        The node of the CU on which there is a dependency
   * @param {number}  sinkLine      The sink-line of the dependency
   * @param {number}  sourceLine    The source-line of the dependency
   * @param {string}  variableName  The name of the variable causing the dependency
   * @param {number}  type          The type of the dependency (0: Read-After-Write, 1: Write-After-Read, 2: Write-After-Write)
   */
  constructor(cuNode, sinkLine, sourceLine, variableName, type) {
    this._cuNode = cuNode;
    this._sinkLine = sinkLine;
    this._sourceLine = sourceLine;
    this._variableName = variableName;
    this._type = type;
  }

  /**
   * The the CU on which there is a dependency
   * @type {CuNode}
   */
  get cuNode() {
    return this._cuNode;
  }

  /**
   * The line in which the 'after' action occurs
   * @type {number}
   */
  get sinkLine() {
    return this._sinkLine;
  }

  /**
   * The line in which the 'before' action occurs
   * @type {number}
   */
  get sourceLine() {
    return this._sourceLine;
  }

  /**
   * The name of the variable causing the dependency
   * @type {string}
   */
  get variableName() {
    return this._variableName;
  }

  /**
   * Returns whether or not this is a read-after-write dependency
   * @return {Boolean}
   */
  isRaW() {
    return this._type == 0;
  }

  /**
   * Returns whether or not this is a write-after-read dependency
   * @return {Boolean}
   */
  isWaR() {
    return this._type == 1;
  }

  /**
   * Returns whether or not this is a write-after-write dependency
   * @return {Boolean}
   */
  isWaW() {
    return this._type == 2;
  }
}

class FileMap {
  constructor(path, content) {
    this._path = path;
    this._content = content;
  }

  /**
   * The file-path to the file
   * @type {string}
   */
  get path() {
    return this._path;
  }

  /**
   * The contents of the file
   * @type {string}
   */
  get fileContent() {
    console.log('sup');
    return this._content;
  }

  /**
   * The name of the file
   * @type {string}
   */
  get fileName() {
    return this._path.split('/').slice(-1)[0];
  }
}


module.exports = {
  Node: Node,
  CuNode: CuNode,
  FunctionNode: FunctionNode,
  LoopNode: LoopNode,
  LibraryFunctionNode: LibraryFunctionNode,
  NodeVariable: NodeVariable,
  FunctionCall: FunctionCall,
  Dependency: Dependency,
  FileMap: FileMap,
};
