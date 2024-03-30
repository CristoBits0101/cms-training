<!-- Ejemplo utilizando objetos y funciones de Magnolia -->

<!-- Acceder al nodo renderizado actual (content) -->
<p>Contenido del nodo actual: ${content.text!}</p>

<!-- Acceder a la definición de la plantilla actual (def) -->
<p>Nivel de encabezado definido en la plantilla: ${def.parameters.headingLevel!}</p>

<!-- Acceder a la clase de modelo asociada al nodo (model) -->
<p>Últimas noticias del modelo: ${model.getLatestNews()!}</p>

<!-- Acceder al contexto web actual (ctx) -->
<p>Nombre de usuario actual: ${ctx.user.name!}</p>

<!-- Acceder al estado de agregación actual (state) -->
<p>Idioma actual: ${state.locale!}</p>

<!-- Utilizar internacionalización (i18n) -->
<p>Etiqueta internacionalizada: ${i18n['link.readon']}</p>

<!-- Ejemplo utilizando funciones de cmsfn -->
<#list cmsfn.children(node) as child>
    <li><a href="${cmsfn.link(child)!}">${child.title!child.@name}</a></li>
</#list>

<!-- Ejemplo utilizando funciones de damfn -->
<#assign myAsset = damfn.getAsset("jcr:324aa329-7acc-4a21-a05e-d5f9b69bf7e4")>
<img src="${damfn.getAssetLink("jcr:324aa329-7acc-4a21-a05e-d5f9b69bf7e4", "small-square")}"/>

<!-- Ejemplo utilizando funciones de sitefn -->
<#assign currentSiteDefinition = sitefn.site(content)>
<p>Título del sitio actual: ${currentSiteDefinition.title!}</p>
<#assign currentTheme = sitefn.theme(currentSiteDefinition)>
<p>Archivos JS asociados con el tema: ${currentTheme.jsFiles!}</p>

<!-- Ejemplo utilizando funciones de searchfn -->
<#assign searchResults = searchfn.searchPages('hello', '/home') />
<#if searchResults?has_content>
    <#list searchResults as item>
        <a href="${cmsfn.link(item)}">
            <h4>${item.title!}</h4>
            <p>${item.excerpt!}</p>
        </a>
    </#list>
</#if>

<!-- Ejemplo utilizando funciones de imgfn -->
<img alt="Usando objeto imgfn" src="${imgfn.getImageVariationLinkFromBinary(content.image, "small-square")}">

<!-- Ejemplo utilizando funciones de restfn -->
<#assign vimeoVideos = restfn.call("vimeoClient", info.magnolia.vimeogration.clientVimeoService.class, "getVideosForChannel", "staffpicks")>
<#list vimeoVideos as video>
    <p>Video: ${video.title}</p>
</#list>

<!-- Ejemplo utilizando funciones de catfn -->
<#assign allCategories = catfn.getCategories(cmsfn.asJCRNode(content))>
<p>Esta página pertenece a las categorías: 
<#list cmsfn.asContentMapList(allCategories) as cat>
    ${cat.name},
</#list></p>
