<!-- Obtener contenido del JCR por ruta -->
<#assign contenidoPorRuta = cmsfn.contentByPath("/content/ejemplo")>
<p>Contenido por ruta - Título: ${contenidoPorRuta.title!contenidoPorRuta.@name}</p>

<!-- Obtener nodo del JCR por ruta -->
<#assign nodoPorRuta = cmsfn.nodeByPath("/content/ejemplo/nodoEjemplo")>
<p>Nodo por ruta - Título: ${nodoPorRuta.title!nodoPorRuta.@name}</p>