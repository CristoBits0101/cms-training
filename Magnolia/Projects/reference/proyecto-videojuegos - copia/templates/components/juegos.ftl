<hr>
<div>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Últimos Juegos</h1>
            </div>
        </div>
    </div>
<div class="container">
    [#-- ****** main content ****** --]
    [#setting locale="es_ES"]
    [#assign juegosRoot = cmsfn.contentByPath("/", "juegos-app")]
    [#assign juegos = cmsfn.children(juegosRoot, "mgnl:content")]
    [#assign juegos = juegos?reverse]
    [#-- Definir el límite como un parámetro --]
    [#assign limite = content.cantidadJuegos!3]
    <div class="row justify-content-center">
        [#list juegos[0..(limite-1)] as juego]
        <div class="col-md-4 mt-4">
            <div class="card">
                [#assign asset = damfn.getAsset(juego.imagen)!]
                <img class="card-img-top" src="${asset.link}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">
                        ${juego.titulo}
                    </h5>
                    <p class="card-text">
                        ${juego.categoria}
                    </p>
                    <p class="card-text">
                        ${juego.consola}
                    </p>
                    <p class="card-text"><small class="text-muted">
                            ${juego.fechaPublicacion?string["dd/M/yyyy"]}
                        </small></p>
                </div>
            </div>
        </div>
        [/#list]
    </div>
</div>
</div>
<hr>