type cell = {
    base: int,
    index: int
}

let isValid = cell => cell.index <= cell.base*cell.base
