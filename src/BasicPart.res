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
