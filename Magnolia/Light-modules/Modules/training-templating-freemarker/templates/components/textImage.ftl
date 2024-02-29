[#--  Component -> Code  --]
<p>Hello World! I'm a Component.</p>

[#if content.headline?has_content]
  <h4 class="chapter-head">${content.headline}</h4>
[/#if]

[#--  Si la imagenLink tiene contenido y no está vacía trae la imagen del contenido selecciona mediante su nodo  --]
[#--  Sugerencia: observe que se utiliza la verificación nula  --]
[#--  
  [#if content.imageLink?has_content]
    [#assign asset = damfn.getAsset(content.imageLink)!]
  [/#if]  
--]

${cmsfn.decode(content).text!}

[#--  Médiente la doble comprobación de sí la imagen está nula --]
[#if content.imageLink?has_content]
    [#--  [#assign asset = damfn.getAsset(content.imageLink)!]  --]
    [#assign asset = damfn.getRendition(content.imageLink, "480")!]
    [#if asset?has_content && asset.link?has_content]
        <img class="img-responsive" src="${asset.link}" alt="">
    [/#if]
[/#if]