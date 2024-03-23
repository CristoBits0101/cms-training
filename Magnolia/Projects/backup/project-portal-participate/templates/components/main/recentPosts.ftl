[#-- Import the getContent macro --]
[#include "/project-portal-participate/templates/macros/getContent.ftl"]

<h2>Recent Posts</h2>

<section class="containerPortalHome">

    [#--  We check that the publisher entered the conditions necessary to display the content you want --]
    [#if content.targetWorkspace?has_content]

        [#-- We call the macro function to try to obtain the requested content --]
        [@getContent content.folderName content.targetWorkspace /]

        [#-- If newsOrderReversed is null, the conditional won't execute, skipping the exception error --]
        [#if newsOrderReversed??]

            [#-- List the collection and store a node type in childnode at each iteration --]
            [#list newsOrderReversed[0..(content.newsNumber!3)-1] as childNode]

                [#-- Get the children jcrNode --]
                [#assign jcrNode = cmsfn.asJCRNode(childNode)]

                [#-- Get the jcrNode UUID --]
                [#assign uuid = jcrNode.getIdentifier()]

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
                            [#if childNode.message?has_content]
                                <p>${childNode.message}</p>
                            [#else]
                                <p>Article without description...</p>
                            [/#if]
                        </div>

                        [#-- Card body body --]
                        <div class="card-body-body">
                            <ul>
                                [#if childNode.starts?has_content]
                                    <li><span>🎊</span> ${childNode.starts}</li>
                                [#else]
                                    <li><span>🎊</span> Unspecified beginning</li>
                                [/#if]
                                [#if childNode.starts?has_content]
                                    <li><span>🚧</span> ${childNode.ends}</li>
                                [#else]
                                    <li><span>🚧</span> Unspecified ending</li>
                                [/#if]
                                [#if childNode.starts?has_content]
                                    <li><span>📍</span> ${childNode.location}</li>
                                [#else]
                                    <li><span>📍</span> Unspecified location</li>
                                [/#if]
                            </ul>
                        </div>
                    </div>

                    [#-- Card footer --]
                    <div class="card-footer">
                        <button>
                        <a href="">Learn more</a>
                            <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M647-440H160v-80h487L423-744l57-56 320 320-320 320-57-56 224-224Z"/
                                <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2">
                                </polygon>
                            </svg>
                        </button>
                    </div>
                </article>
            [/#list]
        [/#if]
    [/#if]
</section>
