<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS Styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/globalStyles.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/portalHome.css")}

        [#-- Google Sans --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">

    </head>

    <body>

        [#-- Header content --]
        <header>
            [@cms.area name="nav" /]
        </header>

        [#-- Main content of the page --]
        <main>
            [@cms.area name="main" /]
        </main>

        [#-- Footer content --]
        <footer>
            [@cms.area name="footer" /]
        </footer>

    </body>

</html>
