[#-- Step 1: We obtain the route of the node from which we want to work --]
[#assign workspaceNode = cmsfn.contentByPath("/", "${targetWorkspace}")!]

[#-- Step 2: From the route we take the children nodes of type news --]
[#assign childrenNodeType = cmsfn.children(workspaceNode, "news")]

[#-- Step 3: Invertives the order of the news array --]
[#assign newsOrderReversed = childrenNodeType?reverse]

[#-- Step 4: We iterate the inverted array --]
[#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]

    [#-- Step 5: Get a new array with all child nodes of type mgnl:contentNode --]
    [#assign mgnlContentNodes = cmsfn.children(childNode, "mgnl:contentNode")]

    [#-- Step 6: We iterate the inverted array of mgnlContentNodes --]
    [#list mgnlContentNodes as mgnlContentNode]
        
        [#-- Step 7: Get a new array with all child nodes of type contact --]
        [#assign contactNodes = cmsfn.children(mgnlContentNode, "contact")]
        
        [#-- Step 8: Get a new array with all child nodes of type contact --]
        [#list contactNodes as contactNode]

            [#if contactNode.firstName?has_content]
                First Name: ${contactNode.firstName}<br>
            [#else]
                First Name: ${contactNode.firstName}<br>
            [/#if]

            First Name: ${contactNode.firstName}<br>
            Last Name: ${contactNode.familyName}<br>
            Mobile Number: ${contactNode.mobileNumber}<br>
            Phone Number: ${contactNode.phoneNumber}<br>
            Email: ${contactNode.email}<br>

        [/#list]

        [#-- Step 7: Get a new array with all child nodes of type contact --]
        [#assign contactNodes = cmsfn.children(mgnlContentNode, "contact")]
        
        [#-- Step 8: Get a new array with all child nodes of type contact --]
        [#list addressNodes as addressNode]

            [#if contactNode.firstName?has_content]
                Street: ${addressNode.street}
                <br />
            [#else]
                Street: 
                <br />
            [/#if]

            [#if contactNode.firstName?has_content]
                Postal Code: ${addressNode.postalCode}
                <br />
            [#else]
                Postal Code: 
                <br />
            [/#if]

            [#if contactNode.firstName?has_content]
                Country: ${addressNode.country}
                <br />
            [#else]
                Country: 
                <br />
            [/#if]

            [#if contactNode.firstName?has_content]
                Province: ${addressNode.province}
                <br />
            [#else]
                Province: 
                <br />
            [/#if]

        [/#list]

    [/#list]

[/#list]
