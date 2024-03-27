[#-- Recent content --]
[#macro getCards targetWorkspace=""]

    [#-- We check if the specified workspace from which to retrieve the content was indicated --]
    [#if targetWorkspace?has_content && targetWorkspace == "news"]

        [#-- We take the reference of the parent node from which we want to iterate over the children --]
        [#assign workspaceNode = cmsfn.contentByPath("/", "${targetWorkspace}")!]

        [#-- We store in a collection all the children with the node type news --]
        [#assign childrenNodeType = cmsfn.children(workspaceNode, "news")]

        [#-- We reverse the order of the collection to display the news from the latest publication to the oldest --]
        [#assign newsOrderReversed = childrenNodeType?reverse]

        [#-- If newsOrderReversed is null, the conditional won't execute, skipping the exception error --]
        [#if newsOrderReversed??]

            [#-- List the collection and store a node type in childnode at each iteration --]
            [#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]

                [#-- Card container --]
                <article class="card-container">

                    [#-- Card header --]
                    <div class="card-header">

                        [#-- Card imagen --]
                        [#if childNode.imageLink?has_content]

                            [#assign myAsset = damfn.getAsset(childNode.imageLink)]
                            <img src="${myAsset.link}" alt="${childNode.title}" title="${childNode.title}">

                        [#-- Default imagen --]
                        [#else]

                            [#assign myAsset = damfn.getAsset("jcr:874a154f-93a8-4a73-8132-580fbdb87cb1")]
                            <img src="${myAsset.link}" alt="Facebook" title="Facebook" class="list-image">

                        [/#if]

                    </div>

                    [#-- Card body --]
                    <div class="card-body">

                        [#-- Card body head --]
                        <div class="card-body-head">
                            <h3>${childNode.title}</h3>
                            ${childNode.message!"<p>The news article does not have a description...</p>"}
                        </div>

                        [#-- Card body body --]
                        <div class="card-body-body">
                            <ul>
                                <li><span>🎊</span>${childNode.starts!"Unspecified beginning"}</li>
                                <li><span>🚧</span>${childNode.ends!"Unspecified ending"}</li>
                                <li><span>📍</span>${childNode.location!"Unspecified location"}</li>
                            </ul>
                        </div>
                    </div>

                    [#-- From each news item, we retrieve child nodes of type mgnl:contentNode --]
                    [#assign mgnlContentNodes = cmsfn.children(childNode, "mgnl:contentNode")]

                    [#-- Inicializar allContactNodes como una lista vacía antes de entrar en el bucle --]
                    [#assign allContacts = []]
                    [#assign allAddresses = []]

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

                        // We empty the contacts and addresses from the previous news.
                        let newsContacts_${childNode.@name} = [];
                        let newsAddresses_${childNode.@name} = [];

                        // We go through the contacts of the news.
                        [#list allContacts as contact]
                            
                            // We store them in the JavaScript array.
                            newsContacts_${childNode.@name}.push({
                                firstName: "${contact.firstName!'Unspecified first name'}",
                                familyName: "${contact.familyName!''}",
                                email: "${contact.email!'Unspecified email'}",
                                mobileNumber: "${contact.mobileNumber!''}",
                                phoneNumber: "${contact.phoneNumber!'Unspecified phone number'}"
                            });
                            
                        [/#list]

                        // We go through the address of the news.
                        [#list allAddresses as address]

                            // We store them in the JavaScript array.
                            newsAddresses_${childNode.@name}.push({
                                street: "${address.street!'Unspecified street'}",
                                province: "${address.province!'Unspecified province'}",
                                postalCode: "${address.postalCode!'Unspecified postal code'}",
                                country: "${address.country!'Unspecified country'}"
                            });

                        [/#list]

                    </script>

                    [#-- Card footer --]
                    <div class="card-footer">
                        <button class="button-card" onclick="newsDetails(newsContacts_${childNode.@name}, newsAddresses_${childNode.@name})">
                            Detailed news
                            <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M647-440H160v-80h487L423-744l57-56 320 320-320 320-57-56 224-224Z"/
                                <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2">
                                </polygon>
                            </svg>
                        </button>

                    </div>
                </article>
            [/#list]
        [/#if]

        [#-- The container renders the news details and closing the window deletes the news --]
        <div id="show-details">
            <button class="hideNewsDetails" onclick="hideNewsDetails()">X</button>
        </div>

    [#-- We check if the specified workspace from which to retrieve the content was indicated --]
    [#elseif targetWorkspace?has_content && targetWorkspace == "topics"]

        [#-- We take the reference of the parent node from which we want to iterate over the children --]
        [#assign workspaceNode = cmsfn.contentByPath("/", "${targetWorkspace}")!]
        
        [#-- We store in a collection all the children with the node type news --]
        [#assign childrenNodeType = cmsfn.children(workspaceNode, "topics")]

        [#-- We reverse the order of the collection to display the news from the latest publication to the oldest --]
        [#assign newsOrderReversed = childrenNodeType?reverse]

    [/#if]

[/#macro]
