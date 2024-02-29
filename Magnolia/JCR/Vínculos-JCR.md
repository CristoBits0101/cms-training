# Crear un enlace a un nodo JCR:

someLinkField:
  $type: linkField
  label: Target Node
  description: Link to a node of a certain workspace
  <!-- Este código crea un campo de enlace que permite a los autores vincularse a nodos en el espacio de trabajo "contacts" en JCR -->
  datasource:
    $type: jcrDatasource
    workspace: contacts

# 2. Campos de vínculo específicos:

<!-- Campo de enlace de página -->
targetPageLink:
  $type: pageLinkField
  label: Page Link
  description: Choose a page to link to.

<!-- Campo de enlace de imagen -->
imageLink:
  $type: damLinkField
  label: Image Link
  description: Choose an Image from the Assets App.

<!-- Campo de enlace JSON -->
nbaPlayers:
  $type: jsonLinkField
  ...

# 3. Comportamiento de vinculación: ID o ruta:

<!-- 
    Configuración de un campo para vincular por ID.
    Al configurar el campo converterClass, puedes cambiar entre vincular por ID o por ruta.
-->
converterClass: info.magnolia.ui.editor.converter.JcrNodeToPathConverter

# 4. Resolver un vínculo: vincular el nodo JCR:

<!-- Utilice  TemplatingFunctions : obtenga el  contenido por ruta -->
cmsfn.contentByPath(pathValue)

public ContentMap contentByPath(String path) {
    return contentByPath(path, RepositoryConstants.WEBSITE);
}

<!-- Utilice  TemplatingFunctions : obtenga el  contenido por ID -->
cmsfn.contentById(id)

public ContentMap contentById(String id) {
    return contentById(id, RepositoryConstants.WEBSITE);
}

<!-- Este código utiliza la función contentById para resolver un vínculo y obtener el contenido por ID -->
[#assign targetPage = cmsfn.contentById(content.targetPageLink)!]

# 5. Enlace web a un nodo JCR:

<!-- Utilice  TemplatingFunctions : cree un  enlace web  a un nodo JCR -->
cmsfn.link(node)

public String link(Node content) {
    return content == null ? null : LinkUtil.createLink(content);
}

<!-- Aquí se crea un enlace web a un nodo JCR utilizando la función cmsfn.link y se accede a propiedades del nodo, como el título -->
<h4 class="chapter-head"><a href="${cmsfn.link(targetPage)!}">${targetPage.title!targetPage.@name}</a></h4>
