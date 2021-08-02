// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cell from "./Cell.bs.js";
import * as Util from "./Util.bs.js";
import * as Curry from "rescript/lib/es6/curry.js";
import * as Caml_obj from "rescript/lib/es6/caml_obj.js";
import * as BasicPart from "./BasicPart.bs.js";
import * as Belt_List from "rescript/lib/es6/belt_List.js";

var getBase = BasicPart.Part.getBase;

var getIndex = BasicPart.Part.getIndex;

var getLength = Curry.__1(getBase);

function isValid(p) {
  if (1 <= Curry._1(getIndex, p)) {
    return Curry._1(getIndex, p) <= Curry._1(getBase, p);
  } else {
    return false;
  }
}

function nthCell(p, n) {
  var b = Curry._1(getBase, p);
  var r = Curry._1(getIndex, p);
  if (1 <= n && n <= b && isValid(p)) {
    return {
            base: b,
            index: (Math.imul(b, r) - b | 0) + n | 0
          };
  }
  
}

function getCells(p) {
  var b = Curry._1(getBase, p);
  var oneToBase = Util.oneToN(b);
  if (isValid(p)) {
    return Belt_List.keepMap(oneToBase, (function (param) {
                  return nthCell(p, param);
                }));
  } else {
    return /* [] */0;
  }
}

function hasCell(p, cell) {
  return Belt_List.has(getCells(p), cell, Caml_obj.caml_equal);
}

function rowOfCell(cell) {
  return {
          base: Curry._1(Cell.getBase, cell),
          index: Cell.rowIndex(cell)
        };
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
  rowOfCell ,
  
}
/* No side effect */
