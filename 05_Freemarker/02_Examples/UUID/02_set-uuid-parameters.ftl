[#assign jcrNode = cmsfn.asJCRNode(noticia)]
[#assign uuid = jcrNode.getIdentifier()]
<a href="${link}?uuid=${uuid}">See more</a>