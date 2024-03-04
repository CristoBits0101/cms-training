[#-- declaring the macro --]
[#macro testMacro foo bar="Bar" baaz=-1]
  Test text, and the params: ${foo}, ${bar}, ${baaz}
[/#macro]

[#-- calling the macro --]
[@testMacro foo="a" bar="b" baaz=5*5-2/]
  Rendered output: Test text, and the params: a, b, 23

[@testMacro foo="a" bar="b"/]
  Rendered output: Test text, and the params: a, b, -1

[@testMacro foo="a" baaz=5*5-2/]
  Rendered output: Test text, and the params: a, Bar, 23

[@testMacro foo="a"/]
  Rendered output: Test text, and the params: a, Bar, -1