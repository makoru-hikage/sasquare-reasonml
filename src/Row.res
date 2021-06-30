open Belt
include BasicPart.Part

let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

let getCells = (p) => {
  let b = getBase(p)
  let r = getIndex(p)
  let oneToBase = Util.oneToN(b)
  List.keepMap(oneToBase, Intersection.findByIntegers(b,r))
}

let hasCell = (p, cell) => {
  getCells(p)-> List.has(cell, (a, b) => a == b)
}

let rowOfCell = cell => {
  base: Cell.getBase(cell),
  index: Cell.rowIndex(cell)
}