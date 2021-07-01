// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Cell = require("../src/Cell.bs.js");
var Jest = require("@glennsl/bs-jest/src/jest.bs.js");
var Util = require("../src/Util.bs.js");
var Belt_List = require("rescript/lib/js/belt_List.js");

Jest.describe("Get the descending indices of all cells in 5-square", (function (param) {
        return Jest.test("desc_indices_of_5-squares", (function (param) {
                      var oneToBaseSquared = Util.oneToN(25);
                      var createCell = function (x) {
                        return {
                                base: 5,
                                index: x
                              };
                      };
                      var allCells = Belt_List.map(oneToBaseSquared, createCell);
                      var allDescendingIndices = Belt_List.map(allCells, Cell.descendingIndex);
                      return Jest.Expect.toEqual({
                                  hd: 5,
                                  tl: {
                                    hd: 6,
                                    tl: {
                                      hd: 7,
                                      tl: {
                                        hd: 8,
                                        tl: {
                                          hd: 9,
                                          tl: {
                                            hd: 4,
                                            tl: {
                                              hd: 5,
                                              tl: {
                                                hd: 6,
                                                tl: {
                                                  hd: 7,
                                                  tl: {
                                                    hd: 8,
                                                    tl: {
                                                      hd: 3,
                                                      tl: {
                                                        hd: 4,
                                                        tl: {
                                                          hd: 5,
                                                          tl: {
                                                            hd: 6,
                                                            tl: {
                                                              hd: 7,
                                                              tl: {
                                                                hd: 2,
                                                                tl: {
                                                                  hd: 3,
                                                                  tl: {
                                                                    hd: 4,
                                                                    tl: {
                                                                      hd: 5,
                                                                      tl: {
                                                                        hd: 6,
                                                                        tl: {
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
                                }, Jest.Expect.expect(allDescendingIndices));
                    }));
      }));

Jest.describe("Get the ascending indices of all cells in 5-square", (function (param) {
        return Jest.test("asc_indices_of_5-squares", (function (param) {
                      var oneToBaseSquared = Util.oneToN(25);
                      var createCell = function (x) {
                        return {
                                base: 5,
                                index: x
                              };
                      };
                      var allCells = Belt_List.map(oneToBaseSquared, createCell);
                      var allAscendingIndices = Belt_List.map(allCells, Cell.ascendingIndex);
                      return Jest.Expect.toEqual({
                                  hd: 1,
                                  tl: {
                                    hd: 2,
                                    tl: {
                                      hd: 3,
                                      tl: {
                                        hd: 4,
                                        tl: {
                                          hd: 5,
                                          tl: {
                                            hd: 2,
                                            tl: {
                                              hd: 3,
                                              tl: {
                                                hd: 4,
                                                tl: {
                                                  hd: 5,
                                                  tl: {
                                                    hd: 6,
                                                    tl: {
                                                      hd: 3,
                                                      tl: {
                                                        hd: 4,
                                                        tl: {
                                                          hd: 5,
                                                          tl: {
                                                            hd: 6,
                                                            tl: {
                                                              hd: 7,
                                                              tl: {
                                                                hd: 4,
                                                                tl: {
                                                                  hd: 5,
                                                                  tl: {
                                                                    hd: 6,
                                                                    tl: {
                                                                      hd: 7,
                                                                      tl: {
                                                                        hd: 8,
                                                                        tl: {
                                                                          hd: 5,
                                                                          tl: {
                                                                            hd: 6,
                                                                            tl: {
                                                                              hd: 7,
                                                                              tl: {
                                                                                hd: 8,
                                                                                tl: {
                                                                                  hd: 9,
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
                                }, Jest.Expect.expect(allAscendingIndices));
                    }));
      }));

/*  Not a pure module */