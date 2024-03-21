<p>
    [#if content.url?has_content]
        [#-- We obtain the page identifier --]
        [#assign targetPage = cmsfn.contentById(content.url)!]

        [#-- We print the link to the identifier --]
        <a href="${cmsfn.link(targetPage)!}" target="_blank">

            [#-- Link message --]
            ${content.linkMessage!"Learn more"}
        
        </a>
    [/#if]
</p>