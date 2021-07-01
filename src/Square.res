/**
 * Functions related to a Square in general.
 * It is usually identified by the length of its base
 * It is measured by unit square.
 *
 */

type base = int

/* It must be a non-zero natural number */
let baseIsValid = (b: int) : bool => 1 <= b

/* Number of all cells in a square */
let totalCountOfCells = b => b*b

/* Number of all rows in a square */
let totalRows = b => b

/* Number of all columns in a square */
let totalColumns = b => b

/* Number of all slants in a square */
let totalSlants = b => b*2 - 1