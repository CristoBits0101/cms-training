[#if content.targetPageLink?has_content]
    [#assign targetPageNode = cmsfn.contentById(content.targetPageLink, "website")! /]
 
    [#if targetPageNode?has_content]
    <div>
        <a href="${cmsfn.link(targetPageNode)!}">${targetPageNode.title!targetPageNode.@name}</a>
 
        [#-- TODO 1
                 - use a macro while looping over all the children of the selected node
                 - pass to the macro following three things:
                 -- the node to get the children from
                 -- the depth of the targetPageNode -> startDepths
                 -- the maxLevel -> read from the 'content' what the author defined
                 - in the macro, for each child, call the macro again -> recursion
                 - stop the recursion when the maxDepth is reached   ->
        --]
        [#list cmsfn.children(targetPageNode, "mgnl:page")]
        <ul>
            [#items as childNode]
                <li><a href="${cmsfn.link(childNode)!}">${childNode.title!childNode.@name}</a></li>
            [/#items]
        </ul>
        [/#list]
    </div>
 
    [#elseif cmsfn.editMode]
        <div>Target page node could not be found via the stored link.</div>
    [/#if]
[#elseif cmsfn.editMode]
    <div>No target page node defined.</div>
[/#if]