open Jest

describe("Get the descending indices of all cells in 5-square", () => {
  open Belt
  open Expect

  test("desc_indices_of_5-squares", () => {
    let base = 5
    // Simply make a list of numbers 1 to base^2
    let oneToBaseSquared = Util.oneToN(base*base)
    let createCell = (x: int): Cell.p => ({base: base, index: x})
    let allCells: list<Cell.p> = List.map(oneToBaseSquared, createCell)

    let allDescendingIndices = List.map(allCells, Cell.descendingIndex)

    toEqual(list{
      5, 6, 7, 8, 9,
      4, 5, 6, 7, 8,
      3, 4, 5, 6, 7,
      2, 3, 4, 5, 6,
      1, 2, 3, 4, 5
    }, expect(allDescendingIndices))
  })
})

describe("Get the ascending indices of all cells in 5-square", () => {
  open Belt
  open Expect

  test("asc_indices_of_5-squares", () => {
    let base = 5
    // Simply make a list of numbers 1 to base^2
    let oneToBaseSquared = Util.oneToN(base*base)
    let createCell = (x: int): Cell.p => ({base: base, index: x})
    let allCells: list<Cell.p> = List.map(oneToBaseSquared, createCell)

    let allAscendingIndices = List.map(allCells, Cell.ascendingIndex)

    toEqual(list{
      1, 2, 3, 4, 5,
      2, 3, 4, 5, 6,
      3, 4, 5, 6, 7,
      4, 5, 6, 7, 8,
      5, 6, 7, 8, 9
    }, expect(allAscendingIndices))
  })
})