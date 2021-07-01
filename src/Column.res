open Belt
include BasicPart.Part

let getLength = p => getBase(p)

let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

let nthCell = (p, n) => {
  let b = getBase(p)
  let c = getIndex(p)
  if (1 <= n && n <= b && isValid(p)) {
    Some({ base: b, index: b*n - b + c } : Cell.p)
  } else {
    None
  }
}

let getCells = (p) => {
  let b = getBase(p)
  let oneToBase = Util.oneToN(b)

  if (isValid(p)){
    List.keepMap(
      oneToBase,
      nthCell(p)
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