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

        [#-- Step 8: We iterate the array of contactNodes --]
        [#list contactNodes as contactNode]

            [#-- Step 9: We print the contacts that have information, the rest we show a warning --]
            First name:
            [#if contactNode.firstName?has_content]
                ${contactNode.firstName}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Last name:
            [#if contactNode.familyName?has_content]
                ${contactNode.familyName}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Mobile number:
            [#if contactNode.mobileNumber?has_content]
                ${contactNode.mobileNumber}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Phone number:
            [#if contactNode.phoneNumber?has_content]
                ${contactNode.phoneNumber}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Email:
            [#if contactNode.email?has_content]
                ${contactNode.email}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

        [/#list]

        [#-- Step 7: Get a new array with all child nodes of type address --]
        [#assign addressNodes = cmsfn.children(mgnlContentNode, "address")]

        [#-- Step 8: We iterate the array of addressNodes --]
        [#list addressNodes as addressNode]

            [#-- Step 9: We print the address that have information, the rest we show a warning --]
            Street: 
            [#if addressNode.street?has_content]
                ${addressNode.street}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Postal code: 
            [#if addressNode.postalCode?has_content]
                ${addressNode.postalCode}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Country: 
            [#if addressNode.country?has_content]
                ${addressNode.country}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

            Province: 
            [#if addressNode.province?has_content]
                ${addressNode.province}<br>
            [#else]
                <span style="color: red;">Missing</span><br>
            [/#if]

        [/#list]

    [/#list]

[/#list]
