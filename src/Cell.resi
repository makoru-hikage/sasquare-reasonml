include (module type of BasicPart)

let isValid: part => bool

let rowIndex: part => int

let columnIndex: part => int

let rowColumnPair: part => (int, int)
