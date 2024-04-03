[#-- Set UUID --]
[#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]

    [#-- Get the children jcrNode --]
    [#assign jcrNode = cmsfn.asJCRNode(childNode)]

    [#-- Get the jcrNode UUID --]
    [#assign uuid = jcrNode.getIdentifier()]

[/#list]