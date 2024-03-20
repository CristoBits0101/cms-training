
    <div class="container">
        [#-- ****** main content ****** --]
        [#setting locale="es_ES"]
        [#assign noticiasRoot = cmsfn.contentByPath("/", "noticias-app")]
        [#assign noticias = cmsfn.children(noticiasRoot, "mgnl:content")]
        [#assign noticias = noticias?reverse]
        [#-- Definir el límite como un parámetro --]
        [#assign limite = content.cantidadNoticias!3]
        <div class="row ">
            [#list noticias[0..(limite-1)]as noticia]
                [#assign jcrNode = cmsfn.asJCRNode(noticia)]
                [#assign uuid = jcrNode.getIdentifier()]
            [/#if]
            <div class="${colClass} mt-4">
                <div class="card h-100">
                    [#assign asset = damfn.getAsset(noticia.imagen)!]
                    <img class="card-img-top" src="${asset.link}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">
                            ${noticia.titulo!}
                        </h5>
                        <p class="card-text">
                            ${noticia.resumen!}
                        </p>
                        <p class="card-text">
                            <strong>Tags:</strong>
                            ${noticia.categoria!}
                        </p>
                        <div class="mt-auto">
                            <p class="card-text"><small class="text-muted">
                                    ${noticia.fechaPublicacion?string["EEEE d 'de' MMMM 'del' yyyy"]?cap_first}
                                </small></p>
                            [#-- Obtiene el nodo padre del contenido actual --]
                            [#assign nodoMain = cmsfn.parent(content)]
                            [#-- Obtiene el nodo padre del nodo principal --]
                            [#assign nodoPrincipal = cmsfn.parent(nodoMain)]
                            [#-- Obtiene el nodo del encabezado del nodo principal --]
                            [#assign nodoHeader = nodoPrincipal.header]
                            [#-- Obtiene el contenido por ID usando el enlace de información de noticia del nodo del encabezado --]
                            [#assign target = cmsfn.contentById(nodoHeader.infoNoticiaLink)!]
                            [#-- Verifica si el contenido objetivo existe y no ha sido eliminado --]
                            [#if target?has_content && !cmsfn.asJCRNode(target).hasProperty("mgnl:deleted")]
                            [#-- Obtiene el enlace del contenido objetivo --]
                            [#assign link = cmsfn.link(target)!]
                            [/#if]
                            <a href="${link}?uuid=${uuid}" class="btn btn-primary">Leer Noticia</a><br>
                        </div>
                    </div>
                </div>
            </div>
            [/#list]
        </div>
    </div>
</div>