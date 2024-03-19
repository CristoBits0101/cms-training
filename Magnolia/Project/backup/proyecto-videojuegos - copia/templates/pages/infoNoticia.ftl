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
        [#-- Obtener el identificador de la noticia de la URL --]
        [#assign idNoticia = .request.parameter.id!]
        [#-- Buscar la noticia correspondiente --]
        [#assign noticiasRoot = cmsfn.contentByPath("/", "noticias-app")]
        [#assign noticias = cmsfn.children(noticiasRoot, "mgnl:content")]
        [#assign noticia = noticias?filter(noticia -> noticia.id == idNoticia)?first]
        [#if noticia??]
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-12">
                    <h1>
                        ${noticia.titulo}
                    </h1>
                    [#assign asset = damfn.getAsset(noticia.imagen)!]
                    <img src="${asset.link}" alt="${noticia.titulo}">
                    <p>
                        ${noticia.resumen}
                    </p>
                    <p><small class="text-muted">
                            ${noticia.fechaPublicacion?string["EEEE d 'de' MMMM 'del' yyyy"]?cap_first}
                        </small></p>
                </div>
            </div>
        </div>
        [#else]
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-12">
                    <h1>Noticia no encontrada</h1>
                    <p>La noticia que estás buscando no existe o ha sido eliminada.</p>
                </div>
            </div>
        </div>
        [/#if]
    </section>
    <footer>
        [#-- ****** footer area ****** --]
        [@cms.area name="footer" /]
    </footer>
</body>

</html>