<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/globalStyles.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/portalDetails.css")}

        [#-- Google Sans --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">

        [#-- Script to hide news details --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/news/loadNewsDetails.js")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/news/hideNewsDetails.js")}

    </head>

    <body>

        [#-- Navbar content --]
        <div class="navbar-container">
            [@cms.area name="nav" /]
        </div>

        [#-- Main content of the page --]
        <main>
            [@cms.area name="main" /]
        </main>

        [#-- Footer content --]
        <footer>
            [@cms.area name="footer" /]
        </footer>

        [#-- Cached JS scripts --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/news/showNewsDetails.js")}
        
    </body>

</html>
