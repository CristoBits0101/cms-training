<h4>${content.title}</h4>
<ul>
    <li>
        [#if content.page1?has_content]

            [#-- We obtain the page identifier --]
            [#assign targetPage1 = cmsfn.contentById(content.page1)!]

            [#-- We print the link to the identifier --]
            <a href="${cmsfn.link(targetPage1)!}" target="_blank">

                [#-- Link message --]
                ${content.linkMessage1!targetPage1.title!targetPage1.@name}

            </a>
        [/#if]
    </li>
    <li>
        [#if content.page2?has_content]

            [#-- We obtain the page identifier --]
            [#assign targetPage2 = cmsfn.contentById(content.page2)!]

            [#-- We print the link to the identifier --]
            <a href="${cmsfn.link(targetPage2)!}" target="_blank">

                [#-- Link message --]
                ${content.linkMessage2!targetPage2.title!targetPage2.@name}

            </a>
        [/#if]
    </li>
    <li>
        [#if content.page3?has_content]

            [#-- We obtain the page identifier --]
            [#assign targetPage3 = cmsfn.contentById(content.page3)!]

            [#-- We print the link to the identifier --]
            <a href="${cmsfn.link(targetPage3)!}" target="_blank">

                [#-- Link message --]
                ${content.linkMessage3!targetPage3.title!targetPage3.@name}

            </a>
        [/#if]
    </li>
    <li>
        [#if content.page4?has_content]

            [#-- We obtain the page identifier --]
            [#assign targetPage4 = cmsfn.contentById(content.page4)!]

            [#-- We print the link to the identifier --]
            <a href="${cmsfn.link(targetPage4)!}" target="_blank">

                [#-- Link message --]
                ${content.linkMessage4!targetPage4.title!targetPage4.@name}

            </a>
        [/#if]
    </li>
    <li>
        [#if content.page5?has_content]

            [#-- We obtain the page identifier --]
            [#assign targetPage5 = cmsfn.contentById(content.page5)!]

            [#-- We print the link to the identifier --]
            <a href="${cmsfn.link(targetPage5)!}" target="_blank">

                [#-- Link message --]
                ${content.linkMessage5!targetPage5.title!targetPage5.@name}

            </a>
        [/#if]
    </li>
</ul>
