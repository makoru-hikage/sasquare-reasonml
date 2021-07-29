// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cell from "./Cell.bs.js";
import * as Util from "./Util.bs.js";
import * as Curry from "../../node_modules/rescript/lib/es6/curry.js";
import * as BasicPart from "./BasicPart.bs.js";
import * as Belt_List from "../../node_modules/rescript/lib/es6/belt_List.js";
import * as Pervasives from "../../node_modules/rescript/lib/es6/pervasives.js";

var getBase = BasicPart.Part.getBase;

var getIndex = BasicPart.Part.getIndex;

function diagonalFunc(b, n) {
  return (Math.imul(b, n) - b | 0) + n | 0;
}

function functionU(base, index) {
  return Math.pow(base, 2 + Math.floor(-index / base)) * Math.abs(base - index) | 0;
}

function isValid(p) {
  var b = Curry._1(getBase, p);
  var x = Curry._1(getIndex, p);
  if (1 <= x) {
    return x <= ((b << 1) - 1 | 0);
  } else {
    return false;
  }
}

function getLength(slant) {
  var b = Curry._1(getBase, slant);
  var x = Curry._1(getIndex, slant);
  return b - Pervasives.abs(b - x | 0) | 0;
}

function nthCell(p, n) {
  var b = Curry._1(getBase, p);
  var x = Curry._1(getIndex, p);
  var cellIndex = diagonalFunc(b, n) + functionU(b, x) | 0;
  if (isValid(p)) {
    return {
            base: b,
            index: cellIndex
          };
  }
  
}

function getCells(p) {
  var oneToLength = Util.oneToN(getLength(p));
  return Belt_List.keepMap(oneToLength, (function (param) {
                return nthCell(p, param);
              }));
}

function hasCell(p, cell) {
  var x = Curry._1(getIndex, p);
  if (x === Cell.descendingIndex(cell)) {
    return Curry._1(getBase, p) === Curry._1(Cell.getBase, cell);
  } else {
    return false;
  }
}

var sameSquare = BasicPart.Part.sameSquare;

export {
  getBase ,
  getIndex ,
  sameSquare ,
  isValid ,
  getLength ,
  getCells ,
  hasCell ,
  nthCell ,
  
}
/* No side effect */
