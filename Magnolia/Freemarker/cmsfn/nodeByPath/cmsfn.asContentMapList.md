<!-- Supongamos que tenemos un nodo llamado 'nodoEjemplo' -->

<!-- asContentMapList - Transformar una colección de nodos a una lista de ContentMap -->
<#assign nodosHijos = cmsfn.children(nodoEjemplo)>

<#assign listaContentMap = cmsfn.asContentMapList(nodosHijos)>
<#list listaContentMap as contentMapItem>
  <p>Título del ContentMap: ${contentMapItem.title!contentMapItem.@name}</p>
</#list>

<!-- asNodeList - Transformar una lista de ContentMap a una colección de nodos -->
<#assign listaContentMap = [
  {"title": "Item 1", "@name": "item1"},
  {"title": "Item 2", "@name": "item2"}
]>