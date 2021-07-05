open Belt
include BasicPart.Part

let antidiagonalFunc = (b: int, n: int) => b*b - b*n + n

let functionW = (base: int, index: int) => {
    let b = Belt.Int.toFloat(base)
    let x = Belt.Int.toFloat(index)
    let w = 
        abs_float(b -. x) *. (b -. 1.) 
        +. (b ** floor(x /. b)) *. (b -. x)
    Belt.Float.toInt(w)
}

let isValid = p => {
    let b = getBase(p)
    let x = getIndex(p)
    1 <= x && x <= (b*2 - 1)
}

let getLength = slant => {
    let b = getBase(slant)
    let x = getIndex(slant)
    b - abs(b - x)
}

let nthCell = (p, n) => {
    let b = getBase(p)
    let x = getIndex(p)
    let cellIndex = antidiagonalFunc(b, n) - functionW (b, x)

    if (isValid(p)) {
        Some({ base: b, index: cellIndex }: Cell.p)
    } else {
        None
    }
}

let getCells = p => {
    let oneToLength = getLength(p) -> Util.oneToN

    List.keepMap(oneToLength, nthCell(p))

}

let hasCell = (p, cell) => {
    let x = getIndex(p)
    x == Cell.ascendingIndex(cell) && getBase(p) == Cell.getBase(cell)
}