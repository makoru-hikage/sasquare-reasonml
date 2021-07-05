// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Row = require("../src/Square/Row.bs.js");
var Cell = require("../src/Square/Cell.bs.js");
var Jest = require("@glennsl/bs-jest/src/jest.bs.js");
var Util = require("../src/Square/Util.bs.js");
var Curry = require("rescript/lib/js/curry.js");
var Column = require("../src/Square/Column.bs.js");
var Belt_List = require("rescript/lib/js/belt_List.js");
var Intersection = require("../src/Square/Intersection.bs.js");

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

Jest.describe("Cell is invalid", (function (param) {
        return Jest.test("cell_is_invalid", (function (param) {
                      return Jest.Expect.toBe(false, Jest.Expect.expect(Cell.isValid({
                                          base: 5,
                                          index: 27
                                        })));
                    }));
      }));

Jest.describe("All row-col pairs of 5-square", (function (param) {
        return Jest.test("5-square_row-col_pairs", (function (param) {
                      var oneToBaseSquared = Util.oneToN(25);
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

Jest.describe("All cells of all rows of 5-square", (function (param) {
        return Jest.test("cells_of_rows", (function (param) {
                      var oneToBase = Util.oneToN(5);
                      var supposedRows_0 = {
                        hd: 1,
                        tl: {
                          hd: 2,
                          tl: {
                            hd: 3,
                            tl: {
                              hd: 4,
                              tl: {
                                hd: 5,
                                tl: /* [] */0
                              }
                            }
                          }
                        }
                      };
                      var supposedRows_1 = {
                        hd: {
                          hd: 6,
                          tl: {
                            hd: 7,
                            tl: {
                              hd: 8,
                              tl: {
                                hd: 9,
                                tl: {
                                  hd: 10,
                                  tl: /* [] */0
                                }
                              }
                            }
                          }
                        },
                        tl: {
                          hd: {
                            hd: 11,
                            tl: {
                              hd: 12,
                              tl: {
                                hd: 13,
                                tl: {
                                  hd: 14,
                                  tl: {
                                    hd: 15,
                                    tl: /* [] */0
                                  }
                                }
                              }
                            }
                          },
                          tl: {
                            hd: {
                              hd: 16,
                              tl: {
                                hd: 17,
                                tl: {
                                  hd: 18,
                                  tl: {
                                    hd: 19,
                                    tl: {
                                      hd: 20,
                                      tl: /* [] */0
                                    }
                                  }
                                }
                              }
                            },
                            tl: {
                              hd: {
                                hd: 21,
                                tl: {
                                  hd: 22,
                                  tl: {
                                    hd: 23,
                                    tl: {
                                      hd: 24,
                                      tl: {
                                        hd: 25,
                                        tl: /* [] */0
                                      }
                                    }
                                  }
                                }
                              },
                              tl: /* [] */0
                            }
                          }
                        }
                      };
                      var supposedRows = {
                        hd: supposedRows_0,
                        tl: supposedRows_1
                      };
                      var allRows = Belt_List.map(Belt_List.flatten(Belt_List.map(Belt_List.map(oneToBase, (function (x) {
                                          return {
                                                  base: 5,
                                                  index: x
                                                };
                                        })), Row.getCells)), Cell.getIndex);
                      return Jest.Expect.toEqual(Belt_List.flatten(supposedRows), Jest.Expect.expect(allRows));
                    }));
      }));

Jest.describe("All cells of all columns of 5-square", (function (param) {
        return Jest.test("cells_of_columns", (function (param) {
                      var oneToBase = Util.oneToN(5);
                      var supposedColumns_0 = {
                        hd: 1,
                        tl: {
                          hd: 6,
                          tl: {
                            hd: 11,
                            tl: {
                              hd: 16,
                              tl: {
                                hd: 21,
                                tl: /* [] */0
                              }
                            }
                          }
                        }
                      };
                      var supposedColumns_1 = {
                        hd: {
                          hd: 2,
                          tl: {
                            hd: 7,
                            tl: {
                              hd: 12,
                              tl: {
                                hd: 17,
                                tl: {
                                  hd: 22,
                                  tl: /* [] */0
                                }
                              }
                            }
                          }
                        },
                        tl: {
                          hd: {
                            hd: 3,
                            tl: {
                              hd: 8,
                              tl: {
                                hd: 13,
                                tl: {
                                  hd: 18,
                                  tl: {
                                    hd: 23,
                                    tl: /* [] */0
                                  }
                                }
                              }
                            }
                          },
                          tl: {
                            hd: {
                              hd: 4,
                              tl: {
                                hd: 9,
                                tl: {
                                  hd: 14,
                                  tl: {
                                    hd: 19,
                                    tl: {
                                      hd: 24,
                                      tl: /* [] */0
                                    }
                                  }
                                }
                              }
                            },
                            tl: {
                              hd: {
                                hd: 5,
                                tl: {
                                  hd: 10,
                                  tl: {
                                    hd: 15,
                                    tl: {
                                      hd: 20,
                                      tl: {
                                        hd: 25,
                                        tl: /* [] */0
                                      }
                                    }
                                  }
                                }
                              },
                              tl: /* [] */0
                            }
                          }
                        }
                      };
                      var supposedColumns = {
                        hd: supposedColumns_0,
                        tl: supposedColumns_1
                      };
                      var allColumns = Belt_List.map(Belt_List.flatten(Belt_List.map(Belt_List.map(oneToBase, (function (x) {
                                          return {
                                                  base: 5,
                                                  index: x
                                                };
                                        })), Column.getCells)), Cell.getIndex);
                      return Jest.Expect.toEqual(Belt_List.flatten(supposedColumns), Jest.Expect.expect(allColumns));
                    }));
      }));

Jest.describe("All base-row-col tuple to cell indices of 5-square", (function (param) {
        return Jest.test("b-r-c_to_b-n", (function (param) {
                      var oneToBase = Util.oneToN(5);
                      var a = Belt_List.map(oneToBase, (function (x, __x) {
                              return Intersection.findByIntegers(5, __x, x);
                            }));
                      var b = Belt_List.map(Belt_List.flatten(Belt_List.map(oneToBase, (function (y) {
                                      return Belt_List.keepMap(a, (function (x) {
                                                    return Curry._1(x, y);
                                                  }));
                                    }))), (function (x) {
                              return [
                                      Curry._1(Cell.getBase, x),
                                      Curry._1(Cell.getIndex, x)
                                    ];
                            }));
                      return Jest.Expect.toEqual({
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
                                          tl: {
                                            hd: [
                                              5,
                                              6
                                            ],
                                            tl: {
                                              hd: [
                                                5,
                                                7
                                              ],
                                              tl: {
                                                hd: [
                                                  5,
                                                  8
                                                ],
                                                tl: {
                                                  hd: [
                                                    5,
                                                    9
                                                  ],
                                                  tl: {
                                                    hd: [
                                                      5,
                                                      10
                                                    ],
                                                    tl: {
                                                      hd: [
                                                        5,
                                                        11
                                                      ],
                                                      tl: {
                                                        hd: [
                                                          5,
                                                          12
                                                        ],
                                                        tl: {
                                                          hd: [
                                                            5,
                                                            13
                                                          ],
                                                          tl: {
                                                            hd: [
                                                              5,
                                                              14
                                                            ],
                                                            tl: {
                                                              hd: [
                                                                5,
                                                                15
                                                              ],
                                                              tl: {
                                                                hd: [
                                                                  5,
                                                                  16
                                                                ],
                                                                tl: {
                                                                  hd: [
                                                                    5,
                                                                    17
                                                                  ],
                                                                  tl: {
                                                                    hd: [
                                                                      5,
                                                                      18
                                                                    ],
                                                                    tl: {
                                                                      hd: [
                                                                        5,
                                                                        19
                                                                      ],
                                                                      tl: {
                                                                        hd: [
                                                                          5,
                                                                          20
                                                                        ],
                                                                        tl: {
                                                                          hd: [
                                                                            5,
                                                                            21
                                                                          ],
                                                                          tl: {
                                                                            hd: [
                                                                              5,
                                                                              22
                                                                            ],
                                                                            tl: {
                                                                              hd: [
                                                                                5,
                                                                                23
                                                                              ],
                                                                              tl: {
                                                                                hd: [
                                                                                  5,
                                                                                  24
                                                                                ],
                                                                                tl: {
                                                                                  hd: [
                                                                                    5,
                                                                                    25
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
                                }, Jest.Expect.expect(b));
                    }));
      }));

Jest.describe("Cell 17 is in Row 4 of 5-Square", (function (param) {
        return Jest.test("cell-17_in_row-4", (function (param) {
                      var cell = {
                        base: 5,
                        index: 17
                      };
                      var row = {
                        base: 5,
                        index: 4
                      };
                      return Jest.Expect.toBe(true, Jest.Expect.expect(Row.hasCell(row, cell)));
                    }));
      }));

Jest.describe("Cell 17 isn't in Column 5 of 5-Square", (function (param) {
        return Jest.test("cell-17_not_in_col-5", (function (param) {
                      var cell = {
                        base: 5,
                        index: 17
                      };
                      var column = {
                        base: 5,
                        index: 5
                      };
                      return Jest.Expect.toBe(false, Jest.Expect.expect(Column.hasCell(column, cell)));
                    }));
      }));

Jest.describe("Another way to tell if a Cell belongs to a row", (function (param) {
        return Jest.test("cell_belongingness_by_its_row_index", (function (param) {
                      var cell12 = {
                        base: 5,
                        index: 12
                      };
                      var rowOfCell12 = Row.rowOfCell(cell12);
                      var supposedRow = {
                        base: 5,
                        index: 3
                      };
                      return Jest.Expect.toEqual(supposedRow, Jest.Expect.expect(rowOfCell12));
                    }));
      }));

Jest.describe("Another way to tell if a Cell belongs to a column", (function (param) {
        return Jest.test("cell_belongingness_by_its_column_index", (function (param) {
                      var cell12 = {
                        base: 5,
                        index: 12
                      };
                      var columnOfCell12 = Column.columnOfCell(cell12);
                      var supposedColumn = {
                        base: 5,
                        index: 2
                      };
                      return Jest.Expect.toEqual(supposedColumn, Jest.Expect.expect(columnOfCell12));
                    }));
      }));

Jest.describe("Intersect a Row and a Column to get a Cell", (function (param) {
        return Jest.test("row-col_intersect", (function (param) {
                      var cell = Intersection.findByRowColumn({
                            base: 5,
                            index: 3
                          }, {
                            base: 5,
                            index: 3
                          });
                      return Jest.Expect.toEqual({
                                  base: 5,
                                  index: 13
                                }, Jest.Expect.expect(cell));
                    }));
      }));

/*  Not a pure module */
