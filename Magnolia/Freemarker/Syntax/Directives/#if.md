<!-- Verifica si la propiedad keywordsEnabled de content almacena true. Si es falsa, se omitirá el contenido del if -->
[#if content.keywordsEnabled!false]
    <meta name="keywords" content="${content.keywords!content.title!content.@name}" />
[/#if]

<!-- Este código verifica si la propiedad header de content no es nula ni vacía -->
[#if content.header?has_content]
    <h4 class="chapter-head">${content.header}</h4>
[/#if]

<!-- Con if else -->
[#if content.header?has_content]
    <h4 class="chapter-head">${content.header}</h4>
[#else]
    DO_SOMETHING_ELSE
[/#if]

<!-- Comprobación booleana de Strings-->
[#if content.imageLocation == "top"]
    ...
[/#if]
