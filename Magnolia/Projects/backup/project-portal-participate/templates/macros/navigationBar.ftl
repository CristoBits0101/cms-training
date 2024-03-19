[#-- We create the portalNavigation macro and pass parentPage as an argument, which is the node from where it will start --]
[#macro navigationBar targetNode assetIcon=""]

    <nav>
        <ul>
        
            [#-- If an icon was included, the name is replaced by the icon --]
            [#if assetIcon?has_content]
                <li>
                    <a href="${cmsfn.link(targetNode)!}">
                        <img class="asset-logo" src="${assetIcon.link}">
                    </a>
                </li>
            [#-- Otherwise, you enter the name of the image, and failing that, its title --]
            [#else]
                <li>
                    <a href="${cmsfn.link(targetNode)!}">${targetNode.@name!targetNode.title}</a>
                </li>
            [/#if]

            [#-- In each iteration, it retrieves all children of type 'mgnl page' from the targetNode and stores them in the 'childNode' variable --]
            [#list cmsfn.children(targetNode, "mgnl:page") as childNode]

                [#-- Creates the link to the child node of type page using your name or title --]
                <li><a href="${cmsfn.link(childNode)!}">${childNode.@name!childNode.title}</a></li>

            [/#list]

        </ul>
    </nav>

[/#macro]
