open Belt
include BasicPart.Part

let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

let getCells = (p) => {
  let b = getBase(p)
  let c = getIndex(p)
  let oneToBase = Util.oneToN(b)
  List.keepMap(oneToBase, Intersection.findByIntegers(b,_,c))
}

let hasCell = (p, cell) => {
  getCells(p)-> List.has(cell, (a, b) => a == b)
}

let columnOfCell = cell => {
  base: Cell.getBase(cell),
  index: Cell.columnIndex(cell)
}