[#-- recentContent --]
[#macro getContent folderName="" targetWorkspace="" newsNumber=3]

    [#-- The system checks if you entered a node other than the root and if the workspace has content --]
    [#if targetNode?has_content && targetWorkspace?has_content]

        [#-- The path to the target node is constructed --]
        [#assign path = "/" + "${content.targetNode}"]

        [#-- The reference to the workspace node is stored --]
        [#assign workspaceNode = cmsfn.contentByPath("${path}", "${targetWorkspace}")!]

    [#-- We check if the specified workspace from which to retrieve the content was indicated --]
    [#elseif targetWorkspace?has_content]

        [#-- We take the reference of the parent node from which we want to iterate over the children --]
        [#assign workspaceNode = cmsfn.contentByPath("/", "${targetWorkspace}")!]
        
        [#-- We store in a collection all the children with the node type news --]
        [#assign childrenNodeType = cmsfn.children(workspaceNode, "news")]

        [#-- We reverse the order of the collection to display the news from the latest publication to the oldest --]
        [#assign newsOrderReversed = childrenNodeType?reverse]

    [/#if]

[/#macro]
