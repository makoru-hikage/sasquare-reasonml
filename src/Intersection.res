let findByIntegers = (b: int, r: int, c: int) => { 
  let cell: Cell.p = {
    base: b,
    index: b*r - b + c
  }

  Cell.isValid(cell) ? Some(cell) : None 
}

let findByRowColumn = (row, column) => {
  let together = Row.getBase(row) === Column.getBase(column)
  let b = Row.getBase(row)
  let r = Row.getIndex(row)
  let c = Column.getIndex(column)
  let cell = findByIntegers(b,r,c)

  switch together {
  | false => None
  | true => cell
  }
}