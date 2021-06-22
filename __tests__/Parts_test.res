open Jest

open BasicPart


describe("Two basic parts belong to the same square ", () => {
  open Expect

  test ("parts_of_same_square", () => {
      let part1: BasicPart.part = (5, 17)
      let part2: BasicPart.part = (5, 12)

      expect(sameSquare(part1, part2)) |> toBe(true)
    })
})

describe("Two basic parts don't belong to the same square ", () => {
  open Expect

  test ("parts_of_diff_square", () => {
      let part1: BasicPart.part = (5, 14)
      let part2: BasicPart.part = (6, 9)

      expect(sameSquare(part1, part2)) |> toBe(false)
    })
})

