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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js'></script>
</head>

<body>
    <header>
        [#-- ****** main header ****** --]
        [@cms.area name="header" /]
    </header>
    <section>
        <div class="container">
            <div class="mt-5">
                <h1 class="text-center">Noticias</h1>
            </div>
            [#-- ****** main content ****** --]
            [#setting locale="es_ES"]
            [#assign noticiasRoot = cmsfn.contentByPath("/", "noticias-app")]
            [#assign noticias = cmsfn.children(noticiasRoot, "mgnl:content")]
            [#assign noticias = noticias?reverse]
            <div class="row ">
                [#list noticias as noticia]
                [#assign jcrNode = cmsfn.asJCRNode(noticia)]
                [#assign uuid = jcrNode.getIdentifier()]
                <div class="col-md-4 mt-4">
                    <div class="card h-100">
                        [#assign asset = damfn.getAsset(noticia.imagen)!]
                        <img class="card-img-top" src="${asset.link}" alt="Card image cap">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">
                                ${noticia.titulo!}
                            </h5>
                            <p class="card-text">
                                ${noticia.resumen!}
                            </p>
                            <div class="mt-auto">
                                <p class="card-text"><small class="text-muted">
                                        ${noticia.fechaPublicacion?string["EEEE d 'de' MMMM 'del' yyyy"]?cap_first}
                                    </small></p>
                                [#assign nodoMain = cmsfn.parent(content)]
                                [#assign nodoHeader = nodoMain.header]
                                [#assign target = cmsfn.contentById(nodoHeader.infoNoticiaLink)!]
                                [#if target?has_content && !cmsfn.asJCRNode(target).hasProperty("mgnl:deleted")]
                                [#assign link = cmsfn.link(target)!]
                                [/#if]
                                <a href="${link}?uuid=${uuid}" class="btn btn-primary">Leer Noticia</a><br>
                            </div>
                        </div>
                    </div>
                </div>
                [/#list]
            </div>
        </div>
    </section>
    <footer>
        [#-- ****** footer area ****** --]
        [@cms.area name="footer" /]
    </footer>
</body>

</html>