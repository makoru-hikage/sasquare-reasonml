open Jest

describe("Two basic parts belong to the same square ", () => {
  open Expect

  test ("parts_of_same_square", () => {
      let part1: Cell.p = { base: 5, index: 17 }
      let part2: Cell.p = { base: 5, index: 15 }

      toBe(true, expect(Cell.sameSquare(part1, part2)))
    })
})

describe("Two basic parts don't belong to the same square ", () => {
  open Expect

  test ("parts_of_diff_square", () => {
      let part1: Cell.p = { base: 5, index: 15 }
      let part2: Cell.p = { base: 6, index: 9 }

      toBe(false, expect(Cell.sameSquare(part1, part2)))
    })
})

describe("Cell is invalid", () => {
  open Expect

  test ("cell_is_invalid", () => {
      let cell: Cell.p = { base: 5, index: 27 }

      toBe(false, expect(Cell.isValid(cell)))
    })
})

describe("All row-col pairs of 5-square", () => {
  open Expect

  test ("5-square_row-col_pairs", () => {
      let base = 5
      // Simply make a list of numbers 1 to base^2
      let oneToBaseSquared = Util.oneToN(base*base)
      let allCells: list<(int,int)> = Belt.List.map(
        oneToBaseSquared,
        (x) => {
          let cell: Cell.p = {base: base, index: x}
          Cell.rowColumnPair(cell)
        })

       toEqual(list{
        (1,1), (1,2), (1,3), (1,4), (1,5),
        (2,1), (2,2), (2,3), (2,4), (2,5),
        (3,1), (3,2), (3,3), (3,4), (3,5),
        (4,1), (4,2), (4,3), (4,4), (4,5),
        (5,1), (5,2), (5,3), (5,4), (5,5)
      }, expect(allCells))
    })
})

describe("All cells of all rows of 5-square", () => {
  open Expect
  open Belt

  test ("cells_of_rows", () => {
    let base = 5
    let oneToBase = Util.oneToN(base)

    let row1 = list{1,2,3,4,5}
    let row2 = list{6,7,8,9,10}
    let row3 = list{11,12,13,14,15}
    let row4 = list{16,17,18,19,20}
    let row5 = list{21,22,23,24,25}

    let supposedRows = list{row1, row2, row3, row4, row5}

    let allRows = List.map(
      oneToBase,
      (x): Row.p => { base: base, index: x }
    )->List.map(Row.getCells)
    ->List.flatten
    ->List.map(Cell.getIndex)

    toEqual(List.flatten(supposedRows), expect(allRows))
  })
})

describe("All cells of all columns of 5-square", () => {
  open Expect
  open Belt

  test ("cells_of_columns", () => {
    let base = 5
    let oneToBase = Util.oneToN(base)

    let col1 = list{1,6,11,16,21}
    let col2 = list{2,7,12,17,22}
    let col3 = list{3,8,13,18,23}
    let col4 = list{4,9,14,19,24}
    let col5 = list{5,10,15,20,25}

    let supposedColumns = list{col1, col2, col3, col4, col5}

    let allColumns = List.map(
      oneToBase,
      (x): Column.p => { base: base, index: x }
    )->List.map(Column.getCells)
    ->List.flatten
    ->List.map(Cell.getIndex)

    toEqual(List.flatten(supposedColumns), expect(allColumns))
  })
})

describe("All base-row-col tuple to cell indices of 5-square", () => {
  open Expect
  open Belt

  test("b-r-c_to_b-n", () => {
    let base = 5
    let oneToBase = List.makeBy(base, i => i+1)

    // Just create Cells using the Intersection function
    let a = List.map(
      oneToBase, 
      x => Intersection.findByIntegers(base,_,x)
    )
    // `y => List.map(a, x => x(y))` is to map `apply` func
    let b = List.map(oneToBase, y => List.keepMap(a, x => x(y)))
      ->List.flatten
      // get that Base-Index pair
      ->List.map(x => (Cell.getBase(x), Cell.getIndex(x)))

    toEqual(list{
      (5,1), (5,2), (5,3), (5,4), (5,5),
      (5,6), (5,7), (5,8), (5,9), (5,10),
      (5,11), (5,12), (5,13), (5,14), (5,15),
      (5,16), (5,17), (5,18), (5,19), (5,20),
      (5,21), (5,22), (5,23), (5,24), (5,25)
    }, expect(b))

  })
})

describe("Cell 17 is in Row 4 of 5-Square", () => {
  open Expect

  test("cell-17_in_row-4", () => {
    let base = 5
    let cell: Cell.p = { base: base, index: 17 }
    let row: Row.p = { base: base, index: 4 }

    toBe(true, expect(Row.hasCell(row, cell)))
  })
})

describe("Cell 17 isn't in Column 5 of 5-Square", () => {
  open Expect

  test("cell-17_not_in_col-5", () => {
    let base = 5
    let cell: Cell.p = { base: base, index: 17 }
    let column: Column.p = { base: base, index: 5 }

    toBe(false, expect(Column.hasCell(column, cell)))
  })
})

describe("Another way to tell if a Cell belongs to a row", () => {
  open Expect

  test("cell_belongingness_by_its_row_index", () => {
    let base = 5
    let cell12: Cell.p = { base: base, index: 12 }
    let rowOfCell12: Row.p = Row.rowOfCell(cell12)
    let supposedRow: Row.p = { base: base, index: 3 }

    toEqual(supposedRow, expect(rowOfCell12))
  })
})

describe("Another way to tell if a Cell belongs to a column", () => {
  open Expect

  test("cell_belongingness_by_its_column_index", () => {
    let base = 5
    let cell12: Cell.p = { base: base, index: 12 }
    let columnOfCell12: Column.p = Column.columnOfCell(cell12)
    let supposedColumn: Column.p = { base: base, index: 2 }

    toEqual(supposedColumn, expect(columnOfCell12))
  })
})

describe("Intersect a Row and a Column to get a Cell", () => {
  open Expect

  test("row-col_intersect", () => {
    let row: Row.p = { base: 5, index: 3 }
    let column: Column.p = { base: 5, index: 3 }
    let cell = Intersection.findByRowColumn(row, column)
    let supposedCell: Cell.p = { base: 5, index: 13 }

    toEqual(Some(supposedCell), expect(cell))
  })
})