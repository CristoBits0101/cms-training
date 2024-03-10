[#-- We create the portalNavigation macro and pass parentPage as an argument, which is the node from where it will start --]
[#macro portalNavigationBar targetNode]

        <ul>

            [#-- In each iteration, it retrieves all children of type 'mgnl page' from the targetNode and stores them in the 'childNode' variable --]
            [#list cmsfn.children(targetNode, "mgnl:page") as childNode]

                [#-- Creates the link to the child node of type page --]
                <li><a href="${cmsfn.link(childNode)!}">${childNode.title!childNode.@name}</a></li>

            [/#list]

        </ul>

[/#macro]
