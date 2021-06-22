type part = (int, int)

let getBase = (part) => {
    let (base, _) = part
    base
}

let getIndex = part => {
    let (_, index) = part
    index
}

let sameSquare = (part1, part2) => {
    getBase(part1) === getBase(part2)
}
