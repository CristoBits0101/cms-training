[#-- Import the getContent macro --]
[#include "/project-portal-participate/templates/macros/getCards.ftl"]

[#-- Main element title --]
<h2>Recent Posts</h2>

[#-- News container --]
<section class="containerPortalHome">

    [#--  We check that the publisher entered the conditions necessary to display the content you want --]
    [#if content.targetWorkspace?has_content && content.targetWorkspace == "news"]

        [#-- We call the macro function to try to obtain the requested content --]
        [@getCards content.targetWorkspace /]

    [/#if]
    
</section>
