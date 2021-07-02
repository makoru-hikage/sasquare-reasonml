/**
 * A set functions to determine the opposite of a cell
 * amidst a line.
 *
 */

/* Use to find the middle element of a list with an odd length */
let oddCenterIndex: int => int

/* Use to find the two middle elements of a list with an even length */
let evenCenterIndices: int => list<int>

/**
 * Find the opposite element of a chosen element
 * Should the list be of odd length, 
 * the opposite element of a chosen element is itself.
 */
let oppositeIndex: (int, int) => int

/* Find the opposite cell along a row */
let horizontalOpposite: Cell.p => option<Cell.p>

/* Find the opposite cell along a column */
let verticalOpposite: Cell.p => option<Cell.p>

/* Find the opposite cell along a descending slant */
let descendingOpposite: Cell.p => option<Cell.p>

/* Find the opposite cell along an ascending slant */
let ascendingOpposite: Cell.p => option<Cell.p>