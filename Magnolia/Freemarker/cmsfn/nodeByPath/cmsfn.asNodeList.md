<!-- asNodeList - Transformar una lista de ContentMap a una colección de nodos -->
<#assign listaContentMap = [
  {"title": "Item 1", "@name": "item1"},
  {"title": "Item 2", "@name": "item2"}
]>

<#assign nodos = cmsfn.asNodeList(listaContentMap)>
<#list nodos as nodoItem>
  <p>Título del nodo: ${nodoItem.title!nodoItem.@name}</p>
</#list>