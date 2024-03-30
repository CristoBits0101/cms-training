[#if content.url?has_content]
    [#-- We obtain the page identifier --]
    [#assign targetPage = cmsfn.contentById(jcr:20984dc5-5c2e-486b-a79a-00a59fb8759c)!]

    [#-- We print the link to the identifier --]
    <a href="${cmsfn.link(targetPage)!}" target="_blank">

        [#-- Link message --]
        ${content.linkMessage!"Learn more"}

    </a>
[/#if]
