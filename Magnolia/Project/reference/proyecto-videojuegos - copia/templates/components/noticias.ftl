<div>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Últimas Noticias</h1>
            </div>
        </div>
    </div>
    <div class="container">
        [#-- ****** main content ****** --]
        [#setting locale="es_ES"]
        [#assign noticiasRoot = cmsfn.contentByPath("/", "noticias-app")]
        [#assign noticias = cmsfn.children(noticiasRoot, "mgnl:content")]
        [#assign noticias = noticias?reverse]
        [#-- Definir el límite como un parámetro --]
        [#assign limite = content.cantidadNoticias!3]
        <div class="row ">
            [#list noticias[0..(limite-1)]
            as noticia]
            [#-- Determinar la clase de columna --]
            [#if limite == 1]
            [#assign colClass = "col-md-12"]
            [#elseif limite == 2]
            [#assign colClass = "col-md-6"]
            [#else]
            [#assign colClass = "col-md-4"]
            [/#if]
            <div class="${colClass} mt-4">
                <div class="card">
                    [#assign asset = damfn.getAsset(noticia.imagen)!]
                    <img class="card-img-top" src="${asset.link}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">
                            ${noticia.titulo}
                        </h5>
                        <p class="card-text">
                            ${noticia.resumen}
                        </p>
                        <p class="card-text"><small class="text-muted">
                                ${noticia.fechaPublicacion?string["EEEE d 'de' MMMM 'del' yyyy"]?cap_first}
                            </small></p>

                        <a href="infoNoticia.ftl?id=${noticia.id}" class="btn btn-primary">Leer Noticia</a>
                    </div>
                </div>
            </div>
            [/#list]
        </div>
    </div>
</div>