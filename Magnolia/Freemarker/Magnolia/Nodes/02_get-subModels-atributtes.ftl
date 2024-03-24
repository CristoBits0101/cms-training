[#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]
    [#-- From each news item, we retrieve child nodes of type mgnl:contentNode --]
    [#assign mgnlContentNodes = cmsfn.children(childNode, "mgnl:contentNode")]

    [#-- Inicializar allContactNodes como una lista vacía antes de entrar en el bucle --]
    [#assign allContactNodes = []]
    [#assign allAddressesNodes = []]

    [#list mgnlContentNodes as mgnlContentNode]

        [#-- From each mgnl:contentNode we fetch the child nodes of type contact --]
        [#assign contacts = cmsfn.children(mgnlContentNode, "contact")]

        [#-- From each mgnl:contentNode we fetch the child nodes of type address --]
        [#assign addresses = cmsfn.children(mgnlContentNode, "address")]

        [#-- Agregar los nodos de contacto y dirección a las listas acumulativas --]
        [#assign allContactNodes = allContactNodes + contacts]
        [#assign allAddressesNodes = allAddressesNodes + addresses]

    [/#list]

    [#list allContactNodes as Contact]
        <script>alert("${Contact.firstName}")</script>
    [/#list]
[#/list]
