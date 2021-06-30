/**
 * This module represents a part of a Square
 * that is also a set of cell indices
 */
module type CellSet = {

  include BasicPart.Index

  /* Get all the cells belonging to this set */
  let getCells: p => list<Cell.p>

  /* Check if a particular cell belongs in this set */
  let hasCell: (p, Cell.p) => bool

}