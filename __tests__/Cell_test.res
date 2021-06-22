open Jest

open BasicParts


describe("An cell with an invalid index ", () => {
  open Expect

  test ("cell_with_invalid_index", () => {
      let cell: BasicParts.cell = {
        base: 5,
        index: 26
      }

      expect(isValid(cell)) |> toBe(false)
    })
})

describe("An cell with an valid index ", () => {
  open Expect

  test ("cell_with_valid_index", () => {
      let cell: BasicParts.cell = {
        base: 5,
        index: 17
      }

      expect(isValid(cell)) |> toBe(true)
    })
})
