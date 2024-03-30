[#assign uuidJuego = ctx.getParameter("uuid")!]
[#if uuidJuego?? && uuidJuego != ""]
    <div class="container">
        [#-- ****** main content ****** --]
        [#setting locale="es_ES"]
        [#assign juegosRoot = cmsfn.contentByPath("/", "juegos-app")]
        [#assign juegos = cmsfn.children(juegosRoot, "mgnl:content")]
        [#assign juego = (juegos?filter(n -> cmsfn.asJCRNode(n).getIdentifier() == uuidJuego))[0]]
        [#if juego??]
            <div class="row">
                <div class="col-md-12 mt-4">
                    <div class="card">
                        [#assign asset = damfn.getAsset(juego.imagen)!]
                        <img class="card-img-top mx-auto d-block mt-3" src="${asset.link}" alt="Card image cap" style="width: 50%; height: auto; border-radius: 5px;">
                        <div class="card-body text-center">
                            <h1 class="card-title mt-3 mb-3">
                                ${juego.titulo!}
                            </h1><hr>
                            <p class="card-text">
                                ${juego.descripcion!}
                            </p>
                            <p class="card-text"><small class="text-muted">
                                    ${juego.fechaPublicacion?string["EEEE d 'de' MMMM 'del' yyyy"]?cap_first}
                                </small></p>
                            
                        </div>
                    </div>
                </div>
            </div>
        [#else]
            <p>No se encontró ningun juego con el UUID proporcionado.</p>
        [/#if]
    </div>
[#else]
    <p>No se ha proporcionado un UUID de juego todavia.</p>
[/#if]