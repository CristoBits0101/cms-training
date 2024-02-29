<#assign nodoHermano = cmsfn.nodeByPath("/content/ejemplo/nodoEjemplo/hermanoEjemplo")>
<p>¿Es del mismo padre? ${cmsfn.isFromCurrentPage(nodoHermano)}</p>