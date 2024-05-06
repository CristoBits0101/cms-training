[#-- OPTION 1 --]

[#-- Declaramos un array --]
[#assign productTags = []]

[#-- We obtain the root of the workspace products --]
[#assign workspaceNode = cmsfn.contentByPath("/", "products")!]
[#assign tagsRoot = cmsfn.contentByPath("/", "tags")]

${tagsRoot}

[#-- We take the children nodes of the root with the node type products --]
[#assign childrenNodeType = cmsfn.children(workspaceNode, "products")]

[#list childrenNodeType as childNode]

    [#assign jcrNode = cmsfn.asJCRNode(childNode)]
    [#assign contentMap = cmsfn.asContentMap(jcrNode)]

    [#list tagfn.getTags(contentMap) as tag]
        <div class="checkboxes">
            <input type="checkbox" name="tagCopy" value="${tag}" id="${tag}">
            <p>${tag}</p>
        </div>
    [/#list]

[/#list]


[#-- OPTION 2 --]

[#-- We obtain the root of the workspace products --]
[#assign workspaceNode = cmsfn.contentByPath("/", "products")!]

[#-- We take the children nodes of the root with the node type products --]
[#assign childrenNodeType = cmsfn.children(workspaceNode, "products")]

<script>
    const uniqueTagsSet = new Set()
    const uniqueTags = (tag) => 
    {
        uniqueTagsSet.add(tag)
    }
</script>

[#list childrenNodeType as childNode]

    [#assign jcrNode = cmsfn.asJCRNode(childNode)]
    [#assign contentMap = cmsfn.asContentMap(jcrNode)]

    [#list tagfn.getTags(contentMap) as tag]
        <script>uniqueTags(`${tag}`)</script>
    [/#list]

    <script>
        uniqueTagsSet.forEach(tag => {
            console.log(tag);
        });
    </script>

[/#list]