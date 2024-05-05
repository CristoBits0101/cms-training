[#assign uuidNoticia = ctx.getParameter("uuid")!]
[#if uuidNoticia?? && uuidNoticia != ""]
[#assign noticia = (noticias?filter(n -> cmsfn.asJCRNode(n).getIdentifier() == uuidNoticia))[0]]