type part = {
    base: int,
    index: int
}

let getBase = part => part.base

let getIndex = part => part.index

let sameSquare = (part1, part2) => part1.base === part2.base
