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
