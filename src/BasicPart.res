type base = int
type index = int

type index_pair = (base, index)

let getBase = (index_pair) => {
    let (base, _) = index_pair
    base
}

let getIndex = index_pair => {
    let (_, index) = index_pair
    index
}

let sameSquare = (part1, part2) => {
    getBase(part1) === getBase(part2)
}
