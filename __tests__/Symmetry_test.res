open Jest

describe("Horizontal opposites of all cells of 5-square", () => {
  open Belt
  open Expect

  test("horizontal_opposites", () => {
    let base = 5

    // Just create Cells using the Intersection function
    let allOppositeCells = List.map(
      Util.oneToN(Square.totalCountOfCells(base)), 
      x => ({ base: base, index: x }: Cell.p)
    )
    ->List.keepMap(Symmetry.horizontalOpposite)
    ->List.map(Cell.getIndex)


    toEqual(list{
      5, 4, 3, 2, 1,
      10, 9, 8, 7, 6,
      15, 14, 13, 12, 11,
      20, 19, 18, 17, 16,
      25, 24, 23, 22, 21
    }, expect(allOppositeCells))

  })
})

describe("Vertical opposites of all cells of 5-square", () => {
  open Belt
  open Expect

  test("vertical_opposites", () => {
    let base = 5

    // Just create Cells using the Intersection function
    let allOppositeCells = List.map(
      Util.oneToN(Square.totalCountOfCells(base)), 
      x => ({ base: base, index: x }: Cell.p)
    )
    ->List.keepMap(Symmetry.verticalOpposite)
    ->List.map(Cell.getIndex)


    toEqual(list{
      21, 22, 23, 24, 25,
      16, 17, 18, 19, 20,
      11, 12, 13, 14, 15,
      6, 7, 8, 9, 10,
      1, 2, 3, 4, 5
    }, expect(allOppositeCells))

  })
})

describe("Descending opposites of all cells of 5-square", () => {
  open Belt
  open Expect

  test("descending_opposites", () => {
    let base = 5

    // Just create Cells using the Intersection function
    let allOppositeCells = List.map(
      Util.oneToN(Square.totalCountOfCells(base)), 
      x => ({ base: base, index: x }: Cell.p)
    )
    ->List.keepMap(Symmetry.descendingOpposite)
    ->List.map(Cell.getIndex)


    toEqual(list{
      25, 20, 15, 10, 5,
      24, 19, 14, 9, 4,
      23, 18, 13, 8, 3,
      22, 17, 12, 7, 2,
      21, 16, 11, 6, 1
    }, expect(allOppositeCells))

  })
})

describe("Ascending opposites of all cells of 5-square", () => {
  open Belt
  open Expect

  test("ascending_opposites", () => {
    let base = 5

    // Just create Cells using the Intersection function
    let allOppositeCells = List.map(
      Util.oneToN(Square.totalCountOfCells(base)), 
      x => ({ base: base, index: x }: Cell.p)
    )
    ->List.keepMap(Symmetry.ascendingOpposite)
    ->List.map(Cell.getIndex)


    toEqual(list{
      1, 6, 11, 16, 21,
      2, 7, 12, 17, 22,
      3, 8, 13, 18, 23,
      4, 9, 14, 19, 24,
      5, 10, 15, 20, 25
    }, expect(allOppositeCells))

  })
})
