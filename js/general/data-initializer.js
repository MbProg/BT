'use strict'

var classes = require('../classes/discopop-classes');
var IntervalTree = require('../classes/intervalTree');
var CuNode = classes.CuNode;
var FunctionNode = classes.FunctionNode;
var LoopNode = classes.LoopNode;
var LibraryFunctionNode = classes.LibraryFunctionNode;
var NodeVariable = classes.NodeVariable;
var Dependency = classes.Dependency;
var FunctionCall = classes.FunctionCall;
var FileMap = classes.FileMap;

/**
 * Module initializing the data received by DiscoPoP
 * @module data-initializer
 */
module.exports = {
  /**
   * Prepares the received JSON data to be processable by the renderer-functions
   * @param  {DiscoPopData} data  The data received from DiscoPoP
   * @return {IntervalTree[]}     The CU interval-trees of each file, organized by their start and end -lines
   */
  prepareData: function(data, getIntervalTrees) {
    var intervalTrees = [];
    var i, j;
    var node, classNode, dependency;
    var fileId;
    var nodes = [];

    // --- FileMapping ---
    for (i = 0; i < data.fileMapping.length; i++) {
      if (getIntervalTrees) {
        intervalTrees.push(new IntervalTree());
      }
      data.fileMapping[i] = new FileMap(data.fileMapping[i].path, data.fileMapping[i].content);
    }


    for (i = 0; i < data.nodeData.length; i++) {
      
      if (i == 17)
        var skldjf = 0;
      node = data.nodeData[i];

      // set the dependency
      // here we build the dependency dot file for doAll
      var depBadDotString = "";
      var depGoodDotString = "";
      var depBadPipelineDotString = "";
      var depGoodPipelineDotString = "";
      for (let m = 0; m < node.tempChildrenNodes.length; m++)
      {
        let badSet = new Set();
        let goodSet = new Set();
        let badPipelineSet = new Set();
        let goodPipelineSet = new Set();
        let child = node.tempChildrenNodes[m];
        for (let n = 0; n < node.tempChildrenNodes.length; n++)
        {
          let otherChild = node.tempChildrenNodes[n];
          child.DependencyAll_RAW.forEach(dep =>{
              if (otherChild.id == dep.CUid)
              {
                // for doAll
                if (m>n)
                  goodSet.add(dep.newID);
                else
                  badSet.add(dep.newID);
                // for pipeline
                if (n<m)
                  badPipelineSet.add(dep.newID);
                else
                  goodPipelineSet.add(dep.newID);                  
              }
          })
  
        }
        badSet.forEach(depNode =>{
          depBadDotString +=  child.newID + "->" + depNode + " ";
        })
        goodSet.forEach(depNode =>{
          depGoodDotString +=  child.newID + "->" + depNode + " ";
        })
        badPipelineSet.forEach(depNode =>{
          depBadPipelineDotString +=  child.newID + "->" + depNode + " ";
        })
        goodPipelineSet.forEach(depNode =>{
          depGoodPipelineDotString +=  child.newID + "->" + depNode + " ";
        })
        
      }
 
      node.depGoodDotString = depGoodDotString;
      node.depBadDotString = depBadDotString;
      node.depGoodPipelineDotString = depGoodPipelineDotString;
      node.depBadPipelineDotString = depBadPipelineDotString;
      


      switch (node.type) {
        case 0:
          nodes.push(new CuNode(i, node.originalId,  node.fileId, node.lines, node.depGoodDotString, node.depBadDotString, node.depGoodPipelineDotString, depBadPipelineDotString, node.readDataSize, node.writeDataSize, node.readPhaseLineNumbers, node.writePhaseLineNumbers, node.heatFactor,node.pipelineScalarValue, node.doAllScalarValue,node.GeometricDecomposition));
          break;
        case 1:
          classNode = new FunctionNode(i,node.originalId,  node.fileId, node.depGoodDotString,  node.depBadDotString, node.depGoodPipelineDotString, depBadPipelineDotString, node.startLine, node.endLine, node.readDataSize, node.writeDataSize, node.readPhaseLineNumbers, node.writePhaseLineNumbers, node.heatFactor, node.name, node.descendantNodeCount,node.pipelineScalarValue, node.doAllScalarValue,node.GeometricDecomposition);
          for (j = 0; j < node.functionArguments.length; j++) {
            classNode.addArgument(new NodeVariable(node.functionArguments[j].name, node.functionArguments[j].type));
          }
          nodes.push(classNode);
          break;
        case 2:
          nodes.push(new LoopNode(i,node.originalId, node.fileId, node.depGoodDotString,  node.depBadDotString, node.depGoodPipelineDotString, depBadPipelineDotString, node.startLine, node.endLine, node.readDataSize, node.writeDataSize, node.readPhaseLineNumbers, node.writePhaseLineNumbers, node.heatFactor, node.loopLevel, node.descendantNodeCount,node.pipelineScalarValue, node.doAllScalarValue,node.GeometricDecomposition));
          break;
        case 3:
          nodes.push(new LibraryFunctionNode(i, node.originalId, node.fileId, node.name, node.depGoodDotString,  node.depBadDotString, node.depGoodPipelineDotString, depBadPipelineDotString,node.pipelineScalarValue, node.doAllScalarValue,node.GeometricDecomposition));
          break;
        default: 
          console.error("Tried adding a node with a wrong type", node);
      }
    }

    for (i = 0; i < data.nodeData.length; i++) {
      node = data.nodeData[i];
      classNode = nodes[i];
      for (j = 0; j < node.childrenNodes.length; j++) {
          classNode.addChild(nodes[node.childrenNodes[j]]);
      }

      if (node.type == 0) {
        for (j = 0; j < node.successorCUs.length; j++) {
		  classNode.addSuccessor(nodes[node.successorCUs[j]]);
        }
        for (j = 0; j < node.localVariables.length; j++) {
          classNode.addLocalVariable(new NodeVariable(node.localVariables[j].name, node.localVariables[j].type));
        }
        for (j = 0; j < node.globalVariables.length; j++) {
          classNode.addGlobalVariable(new NodeVariable(node.globalVariables[j].name, node.globalVariables[j].type));
        }
        for (j = 0; j < node.functionCalls.length; j++) {
          classNode.addFunctionCall(new FunctionCall(node.functionCalls[j].line, nodes[node.functionCalls[j].function]));
        }
        for (j = 0; j < node.RAWDepsOn.length; j++) {
          dependency = node.RAWDepsOn[j];
          classNode.addDependency(new Dependency(nodes[dependency.cu], dependency.sinkLine, dependency.sourceLine, dependency.varName, 0));
        }
        for (j = 0; j < node.WARDepsOn.length; j++) {
          dependency = node.WARDepsOn[j];
          classNode.addDependency(new Dependency(nodes[dependency.cu], dependency.sinkLine, dependency.sourceLine, dependency.varName, 0));
        }
        for (j = 0; j < node.WAWDepsOn.length; j++) {
          dependency = node.WAWDepsOn[j];
          classNode.addDependency(new Dependency(nodes[dependency.cu], dependency.sinkLine, dependency.sourceLine, dependency.varName, 0));
        }
        try {
          if (getIntervalTrees) {
            intervalTrees[node.fileId].insert([node.startLine, node.endLine], classNode);
          }
        } catch (error) {
          console.error(node, intervalTrees);
          throw error;
        }
      }
    }
    data.nodeData = nodes;
    // --- Root Nodes ---
    for (i = 0; i < data.rootNodes.length; i++) {
      data.rootNodes[i] = nodes[data.rootNodes[i]];
    }
    return intervalTrees;
  }
};
