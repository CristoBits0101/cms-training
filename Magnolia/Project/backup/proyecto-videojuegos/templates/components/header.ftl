[#assign inicioPage = cmsfn.contentById(content.inicioLink)!]
[#assign noticiasPage = cmsfn.contentById(content.noticiasLink)!]
[#assign juegosPage = cmsfn.contentById(content.juegosLink)!]
[#assign infoNoticiaPage = cmsfn.contentById(content.infoNoticiaLink)!]

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${cmsfn.link(inicioPage)}">Videojuegos</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${cmsfn.link(inicioPage)}">Inicio</a>
        </li>
                <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${cmsfn.link(noticiasPage)}">Noticias</a>
        </li>
                <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${cmsfn.link(juegosPage)}">Juegos</a>
        </li>
      </ul>
      <form class="d-flex">
        <button class="btn btn-outline-success" type="submit">Login</button>
      </form>
    </div>
  </div>
</nav>