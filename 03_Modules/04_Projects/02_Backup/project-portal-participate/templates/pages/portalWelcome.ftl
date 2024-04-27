<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

    <head>

        [#-- Meta information --]
        [#include "/project-portal-participate/templates/pages/content/headContent.ftl"]

        [#-- Cached CSS styles --]
        ${resfn.cachedCss("/project-portal-participate/webresources/css/pages/portal-welcome.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/interactivity/animation-transition.css")}
        ${resfn.cachedCss("/project-portal-participate/webresources/css/interactivity/media-query.css")}

        [#-- Google fonts --]
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&family=Dancing+Script:wght@400..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">

    </head>

    <body>

        <div class="container">

            [#-- Header content --]
            <header>

                [#-- Navbar content --]
                <nav>
                    <ul>

                        [#-- Login page --]
                        [#assign landingPage = cmsfn.contentById(content.login)!]

                        [#if landingPage?has_content]
                            <li>
                                <a class="btn" href="${cmsfn.link(landingPage)!}">
                                    ${content.loginButtonText}
                                </a>
                            </li>
                        [/#if]

                        [#-- Company logo --]
                        [#assign asset = damfn.getAsset(content.logo)!]

                        [#if asset?has_content]
                            <li>
                                <img src="${asset.link}" alt="PORTAL PARTICIPATE" />
                            </li>
                        [/#if]

                        [#-- Register page --]
                        [#assign landingPage = cmsfn.contentById(content.register)!]

                        [#if landingPage?has_content]
                            <li>
                                <a class="btn" href="${cmsfn.link(landingPage)!}">
                                    ${content.registerButtonText}
                                </a>
                            </li>
                        [/#if]

                    </ul>
                </nav>

            </header>

            [#-- Main content of the page --]
            <main>

                [#-- Welcome title --]
                <h1>&nbsp${content.welcomeTitle}</h1>

                [#-- Welcome text --]
                ${cmsfn.decode(content).introduction!}

                [#-- Home page --]
                [#assign landingPage = cmsfn.contentById(content.goHome)!]
                
                [#if landingPage?has_content]
                    <a href="${cmsfn.link(landingPage)!}">
                        <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"></polygon></svg>
                        ${content.homeButtonText}
                    </a>
                [/#if]

            </main>

            [#-- Footer content --]
            <footer>

                [#-- Company text --]
                <h2>${content.companyText}</h2>

            </footer>

        </div>
    </body>
</html>