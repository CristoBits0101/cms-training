[#assign jcrNode = cmsfn.asJCRNode(noticia)]
[#assign contentMap = cmsfn.asContentMap(jcrNode)]
[#list tagfn.getTags(contentMap) as tag]
    ${tag!}
[/#list]