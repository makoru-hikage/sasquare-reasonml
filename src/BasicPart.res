/**
 * A pair of integers represented as a record.
 *
 * The base represents the base of the square
 * where a part belongs to. The index represents
 * the part's index itself.
 *
 */
module type Index = {
  /* p - depicts the part of a square */
  type p = {
    base: int,
    index: int
  }

  /* An accessor to get the base */
  let getBase: p => int
  /* An accessor to get the part's index*/
  let getIndex: p => int
  /* Checks two parts whether they belong to the same square */
  let sameSquare: (p, p) => bool
  /* Checks whether a part is valid */
  let isValid: p => bool
}

/**
 * A mixin to implement Index to represent the basic
 * functions of a basic part of a Square
 */
module Part = {
  type p = {
    base: int,
    index: int
  }

  let getBase = p => p.base

  let getIndex = p => p.index

  let sameSquare = (p1, p2) => p1.base === p2.base
}

/**
 * The basic building block of a Square
 * An index to represent an element of a Square
 */
module Cell: {

  include Index

  /**
    * A function to determine a cell index
    * by a triplet of base, row index, and 
    * column index.
    *
    */
  let intersection: (int, int, int) => option<p>

  /** 
    * Returns a row column pair like the one found
    * in a matrix element index
    */
  let rowColumnPair: p => (int, int)

} = {
  include Part

  let isValid = (cell) => {
    let base = getBase(cell)
    let index = getIndex(cell)
    index <= base*base
  }

  let intersection = (b, r, c) => { 
    let cell: p = {
      base: b,
      index: b*r - b + c
    }

    isValid(cell) ? Some(cell) : None 
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
}

module type CellSet = {
    include Index

    let getCells: p => list<Cell.p>
}

module Row: CellSet = {
    open Belt
    include Part

    let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

    let getCells = (p) => {
        let b = getBase(p)
        let r = getIndex(p)
        let oneToBase = Util.oneToN(b)
        List.keepMap(oneToBase, Cell.intersection(b,r))
    }
}

module Column: CellSet = {
    open Belt
    include Part

    let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

    let getCells = (p) => {
        let b = getBase(p)
        let c = getIndex(p)
        let oneToBase = Util.oneToN(b)
        List.keepMap(oneToBase, Cell.intersection(b,_,c))
    }
}
