<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
<head>
    [@cms.page /]
      
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${content.description!content.abstract!}">
    <meta name="keywords" content="${content.keywords!}">
    <meta name="author" content="">
      
    <title>${content.windowTitle!content.navigationTitle!content.title!content.@name}</title>
  
    ${resfn.css("/training-templating-website/webresources/css/.*css")}
</head>
  
<body>
    <div class="container">
               
        [#-- ****** page content ****** --]
        <div class="panel panel-info">
            <div class="panel-heading">
                <h1 class="panel-title">${content.title!content.@name}</h1>
            </div>
            [#if content.abstract?has_content]
            <div class="panel-body">
                <p>${content.abstract!"No abstract saved yet"}</p>
            </div>
            [/#if]
        </div>
          
        <!-- Main Area -->
        [@cms.area name="main" /]
        <!-- End: Main Area-->
         [@cms.area name="footer" /]
    </div>
      
    ${resfn.cachedJs(["/training-templating-website.*jquery.*js", "/training-templating-website.*bootstrap.*js"]) }
</body>
</html>