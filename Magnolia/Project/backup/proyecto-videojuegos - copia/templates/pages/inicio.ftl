<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">

<head>
    [@cms.page /]
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    [#-- Access from the page's content: The page's 'title' OR if non-existing, the page's node name. --]
    <title>
        ${content.title!content.@name}
    </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js'></script>
</head>

<body>
    <header>
        [#-- ****** main header ****** --]
        [@cms.area name="header" /]
    </header>
    <section>
        [#-- ****** main area ****** --]
        [@cms.area name="banner" /]
    </section>
    <section>
        [#-- ****** main area ****** --]
        [@cms.area name="main" /]
    </section>
    <footer>
        [#-- ****** footer area ****** --]
        [@cms.area name="footer" /]
    </footer>
</body>

</html>