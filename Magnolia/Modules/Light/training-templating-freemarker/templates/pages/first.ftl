<head>

    [#-- Template -> Page  --]
    [@cms.page /]

    [#--  
      CSS -> Estático
      <link
          rel="stylesheet"
          href="${ctx.contextPath}/.resources/training-templating-freemarker/webresources/css/bootstrap.css"
          media="screen"
      />  
    --]
  
    [#--  
      CSS -> Dinámico
      ${resfn.css("/training-templating-freemarker/webresources/css/.*css")}
      ${resfn.js("/training-templating-freemarker/webresources/js/.*js")}  
    --]

    [#--
      CSS -> Doble
      ${resfn.css(["/training-templating-freemarker/.*css", "/training-templating-website/.*css"])}
    --]

    [#--  CSS -> Caché  --]
    ${resfn.cachedCss("/training-templating-freemarker/webresources/css/.*css")}
    
</head>

<body>

  <div class="container">
    <div class="panel panel-info">
 
      <div class="panel-heading">
        [#--  Etiqueta -> Diálogo  --]
        <h1 class="panel-title">${content.title}</h1>                             
      </div>

      <div class="panel-body">
        [#--  Etiqueta -> Diálogo  --]
        <p>${content.editor}</p>
      </div>
 
    </div> 
  </div>

  [#--  pages/first.yaml -> main  --]
  [@cms.area name="main" /]

  [#--  pages/first.yaml -> footer  --]
  [@cms.area name="footer" /]
 
</body>