<#if myString?has_content>
  <!-- Hacer algo si myString no es nulo -->
<#else>
  <!-- Hacer algo si myString es nulo -->
</#if>

<!-- Si la variable a la izquierda de ! está vacía o es nula, se intenta mostrar la de la derecha sucesivamente  -->
${content.keywords!content.title!content.@name}