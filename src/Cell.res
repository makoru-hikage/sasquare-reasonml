include BasicPart.Part

let isValid = (cell) => {
  let base = getBase(cell)
  let index = getIndex(cell)
  index <= base*base
}

let rowIndex = (cell) => {
  let base = Js.Int.toFloat(getBase(cell))
  let index = Js.Int.toFloat(getIndex(cell))
  Js.Math.ceil_int(index/.base)
}

let columnIndex = (cell) => {
  let base = getBase(cell)
  let index = getIndex(cell)
  index + base - base*rowIndex(cell)
}

let rowColumnPair = (cell) => (rowIndex(cell), columnIndex(cell))