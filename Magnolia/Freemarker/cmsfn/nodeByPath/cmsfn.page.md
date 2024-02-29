<!-- Obtener el nodo de la página si el nodo pasado es una página -->
<#assign posiblePagina = cmsfn.nodeByPath("/content/otraPagina")>
<p>Si es página, obtener el mismo nodo: ${cmsfn.page(posiblePagina).title!cmsfn.page(posiblePagina).@name}</p>