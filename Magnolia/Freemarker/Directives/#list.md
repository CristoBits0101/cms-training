<!-- Se utiliza para iterar sobre colecciones como listas o conjuntos que extienden de la interfaz java.util.Collection en Java -->

<!--
  Este código itera sobre la colección devuelta por javaClass.getSomeCollection().
  Para cada elemento en la colección, se ejecuta el bloque de código dentro de <li>...</li>.
  ${elem.title!} se utiliza para imprimir el atributo title del elemento actual.
  El operador ! se utiliza para proporcionar un valor predeterminado en caso de que title sea nulo o vacío.
-->
[#list javaClass.getSomeCollection() as elem]
    <li>${elem.title!}</li>
[/#list]

<!-- 
  Este código maneja la posibilidad de que la colección devuelta por javaClass.getSomeCollection() esté vacía.
  La directiva <#list> permite el uso de la cláusula [/#else], que se ejecuta cuando la colección está vacía.
-->
[#list javaClass.getSomeCollection() ]
    // empty collection save.
    [#items as elem]
      <li>${elem.title!}</li>
    [/#items]
[#else]
  //executed on empty collection (else is optional)
[/#list]