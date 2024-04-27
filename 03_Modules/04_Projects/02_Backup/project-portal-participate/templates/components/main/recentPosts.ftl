[#-- Import the getContent macro --]
[#include "/project-portal-participate/templates/macros/getCards.ftl"]

[#-- Main element subtitle --]
[#if content.title?has_content]
    <h2>${content.title}</h2>
[/#if]

[#-- Main element subtitle --]
[#if content.subTitle?has_content]
    <h3>${content.subTitle}</h3>
[/#if]

[#-- News container --]
<section class="containerPortalHome">

    [#--  We check that the publisher entered the conditions necessary to display the content you want --]
    [#if content.targetWorkspace?has_content]

        [#-- We call the macro function to try to obtain the requested content --]
        [@getCards content.targetWorkspace /]

    [/#if]
    
</section>