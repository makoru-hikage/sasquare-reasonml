module type Index = {
    type p = {
        base: int,
        index: int
    }

    let getBase: p => int
    let getIndex: p => int
    let sameSquare: (p, p) => bool
}

module Part: Index = {
    type p = {
        base: int,
        index: int
    }

    let getBase = p => p.base

    let getIndex = p => p.index

    let sameSquare = (p1, p2) => p1.base === p2.base
}

module Cell: {
        include Index
        let intersection: (int, int, int) => p
        let isValid: p => bool
        let rowColumnPair: p => (int, int)
    } = {
    include Part

    let intersection = (b, r, c): p => { 
        base: b,
        index: b*r - b + c 
    }

    let isValid = (cell) => {
        let base = getBase(cell)
        let index = getIndex(cell)
        index <= base*base
    }

    let rowIndex = (cell) => {
        let base = Js.Int.toFloat(getBase(cell))
        let index = Js.Int.toFloat(getIndex(cell))
        Js.Math.ceil_int(index/.base)
    }

    let columnIndex = (cell) => {
        let base = getBase(cell)
        let index = getIndex(cell)
        index + base - base*rowIndex(cell)
    }

    let rowColumnPair = (cell) => (rowIndex(cell), columnIndex(cell))
}

module type CellSet = {
    include Index

    let getCells: p => list<Cell.p>
}

module Row: CellSet = {
    open Belt
    include Part

    let getCells = (p) => {
        let b = getBase(p)
        let r = getIndex(p)
        let oneToBase = List.makeBy(b, n => n + 1)
        List.map(oneToBase, Cell.intersection(b,r))
    }
}

module Column: CellSet = {
    open Belt
    include Part

    let getCells = (p) => {
        let b = getBase(p)
        let c = getIndex(p)
        let oneToBase = List.makeBy(b, n => n + 1)
        List.map(oneToBase, Cell.intersection(b,_,c))
    }
}
