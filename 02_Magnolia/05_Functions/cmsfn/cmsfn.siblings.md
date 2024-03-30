<!-- Supongamos que tenemos un nodo llamado 'nodoEjemplo' -->
<#assign nodoEjemplo = cmsfn.nodeByPath("/content/ejemplo/nodoEjemplo")>

<!-- Siblings - Ayudante para trabajar con los hermanos de un nodo -->
[#list cmsfn.siblings(nodoEjemplo) as hermano]
  <p>Hermano: ${hermano.title!hermano.@name}</p>
[/#list]