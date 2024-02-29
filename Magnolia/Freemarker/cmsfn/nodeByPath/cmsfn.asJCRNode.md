<!-- asJCRNode - Transformar un ContentMap a un nodo JCR -->
<#assign contentMapEjemplo = {"title": "Ejemplo", "@name": "ejemplo"}>
<#assign nodoJCR = cmsfn.asJCRNode(contentMapEjemplo)>
<p>Título del nodo JCR transformado: ${nodoJCR.title!nodoJCR.@name}</p>