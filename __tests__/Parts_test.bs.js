// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Cell = require("../src/Cell.bs.js");
var Jest = require("@glennsl/bs-jest/src/jest.bs.js");

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

/*  Not a pure module */
