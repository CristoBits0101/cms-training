<!-- Obtener todos los ancestros de un nodo -->
<#assign nodoEjemplo = cmsfn.nodeByPath("/content/ejemplo/nodoEjemplo")>
[#list cmsfn.ancestors(nodoEjemplo) as ancestor]
  <p>Ancestro: ${ancestor.title!ancestor.@name}</p>
[/#list]