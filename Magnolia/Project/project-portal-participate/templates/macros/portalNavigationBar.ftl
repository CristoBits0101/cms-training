[#-- 
    - subpageNavigation ->     macroName: Used to invoke the macro.
           - parentPage -> macroArgument: It is used to indicate the node from which to start.
--]
[#macro portalNavigation parentPage]
    
    [#-- navfn.navItems(parentPage): It is a function: Get the child nodes --]
    [#assign navItems = navfn.navItems(parentPage)]

        <ul>
            [#list navItems as navItem]
                <li>
                    <a href="${cmsfn.link(navItem)!}">${navItem.navigationTitle!navItem.title!navItem.@name}</a>
                    [#if navfn.hasChildren(navItem)]
                        [@portalNavigation  navItem /]
                    [/#if]
                </li>
            [/#list]
        </ul>

[/#macro]
