open Belt
include BasicPart.Part

let diagonalFunc = (b: int, n: int) => b*n - b + n

let functionU = (base: int, index: int) => {
    let b = Belt.Int.toFloat(base)
    let x = Belt.Int.toFloat(index)
    let u = b ** (2. +. floor((-.x /. b))) *. abs_float(b -. x)
    Belt.Float.toInt(u)
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
    let cellIndex = diagonalFunc(b, n) + functionU (b, x)

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
    x == Cell.descendingIndex(cell) && getBase(p) == Cell.getBase(cell)
}