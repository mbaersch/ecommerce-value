___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "EEC Product Value",
  "description": "Calculate value of products / items array from price, discount and quantity (if present)",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "inputArray",
    "displayName": "Input Array (Products / Items)",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

var items = data.inputArray||[];
if (typeof(items) === "string") items = require("JSON").parse(items);
var res = items.reduce(function(prev, item){return prev + ((item.price - (item.discount||0)) * item.quantity||1);}, 0)||0;
return require("Math").round(res * 100) / 100;


___TESTS___

scenarios: []


___NOTES___

Created on 5.9.2022, 19:30:23
