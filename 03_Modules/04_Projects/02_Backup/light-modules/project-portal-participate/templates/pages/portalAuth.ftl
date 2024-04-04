<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS Styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/pages/portal-auth.css")}

        [#-- Google fonts --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&family=Dancing+Script:wght@400..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">

    </head>

    <body>

        [#-- Main content of the page --]
        <main>
            [@cms.area name="main" /]
        </main>

        [#-- Cached JS scripts --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/forms/modify-pur-form.js")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/forms/add-svg-submit-button.js")}

    </body>

</html>