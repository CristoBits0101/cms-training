<!-- Codificación y decodificación HTML -->
<#assign contenidoConHtml = "<p>Contenido HTML</p>">
<p>Contenido codificado: ${cmsfn.encode(contenidoConHtml).text!}</p>
<p>Contenido decodificado: ${cmsfn.decode(contenidoConHtml).text!}</p>