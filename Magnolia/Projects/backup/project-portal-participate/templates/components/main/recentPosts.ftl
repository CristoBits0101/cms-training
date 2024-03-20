[#-- Import the getContent macro --]
[#include "/project-portal-participate/templates/macros/getContent.ftl"]

<h2>Recent Posts</h2>

<section class="containerPortalHome">

    [#--  We check that the publisher entered the conditions necessary to display the content you want --]
    [#if content.targetWorkspace?has_content && content.newsNumber?has_content]
        
        [#-- We call the macro function to try to obtain the requested content --]
        [@getContent content.folderName content.targetWorkspace content.newsNumber /]

        [#-- If newsOrderReversed is null, the conditional won't execute, skipping the exception error --]
        [#if newsOrderReversed??]

            [#-- List the collection and store a node type in childnode at each iteration --]
            [#list newsOrderReversed as childNode]

                [#-- Card container --]
                <article class="card-container">

                    [#-- Card header --]
                    <div class="card-header">
                    
                        [#-- Card imagen --]
                        [#if childNode.imageLink?has_content]

                            [#assign myAsset = damfn.getAsset(childNode.imageLink)]
                            <img src="${myAsset.link}" alt="${childNode.title}" title="${childNode.title}">

                        [#elseif childNode.imageLink?has_content]

                            [#-- Get the asset --]
                            [#assign assetUID = "jcr:20984dc5-5c2e-486b-a79a-00a59fb8759c"]
                            [#assign myAsset = damfn.getAsset(assetUID)]

                            [#-- Default imagen --]
                            <img src="${myAsset.link}" alt="Facebook" title="Facebook" class="list-image">

                        [/#if]

                    </div>

                    [#-- Card body --]
                    <div class="card-body">
                        <div class="card-body-head">
                            <h3>${childNode.title}</h3>
                            <p>${childNode.message}</p>
                        </div>
                        <div class="card-body-body">
                            [#if childNode.starts?has_content]
                                <ul>
                                    <li><span>🎊</span> ${childNode.starts}</li>
                                    <li><span>🚧</span> ${childNode.ends}</li>
                                    <li><span>📍</span> ${childNode.location}</li>
                                </ul>
                            [/#if]
                        </div>
                    </div>

                </article>
            [/#list]
        [/#if]
    [/#if]
</section>
