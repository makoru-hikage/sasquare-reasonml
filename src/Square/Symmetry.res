open Js.Math
open Js.Int

let oddCenterIndex = (length) => {
  let l = toFloat(length)
  ceil_int(l /. 2.)
}

let evenCenterIndices = (length) => {
  let l = toFloat(length)
  let mainCenterIndex = ceil_int(l /. 2.)
  let secondCenterIndex = mainCenterIndex + 1

  list{mainCenterIndex, secondCenterIndex}
}

let oppositeIndex = (length, n) => length + 1 - n

let horizontalOpposite = cell => {
  let b = Cell.getBase(cell)
  let r = Cell.rowIndex(cell)
  let c = Cell.columnIndex(cell)
  let row : Row.p = { base: b, index: r }

  Row.nthCell(row, oppositeIndex(b, c))
}

let verticalOpposite = cell => {
  let b = Cell.getBase(cell)
  let r = Cell.rowIndex(cell)
  let c = Cell.columnIndex(cell)
  let column : Column.p = { base: b, index: c }

  Column.nthCell(column, oppositeIndex(b, r))
}

let descendingOpposite = cell => {
  let b = Cell.getBase(cell)
  let r = Cell.rowIndex(cell)
  let c = Cell.columnIndex(cell)

  let r' = oppositeIndex(b, r)
  let c' = oppositeIndex(b, c)

  // This is the intersection sum of the opposite cell
  let s = r' + c'
  // Row index of the opposite cell
  let r_o = s - r'
  // Column index of the opposite cell
  let c_o = s - c'

  Intersection.findByIntegers(b, r_o, c_o)
}

let ascendingOpposite = cell => {
  let b = Cell.getBase(cell)

  // Please take note I just swapped the
  // row and column indices
  let r = Cell.columnIndex(cell)
  let c = Cell.rowIndex(cell)

  Intersection.findByIntegers(b, r, c)
}