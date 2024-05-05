[#if ctx.user.name != "anonymous"]

    [#-- We get the user --]
    [#assign user = ctx.user]

    [#-- We get your identifier --]
    [#assign userUUID = user.getIdentifier()]

    [#-- We extract the user data from workspace users --]
    [#assign characteristics = cmsfn.contentById(userUUID, "users")]

    [#-- If the user has added interests --]
    [#if characteristics.interests?has_content]

        [#-- We store the user's interests --]
        [#assign interests = characteristics.interests]

        [#-- We take the user's interests --]
        [#assign interests = characteristics.interests?split("__")]

        [#-- Column title --]
        <h2>${content.highlightedTopicsTitle}</h2>

        [#-- We check if the specified workspace from which to retrieve the content was indicated --]
        [#assign workspaceNode = cmsfn.contentByPath("/", "products")!]

        [#-- We take the reference of the parent node from which we want to iterate over the children --]
        [#assign childrenNodeType = cmsfn.children(workspaceNode, "products")]

        [#-- We store in a collection all the children with the node type products --]
        [#assign contentOrderReversed = childrenNodeType?reverse]

        [#-- We reverse the order of the collection to display the news from the latest publication to the oldest --]
        [#if content.amountContentDisplay?has_content && content.amountContentDisplay > 0]

            [#-- We check that the user has entered a value for the number of news items they want to see --]
            [#if contentOrderReversed?? && (contentOrderReversed?size == content.amountContentDisplay) || (contentOrderReversed?size > content.amountContentDisplay) && (contentOrderReversed?size > 0)]

                [#-- If contentOrderReversed is null, the conditional won't execute, skipping the exception error --]
                [#list contentOrderReversed[0..(content.amountContentDisplay)-1] as childNode]

                    [#-- We iterate on the user's interests --]
                    [#list interests as interest]
                        
                        [#-- We compare whether the tag of the child node matches the interest --]
                        [#if childNode.category == interest]

                            <section>
                                <article>
                                    <h3>${cmsfn.wrapForI18n(childNode).title!}</h3>
                                </article>
                                <button class="animated-button">
                                    <b>${content.buttonText}</b>
                                </button>
                            </section>

                            [#-- Confirm match --]
                            [#assign coincidence = 1]

                        [/#if]
                    [/#list]
                [/#list]

                [#-- If there was no coincidence of interests --]
                [#if coincidence != 1]

                    [#-- If the user's interests do not match the products --]
                    [#list contentOrderReversed[0..(content.amountContentDisplay)-1] as childNode]
                        <section>
                            <article>
                                <h3>${cmsfn.wrapForI18n(childNode).title!}</h3>
                            </article>
                            <button class="animated-button">
                                <b>${content.buttonText}</b>
                            </button>
                        </section>
                    [/#list]

                [/#if]
            [/#if]
        [/#if]

    [#-- If the user has not added interests --]
    [#else]

        [#-- Column title --]
        <h2>${content.highlightedTopicsTitle}</h2>

        [#-- We check if the specified workspace from which to retrieve the content was indicated --]
        [#assign workspaceNode = cmsfn.contentByPath("/", "products")!]

        [#-- We take the reference of the parent node from which we want to iterate over the children --]
        [#assign childrenNodeType = cmsfn.children(workspaceNode, "products")]

        [#-- We store in a collection all the children with the node type products --]
        [#assign contentOrderReversed = childrenNodeType?reverse]

        [#-- We reverse the order of the collection to display the news from the latest publication to the oldest --]
        [#if content.amountContentDisplay?has_content && content.amountContentDisplay > 0]

            [#-- We check that the user has entered a value for the number of news items they want to see --]
            [#if contentOrderReversed?? && (contentOrderReversed?size == content.amountContentDisplay) || (contentOrderReversed?size > content.amountContentDisplay) && (contentOrderReversed?size > 0)]

                [#-- If contentOrderReversed is null, the conditional won't execute, skipping the exception error --]
                [#list contentOrderReversed[0..(content.amountContentDisplay)-1] as childNode]
                    <section>
                        <article>
                            <h3>${cmsfn.wrapForI18n(childNode).title!}</h3>
                        </article>
                        <button class="animated-button">
                            <b>${content.buttonText}</b>
                        </button>
                    </section>
                [/#list]
            [/#if]
        [/#if]
    [/#if]
[/#if]