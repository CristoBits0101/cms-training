# ${cmsfn.language()}

Obtendrá el idioma actual del sitio web.

<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

# ${ctx.contextPath}

Si la URL de la aplicación web es https://www.ejemplo.com/app -> la ruta de contexto sería /app.

/my-module/webresources/style.css -> ${ctx.contextPath}/.resources/my-module/webresources/style.css
