<!-- Obtener el padre de un nodo -->
<#assign hijoEjemplo = cmsfn.nodeByPath("/content/ejemplo/nodoEjemplo/hijoEjemplo")>
<p>Padre del hijoEjemplo: ${cmsfn.parent(hijoEjemplo).title!cmsfn.parent(hijoEjemplo).@name}</p>