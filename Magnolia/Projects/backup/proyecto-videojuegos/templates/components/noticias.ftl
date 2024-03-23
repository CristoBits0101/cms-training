<div class="mt-auto">
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
