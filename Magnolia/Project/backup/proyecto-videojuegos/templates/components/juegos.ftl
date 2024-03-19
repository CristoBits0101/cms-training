<hr>
<div>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Últimos Juegos</h1>
            </div>
        </div>
    </div>
    <div class="container">
        [#-- ****** main content ****** --]
        [#setting locale="es_ES"]
        [#assign juegosRoot = cmsfn.contentByPath("/", "juegos-app")]
        [#assign juegos = cmsfn.children(juegosRoot, "mgnl:content")]
        [#assign juegos = juegos?reverse]
        [#-- Definir el límite como un parámetro --]
        [#assign limite = content.cantidadJuegos!3]
        <div class="row justify-content-center">
            [#list juegos[0..(limite-1)]
            as juego]
            [#assign jcrNode = cmsfn.asJCRNode(juego)]
            [#assign uuid = jcrNode.getIdentifier()]
            <div class="col-md-4 mt-4">
                <div class="card">
                    [#assign asset = damfn.getAsset(juego.imagen)!]
                    <img class="card-img-top" src="${asset.link}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">
                            ${juego.titulo!}
                        </h5>
                        <p class="card-text">
                            ${juego.categoria!}
                        </p>
                        <p class="card-text">
                            ${juego.consola!}
                        </p>
                        [#-- Obtiene el nodo padre del contenido actual --]
                        [#assign nodoMain = cmsfn.parent(content)]
                        [#-- Obtiene el nodo padre del nodo principal --]
                        [#assign nodoPrincipal = cmsfn.parent(nodoMain)]
                        [#-- Obtiene el nodo del encabezado del nodo principal --]
                        [#assign nodoHeader = nodoPrincipal.header]
                        [#-- Obtiene el contenido por ID usando el enlace de información de noticia del nodo del encabezado --]
                        [#assign target = cmsfn.contentById(nodoHeader.infoJuegoLink)!]
                        [#-- Verifica si el contenido objetivo existe y no ha sido eliminado --]
                        [#if target?has_content && !cmsfn.asJCRNode(target).hasProperty("mgnl:deleted")]
                        [#-- Obtiene el enlace del contenido objetivo --]
                        [#assign link = cmsfn.link(target)!]
                        [/#if]
                        <a href="${link}?uuid=${uuid}" class="">Más info</a><br>
                    </div>
                </div>
            </div>
            [/#list]
        </div>
    </div>
</div>
<hr>