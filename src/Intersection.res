let findByIntegers = (b: int, r: int, c: int) => { 
  let cell: Cell.p = {
    base: b,
    index: b*r - b + c
  }

  Cell.isValid(cell) ? Some(cell) : None 
}

let findByRowColumn = (row, column) => {
  let theyAreTogether = Row.getBase(row) === Column.getBase(column)
  let b = Row.getBase(row)
  let r = Row.getIndex(row)
  let c = Column.getIndex(column)

  if (theyAreTogether) {
    findByIntegers(b,r,c)
  } else { None }
}