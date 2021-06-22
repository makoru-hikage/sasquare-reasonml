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
    let (baseOfPart1, _) = part1
    let (baseOfPart2, _) = part2
    baseOfPart1 === baseOfPart2
}
