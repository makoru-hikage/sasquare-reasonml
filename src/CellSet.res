/**
 * This module represents a part of a Square
 * that is also a set of cell indices
 */
module type CellSet = {

  include BasicPart.Index

  /* Get the supposed length/cardinality of the set */
  let getLength: p => int

  /* Get all the cells belonging to this set */
  let getCells: p => list<Cell.p>

  /* Check if a particular cell belongs in this set */
  let hasCell: (p, Cell.p) => bool

  /* Get the nth cell of a set */
  let nthCell: (p, int) => option<Cell.p>

}