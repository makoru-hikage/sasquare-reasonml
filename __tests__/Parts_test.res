open Jest


describe("Two basic parts belong to the same square ", () => {
  open Expect

  test ("parts_of_same_square", () => {
      let part1: Cell.part = { base: 5, index: 17 }
      let part2: Cell.part = { base: 5, index: 15 }

      expect(Cell.sameSquare(part1, part2)) |> toBe(true)
    })
})

describe("Two basic parts don't belong to the same square ", () => {
  open Expect

  test ("parts_of_diff_square", () => {
      let part1: Cell.part = { base: 5, index: 15 }
      let part2: Cell.part = { base: 6, index: 9 }

      expect(Cell.sameSquare(part1, part2)) |> toBe(false)
    })
})

describe("Cell is valid", () => {
  open Expect

  test ("cell_is_valid", () => {
      let cell: Cell.part = { base: 5, index: 27 }

      expect(Cell.isValid(cell)) |> toBe(false)
    })
})

describe("All row-col pairs of 5-square", () => {
  open Expect

  test ("5-square_row-col_pairs", () => {
      let base = 5
      let oneToBaseSquared = Belt.List.makeBy(base*base, i => i+1)
      let allCells: list<(int,int)> = Belt.List.map(
        // Simply make a list of numbers 1 to base^2
        oneToBaseSquared,
        (x) => {
          let cell: Cell.part = {base: base, index: x}
          Cell.rowColumnPair(cell)
        })

      expect(allCells) |> toEqual(list{
        (1,1), (1,2), (1,3), (1,4), (1,5),
        (2,1), (2,2), (2,3), (2,4), (2,5),
        (3,1), (3,2), (3,3), (3,4), (3,5),
        (4,1), (4,2), (4,3), (4,4), (4,5),
        (5,1), (5,2), (5,3), (5,4), (5,5)
      })
    })
})
