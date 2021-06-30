open Belt

/**
 * Create a list of integers 1 to N.
 * Int -> [Int]
 */
let oneToN = (n: int): list<int> =>
  List.makeBy(n, i => i+1)
