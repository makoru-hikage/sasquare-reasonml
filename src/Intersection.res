let findByIntegers = (b: int, r: int, c: int) => { 
  let cell: Cell.p = {
    base: b,
    index: b*r - b + c
  }

  Cell.isValid(cell) ? Some(cell) : None 
}

