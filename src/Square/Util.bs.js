// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_List from "rescript/lib/es6/belt_List.js";

function oneToN(n) {
  return Belt_List.makeBy(n, (function (i) {
                return i + 1 | 0;
              }));
}

export {
  oneToN ,
  
}
/* No side effect */
