open Belt

let intersection = (b, r, c): Cell.part => { 
    base: b,
    index: b*r - b + c 
}

let rowCells = (b, r) => {
    let oneToBase = List.makeBy(b, n => n + 1)
    List.map(oneToBase, intersection(b,r))
}

let columnCells = (b, c) => {
    let oneToBase = List.makeBy(b, n => n + 1)
    List.map(oneToBase, intersection(b,_,c))
}