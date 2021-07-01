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

describe("All cells of all descending slants of 5-square", () => {
  open Belt
  open Expect

  test ("cells_of_descending_slants", () => {
    let base = 5
    let numOfAllSlants = Square.totalSlants(base)

    let slant1 = list{21}
    let slant2 = list{16,22}
    let slant3 = list{11,17,23}
    let slant4 = list{6,12,18,24}
    let slant5 = list{1,7,13,19,25}
    let slant6 = list{2,8,14,20}
    let slant7 = list{3,9,15}
    let slant8 = list{4,10}
    let slant9 = list{5}

    let supposedSlants = list{
      slant1,
      slant2,
      slant3,
      slant4,
      slant5,
      slant6,
      slant7,
      slant8,
      slant9
    }

    let allSlants = List.map(
      Util.oneToN(numOfAllSlants),
      (x): DescendingSlant.p => { base: base, index: x }
    )->List.map(DescendingSlant.getCells)
    ->List.flatten
    ->List.map(Cell.getIndex)

    toEqual(List.flatten(supposedSlants), expect(allSlants))
  })
})