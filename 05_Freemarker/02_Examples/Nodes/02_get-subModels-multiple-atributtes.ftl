[#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]

    [#-- From each news item, we retrieve child nodes of type mgnl:contentNode --]
    [#assign mgnlContentNodes = cmsfn.children(childNode, "mgnl:contentNode")]

    [#-- Inicializar allContactNodes como una lista vacía antes de entrar en el bucle --]
    [#assign allContactNodes = []]
    [#assign allAddressesNodes = []]

        [#list mgnlContentNodes as mgnlContentNode]

        [#-- Stores all folders with contact node type --]
        [#assign contacts = cmsfn.children(mgnlContentNode, "contact")]

        [#-- Stores all folders with address node type --]
        [#assign addresses = cmsfn.children(mgnlContentNode, "address")]

        [#-- Stores the contact attributes of each news item in an array --]
        [#assign allContacts += contacts]

        [#-- Stores the addresses attributes of each news item in an array --]
        [#assign allAddresses += addresses]

    [/#list]

    <script>

        [#list allContacts as contact]
            window.contactArray = window.contactArray || ${contact.firstName!""}
            window.contactArray = window.contactArray || ${contact.familyName!""}
            window.contactArray = window.contactArray || ${contact.email!""}
            window.contactArray = window.contactArray || ${contact.mobileNumber!""}
            window.contactArray = window.contactArray || ${contact.phoneNumber!""}
        [/#list]
        
        [#list allAddresses as address]
            window.contactArray = window.contactArray || ${contact.firstName!""}
            window.contactArray = window.contactArray || ${contact.familyName!""}
            window.contactArray = window.contactArray || ${contact.email!""}
            window.contactArray = window.contactArray || ${contact.mobileNumber!""}
            window.contactArray = window.contactArray || ${contact.phoneNumber!""}
        [/#list]

    </script>

[#/list]
