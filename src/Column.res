open Belt
include BasicPart.Part

let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

let getCells = (p) => {
  let b = getBase(p)
  let c = getIndex(p)
  let oneToBase = Util.oneToN(b)

  if (isValid(p)){
    List.map(
      oneToBase,
      n => ({ base: b, index: b*n - b + c }:Cell.p)
    )
  } else {
    list{}
  }
}

let hasCell = (p, cell) => {
  getCells(p)-> List.has(cell, (a, b) => a == b)
}

let columnOfCell = cell => {
  base: Cell.getBase(cell),
  index: Cell.columnIndex(cell)
}