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

/**
 * Find a cell by intersecting a row and a column
 */
let findByRowColumn: (Row.p, Column.p) => option<Cell.p>

/* Subtract a cell's row index from its column index */
let intersectionDiff: Cell.p => int

/* Add both a cell's row and column index */
let intersectionSum: Cell.p => int
