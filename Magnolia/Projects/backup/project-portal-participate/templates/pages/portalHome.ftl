<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/globalStyles.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/portalHome.css")}

        [#-- Google Sans --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">

        [#-- Script to hide news details --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/loadNewsDetails.js")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/hideNewsDetails.js")}

    </head>

    <body>

        [#-- Navbar content --]
        <div class="navbar-container">
            [@cms.area name="nav" /]
        </div>

        [#-- Header content --]
        <header>
            [@cms.area name="header" /]
        </header>

        [#-- Main content of the page --]
        <main>
            [@cms.area name="main" /]
        </main>

        [#-- Related but independent content --]
        <aside>
            [@cms.area name="aside" /]
        </aside>

        [#-- Footer content --]
        <footer>
            [@cms.area name="footer" /]
        </footer>

        [#-- Cached JS scripts --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/showNewsDetails.js")}

    </body>

</html>
