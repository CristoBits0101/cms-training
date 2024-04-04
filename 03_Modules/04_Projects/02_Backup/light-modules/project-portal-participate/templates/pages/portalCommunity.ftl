<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS Styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/global-styles.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/pages/portal-community.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/interactivity/animation-transition.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/interactivity/media-query.css")}

        [#-- Google Sans --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">

        [#-- Script to hide news details --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/news/load-news-details.js")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/news/hide-news-details.js")}

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

        [#-- Related but independent content --]
        <aside>
            [@cms.area name="aside" /]
        </aside>

        [#-- Footer content --]
        <footer>
            [@cms.area name="footer" /]
        </footer>

        [#-- Cached JS scripts --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/news/show-news-details.js")}

    </body>

</html>