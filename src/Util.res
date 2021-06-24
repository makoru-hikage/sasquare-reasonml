open Belt

let oneToN = (n: int): list<int> =>
  List.makeBy(n, i => i+1)
