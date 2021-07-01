/**
 * The basic building block of a Square
 * An index to represent an element of a Square
 */

include BasicPart.Index

/* Get the cell's matrix row index */
let rowIndex: p => int

/* Get the cell's matrix column index */
let columnIndex: p => int

/** 
 * Returns a row-column pair like the one found
 * in a matrix element index. 
 *
 * Basically represents the row and column a 
 * cell belongs.
 */
let rowColumnPair: p => (int, int)

/* Subtract a cell's row index from its column index */
let intersectionDiff: p => int

/* Add both a cell's row and column index */
let intersectionSum: p => int
