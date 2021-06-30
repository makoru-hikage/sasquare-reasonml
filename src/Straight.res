/**
 * A Row is a set of Cells arranged in a straight horizontal line
 */
module Row: CellSet.CellSet = {
  open Belt
  include BasicPart.Part

  let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

  let getCells = (p) => {
    let b = getBase(p)
    let r = getIndex(p)
    let oneToBase = Util.oneToN(b)
    List.keepMap(oneToBase, Intersection.findByIntegers(b,r))
  }

  let hasCell = (p, cell) => {
    getCells(p)-> List.has(cell, (a, b) => a == b)
  }
}

/**
 * A Column is a set of Cells arranged in a straight vertical line
 */
module Column: CellSet.CellSet = {
  open Belt
  include BasicPart.Part

  let isValid = p => 1 <= getIndex(p) && getIndex(p) <= getBase(p)

  let getCells = (p) => {
    let b = getBase(p)
    let c = getIndex(p)
    let oneToBase = Util.oneToN(b)
    List.keepMap(oneToBase, Intersection.findByIntegers(b,_,c))
  }

  let hasCell = (p, cell) => {
    getCells(p)-> List.has(cell, (a, b) => a == b)
  }
}