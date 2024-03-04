[#-- Get initial node: --]
[#assign targetNode = cmsfn.contentById(content.targetNode, "website")! /]

[#-- Call the Macro the first time: --]
[@linkChildren targetNode /]

[#-- The Macro itself: Getting all child nodes and recursively calling itself. --]
[#macro linkChildren node ]
  [#list cmsfn.children(node, "mgnl:page")]
    <ul>
      [#items as childNode]
        <li><a href="${cmsfn.link(childNode)!}">${childNode.title!childNode.@name}</a></li>
        [#-- The recursion: --]
        [@linkChildren childNode /]
      [/#items]
    </ul>
  [/#list]
[/#macro]