<!-- Transformar Node a ContentMap y viceversa -->
<#assign nodoTransformado = cmsfn.nodeByPath("/content/ejemplo/nodoEjemplo")>
<#assign contentMapTransformado = cmsfn.asContentMap(nodoTransformado)>
<p>Título del nodo transformado: ${contentMapTransformado.title!contentMapTransformado.@name}</p>