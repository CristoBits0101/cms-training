[#-- Set UUID --]
[#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]

    [#-- Get the children jcrNode --]
    [#assign jcrNode = cmsfn.asJCRNode(childNode)]

    [#-- Get the jcrNode UUID --]
    [#assign uuid = jcrNode.getIdentifier()]

[/#list]

[#-- Get UUID --]
[#assign uuidNoticia = ctx.getParameter("uuid")!]
[#if uuidNoticia?? && uuidNoticia != ""]
<div class="container">
    [#-- ****** main content ****** --]
    [#setting locale="es_ES"]
    [#assign noticiasRoot = cmsfn.contentByPath("/", "noticias-app")]
    [#assign noticias = cmsfn.children(noticiasRoot, "mgnl:content")]
    [#assign noticia = (noticias?filter(n -> cmsfn.asJCRNode(n).getIdentifier() == uuidNoticia))[0]
    ]
    [#if noticia??]
    <div class="row">
        <div class="col-md-12 mt-4">
            <div class="">
                [#assign asset = damfn.getAsset(noticia.imagen)!]
                <h1 class="card-title mt-3 text-center">
                    ${noticia.titulo!}
                </h1>
                <img class="card-img-top mx-auto d-block mt-4" src="${asset.link}" alt="Card image cap" style="width: 50%; height: auto; border-radius: 15px;">
                <div class="card-body mt-5">
                    <p class="card-text ">
                        ${noticia.contenido!}
                    </p>
                    <p class="card-text mb-3"><small class="text-muted">
                            ${noticia.fechaPublicacion?string["EEEE d 'de' MMMM 'del' yyyy"]?cap_first}
                        </small></p>
                </div>
            </div>
        </div>
    </div>
    [#else]
    <p>No se encontró ninguna noticia con el UUID proporcionado.</p>
    [/#if]
</div>
[#else]
<p>No se ha proporcionado un UUID de noticia todavia.</p>
[/#if]
