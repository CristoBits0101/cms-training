[#-- Import the navigation bar macro --]
[#include "/project-portal-participate/templates/macros/portalNavigationBar.ftl"]

[#-- Assigns to the variable targetNode the content of the node "/portal-participate" from the "website" workspace using the cmsfn.contentByPath function --]
[#assign targetNode = cmsfn.contentByPath("/portal-participate", "website")!]

[#-- We check if the variable has content and is not null --]
[#if targetNode?has_content]

    [#-- Transfers the content to the portalNavigation macro --]
    [@portalNavigationBar targetNode /]

[/#if]
