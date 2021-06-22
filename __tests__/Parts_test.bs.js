// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Cell = require("../src/Cell.bs.js");
var Jest = require("@glennsl/bs-jest/src/jest.bs.js");
var BasicPart = require("../src/BasicPart.bs.js");

Jest.describe("Two basic parts belong to the same square ", (function (param) {
        return Jest.test("parts_of_same_square", (function (param) {
                      return Jest.Expect.toBe(true, Jest.Expect.expect(BasicPart.sameSquare([
                                          5,
                                          17
                                        ], [
                                          5,
                                          12
                                        ])));
                    }));
      }));

Jest.describe("Two basic parts don't belong to the same square ", (function (param) {
        return Jest.test("parts_of_diff_square", (function (param) {
                      return Jest.Expect.toBe(false, Jest.Expect.expect(BasicPart.sameSquare([
                                          5,
                                          14
                                        ], [
                                          6,
                                          9
                                        ])));
                    }));
      }));

Jest.describe("Cell is valid", (function (param) {
        return Jest.test("parts_of_diff_square", (function (param) {
                      return Jest.Expect.toBe(false, Jest.Expect.expect(Cell.isValid([
                                          5,
                                          27
                                        ])));
                    }));
      }));

/*  Not a pure module */
