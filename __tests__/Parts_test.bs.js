// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Cell = require("../src/Cell.bs.js");
var Jest = require("@glennsl/bs-jest/src/jest.bs.js");
var Belt_List = require("rescript/lib/js/belt_List.js");

Jest.describe("Two basic parts belong to the same square ", (function (param) {
        return Jest.test("parts_of_same_square", (function (param) {
                      return Jest.Expect.toBe(true, Jest.Expect.expect(Cell.sameSquare({
                                          base: 5,
                                          index: 17
                                        }, {
                                          base: 5,
                                          index: 15
                                        })));
                    }));
      }));

Jest.describe("Two basic parts don't belong to the same square ", (function (param) {
        return Jest.test("parts_of_diff_square", (function (param) {
                      return Jest.Expect.toBe(false, Jest.Expect.expect(Cell.sameSquare({
                                          base: 5,
                                          index: 15
                                        }, {
                                          base: 6,
                                          index: 9
                                        })));
                    }));
      }));

Jest.describe("Cell is valid", (function (param) {
        return Jest.test("cell_is_valid", (function (param) {
                      return Jest.Expect.toBe(false, Jest.Expect.expect(Cell.isValid({
                                          base: 5,
                                          index: 27
                                        })));
                    }));
      }));

Jest.describe("All row-col pairs of 5-square", (function (param) {
        return Jest.test("5-square_row-col_pairs", (function (param) {
                      var oneToBaseSquared = Belt_List.makeBy(25, (function (i) {
                              return i + 1 | 0;
                            }));
                      var allCells = Belt_List.map(oneToBaseSquared, (function (x) {
                              return Cell.rowColumnPair({
                                          base: 5,
                                          index: x
                                        });
                            }));
                      return Jest.Expect.toEqual({
                                  hd: [
                                    1,
                                    1
                                  ],
                                  tl: {
                                    hd: [
                                      1,
                                      2
                                    ],
                                    tl: {
                                      hd: [
                                        1,
                                        3
                                      ],
                                      tl: {
                                        hd: [
                                          1,
                                          4
                                        ],
                                        tl: {
                                          hd: [
                                            1,
                                            5
                                          ],
                                          tl: {
                                            hd: [
                                              2,
                                              1
                                            ],
                                            tl: {
                                              hd: [
                                                2,
                                                2
                                              ],
                                              tl: {
                                                hd: [
                                                  2,
                                                  3
                                                ],
                                                tl: {
                                                  hd: [
                                                    2,
                                                    4
                                                  ],
                                                  tl: {
                                                    hd: [
                                                      2,
                                                      5
                                                    ],
                                                    tl: {
                                                      hd: [
                                                        3,
                                                        1
                                                      ],
                                                      tl: {
                                                        hd: [
                                                          3,
                                                          2
                                                        ],
                                                        tl: {
                                                          hd: [
                                                            3,
                                                            3
                                                          ],
                                                          tl: {
                                                            hd: [
                                                              3,
                                                              4
                                                            ],
                                                            tl: {
                                                              hd: [
                                                                3,
                                                                5
                                                              ],
                                                              tl: {
                                                                hd: [
                                                                  4,
                                                                  1
                                                                ],
                                                                tl: {
                                                                  hd: [
                                                                    4,
                                                                    2
                                                                  ],
                                                                  tl: {
                                                                    hd: [
                                                                      4,
                                                                      3
                                                                    ],
                                                                    tl: {
                                                                      hd: [
                                                                        4,
                                                                        4
                                                                      ],
                                                                      tl: {
                                                                        hd: [
                                                                          4,
                                                                          5
                                                                        ],
                                                                        tl: {
                                                                          hd: [
                                                                            5,
                                                                            1
                                                                          ],
                                                                          tl: {
                                                                            hd: [
                                                                              5,
                                                                              2
                                                                            ],
                                                                            tl: {
                                                                              hd: [
                                                                                5,
                                                                                3
                                                                              ],
                                                                              tl: {
                                                                                hd: [
                                                                                  5,
                                                                                  4
                                                                                ],
                                                                                tl: {
                                                                                  hd: [
                                                                                    5,
                                                                                    5
                                                                                  ],
                                                                                  tl: /* [] */0
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }, Jest.Expect.expect(allCells));
                    }));
      }));

/*  Not a pure module */
