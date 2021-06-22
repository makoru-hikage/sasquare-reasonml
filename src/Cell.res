
type cell = (int, int)

let isValid = (cell) => {
    let base = BasicPart.getBase(cell)
    let index = BasicPart.getIndex(cell)
    index <= base*base
}
