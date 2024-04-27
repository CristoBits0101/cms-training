<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS Styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/pages/portal-community.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/interactivity/animation-transition.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/interactivity/media-query.css")}

        [#-- Google fonts --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&family=Courgette&family=Dancing+Script:wght@400..700&family=Edu+NSW+ACT+Foundation:wght@400..700&family=Heebo:wght@100..900&family=Jost:ital,wght@0,100..900;1,100..900&family=Macondo&family=Noto+Sans+KR:wght@100..900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Raleway:ital,wght@0,100..900;1,100..900&family=Rancho&family=Roboto+Mono:ital,wght@0,100..700;1,100..700&family=Source+Code+Pro:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">

        [#-- Chat Script --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/chat/chat-service.js", "type='module'")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/format/textarea.js")}

        [#-- Script to hide settings modal --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/navbar/hide-settings-modal.js")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/navbar/load-settings-modal.js")}

        <script>
            var userName = '${ctx.user.name}'
        </script>

    </head>

    <body>

        [#-- Related but independent content --]
        <aside>
            [@cms.area name="aside" /]
        </aside>

        [#-- Main content of the page --]
        <main>
            [@cms.area name="main" /]
        </main>

        [#-- Cached JS scripts --]
        ${resfn.cachedJs("/project-portal-participate/webresources/js/navbar/show-settings-modal.js")}
        ${resfn.cachedJs("/project-portal-participate/webresources/js/navbar/change-page-language.js")}

    </body>

</html>