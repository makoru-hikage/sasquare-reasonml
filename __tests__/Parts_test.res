open Jest

open BasicPart


describe("Two basic parts belong to the same square ", () => {
  open Expect

  test ("parts_of_same_square", () => {
      let part1: Cell.cell = (5, 17)
      let part2: Cell.cell = (5, 12)

      expect(sameSquare(part1, part2)) |> toBe(true)
    })
})

describe("Two basic parts don't belong to the same square ", () => {
  open Expect

  test ("parts_of_diff_square", () => {
      let part1: Cell.cell = (5, 14)
      let part2: Cell.cell = (6, 9)

      expect(sameSquare(part1, part2)) |> toBe(false)
    })
})

describe("Cell is valid", () => {
  open Expect

  test ("parts_of_diff_square", () => {
      let cell: Cell.cell = (5, 27)

      expect(Cell.isValid(cell)) |> toBe(false)
    })
})


