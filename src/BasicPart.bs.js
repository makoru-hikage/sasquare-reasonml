// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Js_math = require("rescript/lib/js/js_math.js");
var Belt_List = require("rescript/lib/js/belt_List.js");

function getBase(p) {
  return p.base;
}

function getIndex(p) {
  return p.index;
}

function sameSquare(p1, p2) {
  return p1.base === p2.base;
}

var Part = {
  getBase: getBase,
  getIndex: getIndex,
  sameSquare: sameSquare
};

function isValid(cell) {
  var base = cell.base;
  var index = cell.index;
  return index <= Math.imul(base, base);
}

function intersection(b, r, c) {
  var cell_index = (Math.imul(b, r) - b | 0) + c | 0;
  var cell = {
    base: b,
    index: cell_index
  };
  if (isValid(cell)) {
    return cell;
  }
  
}

function rowIndex(cell) {
  var base = cell.base;
  var index = cell.index;
  return Js_math.ceil_int(index / base);
}

function columnIndex(cell) {
  var base = cell.base;
  var index = cell.index;
  return (index + base | 0) - Math.imul(base, rowIndex(cell)) | 0;
}

function rowColumnPair(cell) {
  return [
          rowIndex(cell),
          columnIndex(cell)
        ];
}

var Cell = {
  getBase: getBase,
  getIndex: getIndex,
  sameSquare: sameSquare,
  intersection: intersection,
  isValid: isValid,
  rowColumnPair: rowColumnPair
};

function getCells(p) {
  var b = p.base;
  var r = p.index;
  var oneToBase = Belt_List.makeBy(b, (function (n) {
          return n + 1 | 0;
        }));
  return Belt_List.keepMap(oneToBase, (function (param) {
                return intersection(b, r, param);
              }));
}

var Row = {
  getBase: getBase,
  getIndex: getIndex,
  sameSquare: sameSquare,
  getCells: getCells
};

function getCells$1(p) {
  var b = p.base;
  var c = p.index;
  var oneToBase = Belt_List.makeBy(b, (function (n) {
          return n + 1 | 0;
        }));
  return Belt_List.keepMap(oneToBase, (function (__x) {
                return intersection(b, __x, c);
              }));
}

var Column = {
  getBase: getBase,
  getIndex: getIndex,
  sameSquare: sameSquare,
  getCells: getCells$1
};

exports.Part = Part;
exports.Cell = Cell;
exports.Row = Row;
exports.Column = Column;
/* No side effect */
