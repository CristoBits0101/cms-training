[#assign targetPageLink = content.targetPageLink!]
[#if targetPageLink?has_content]
[#assign targetPage = cmsfn.contentById(content.targetPageLink)!]
[#if targetPage?has_content]
<div class="default-teaser">
  [#-- Create target page link here. Use its title or page name as its text. --]
  [#-- Access abstract content of the target page. --]
  [#-- An optional possible extends: Trying also to get an image from the target page. --]
  <p><a href="${cmsfn.link(targetPage)!}">${i18n['teaser.link.readon']}
</a></p>
</div>
[#elseif cmsfn.editMode]
<div>Target Page could not be resolved.</div>
[/#if]
[#elseif cmsfn.editMode]
<div>No target page has been chosen, please open dialog and do so.</div>
[/#if]
[#-- Create target page link here. Use its title or page name as its text. --]
<h4 class="chapter-head">
  <a href="${cmsfn.link(targetPage)!}">
    ${targetPage.title!targetPage.@name}
  </a>
</h4>
[#-- Access abstract content of the target page. --]
<p>
  ${targetPage.abstract!}
</p>
[#-- An optional possible extends: Trying also to get an image from the target page. --]

[#--  El objetivo es añadir un enlace a la página especificada por si el usuario quiere leer más sobre el tema, redireccionarlo  --]

[#-- Asignación del valor de content.targetPageLink a la variable targetPageLink, si está definido. --]
[#assign targetPageLink = content.targetPageLink!]

[#-- Verificación de la existencia de targetPageLink. --]
[#if targetPageLink?has_content]

    [#-- Asignación del contenido del nodo JCR vinculado a targetPageLink a la variable targetPage. --]
    [#assign targetPage = cmsfn.contentById(content.targetPageLink)!]

    [#-- Verificación de la existencia de targetPage. --]
    [#if targetPage?has_content]

        <div class="default-teaser">
            [#-- Crear enlace a la página de destino usando su título o nombre de página como texto --]
            <h4 class="chapter-head">
              <a href="${cmsfn.link(targetPage)!}">${targetPage.title!targetPage.@name}</a>
            </h4>

            [#-- Acceder al contenido abstracto de la página de destino --]
            <p>${targetPage.abstract!}</p>

            [#-- Un posible caso extendido opcional: Intentar obtener también una imagen de la página de destino. --]
            <p><a href="${cmsfn.link(targetPage)!}">Read On</a></p>
            <p><a href="${cmsfn.link(targetPage)!}">${i18n['teaser.link.readon']}</a></p>
        </div>

    [#elseif cmsfn.editMode]

        [#-- Si targetPage no tiene contenido y estamos en modo de edición, mostrar un mensaje de error. --]
        <div>Target Page could not be resolved.</div>

    [/#if]

[#else if cmsfn.editMode]

    [#-- Si targetPageLink no tiene contenido y estamos en modo de edición, mostrar un mensaje de sugerencia. --]
    <div>No target page has been chosen, please open dialog and do so.</div>

[/#if]
