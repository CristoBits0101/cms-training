
<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">
 
    <head>
        [@cms.page /]
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        [#-- Access from the page's content: The page's 'title' OR if non-existing, the page's node name. --]
        <title>${content.title!content.@name}</title>
         
        [#-- A manual defined link to a resource:
        <link rel="stylesheet" href="${ctx.contextPath}/.resources/training-templating-freemarker/webresources/css/bootstrap.css" media="screen">
        --]
        [#-- Using the 'resfn' for a more dynamic approach. --]
        ${resfn.cachedCss("/training-templating-foundation.*css")}
    </head>
     
    <body>
        <div class="container">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h1 class="panel-title">${content.title!content.@name}</h1>
                </div>
                 
                [#if content.abstract?has_content]
                <div class="panel-body">
                    <p>${content.abstract}</p>
                </div>
                [/#if]

            </div>
             
            [#-- ****** main area ****** --]
            [@cms.area name="main" /]
        </div>
    </body>
     
</html>

