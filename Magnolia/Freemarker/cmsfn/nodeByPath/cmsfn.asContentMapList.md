<!-- Supongamos que tenemos un nodo llamado 'nodoEjemplo' -->

<!-- asContentMapList - Transformar una colección de nodos a una lista de ContentMap -->
<#assign nodosHijos = cmsfn.children(nodoEjemplo)>

<#assign listaContentMap = cmsfn.asContentMapList(nodosHijos)>
<#list listaContentMap as contentMapItem>
  <p>Título del ContentMap: ${contentMapItem.title!contentMapItem.@name}</p>
</#list>