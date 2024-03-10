<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

<head>

    [#-- Page type template --]
    [@cms.page /]

    [#-- Meta information --]
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    [#-- Page title --]
    <title></title>

    [#--  Cached CSS Styles --]
    ${resfn.cachedCss("/project-portal-participate/webresources/css/portalHome.css")}

    [#--  Google Sans  --]
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Google+Sans:wght@400;700&display=swap" />

</head>

<body>

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

</body>