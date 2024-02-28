<head>
    <#--  Comentarios en .ftl                                                                               -->
    <#--  Directiva semántica que indica al CMS que es una plantilla de tipo página                         -->
    <#--  Sin la directiva no aparecen las funcionalidades de página                                        -->
    [@cms.page /]

    <#--  Después del href y antes de la ruta CSS se necesita la directiva ${ctx.contextPath}               -->
    <#--  No se puede especificar la ruta directamente de un CSS estático                                   -->
    <#--
        <link
            rel="stylesheet"
            href="${ctx.contextPath}/.resources/training-templating-freemarker/webresources/css/bootstrap.css"
            media="screen"
        />
    -->

    <#--  Referenciar dinámicamente un CSS sin la etiqueta link y con la directiva resfn                    -->
    <#--  ${resfn.css("/training-templating-freemarker/webresources/css/.*css")}                            -->
    <#--  ${resfn.js("/training-templating-freemarker/webresources/js/.*js")}                               -->

    <#--  Doble import                                                                                      -->
    <#--  ${resfn.css(["/training-templating-freemarker/.*css", "/training-templating-website/.*css"])}     -->

    <#--  Almacenar en caché la referencia del CSS                                                          -->
    ${resfn.cachedCss("/training-templating-freemarker/webresources/css/.*css")}
</head>

<body>
 
  <div class="container">
    <div class="panel panel-info">
 
      <div class="panel-heading">
        <h1 class="panel-title">Hello Magnolia!</h1>
      </div>
 
      <div class="panel-body">
        <p>Today is a nice day.</p>
      </div>
 
    </div> 
  </div>
 
</body>