// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Js_math = require("rescript/lib/js/js_math.js");
var BasicPart = require("./BasicPart.bs.js");

var getBase = BasicPart.Part.getBase;

var getIndex = BasicPart.Part.getIndex;

function isValid(cell) {
  var base = Curry._1(getBase, cell);
  var index = Curry._1(getIndex, cell);
  return index <= Math.imul(base, base);
}

function rowIndex(cell) {
  var base = Curry._1(getBase, cell);
  var index = Curry._1(getIndex, cell);
  return Js_math.ceil_int(index / base);
}

function columnIndex(cell) {
  var base = Curry._1(getBase, cell);
  var index = Curry._1(getIndex, cell);
  return (index + base | 0) - Math.imul(base, rowIndex(cell)) | 0;
}

function rowColumnPair(cell) {
  return [
          rowIndex(cell),
          columnIndex(cell)
        ];
}

function intersectionDiff(cell) {
  return columnIndex(cell) - rowIndex(cell) | 0;
}

function intersectionSum(cell) {
  return columnIndex(cell) + rowIndex(cell) | 0;
}

function descendingIndex(cell) {
  return Curry._1(getBase, cell) + intersectionDiff(cell) | 0;
}

function ascendingIndex(cell) {
  return intersectionSum(cell) - 1 | 0;
}

var sameSquare = BasicPart.Part.sameSquare;

exports.getBase = getBase;
exports.getIndex = getIndex;
exports.sameSquare = sameSquare;
exports.isValid = isValid;
exports.rowIndex = rowIndex;
exports.columnIndex = columnIndex;
exports.rowColumnPair = rowColumnPair;
exports.intersectionDiff = intersectionDiff;
exports.intersectionSum = intersectionSum;
exports.descendingIndex = descendingIndex;
exports.ascendingIndex = ascendingIndex;
/* No side effect */
