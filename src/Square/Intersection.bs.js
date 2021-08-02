// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Row from "./Row.bs.js";
import * as Cell from "./Cell.bs.js";
import * as Curry from "rescript/lib/es6/curry.js";
import * as Column from "./Column.bs.js";

function findByIntegers(b, r, c) {
  var cell_index = (Math.imul(b, r) - b | 0) + c | 0;
  var cell = {
    base: b,
    index: cell_index
  };
  if (Cell.isValid(cell)) {
    return cell;
  }
  
}

function findByRowColumn(row, column) {
  var theyAreTogether = Curry._1(Row.getBase, row) === Curry._1(Column.getBase, column);
  var b = Curry._1(Row.getBase, row);
  var r = Curry._1(Row.getIndex, row);
  var c = Curry._1(Column.getIndex, column);
  if (theyAreTogether) {
    return findByIntegers(b, r, c);
  }
  
}

export {
  findByIntegers ,
  findByRowColumn ,
  
}
/* No side effect */