/**
 * A set of functions related to a cell being an intersection
 * of a row and a column
 */

/**
 * A function to determine a cell index
 * by a triplet of base, row index, and 
 * column index.
 *
 */
let findByIntegers: (int, int, int) => option<Cell.p>

let findByRowColumn: (Row.p, Column.p) => option<Cell.p>