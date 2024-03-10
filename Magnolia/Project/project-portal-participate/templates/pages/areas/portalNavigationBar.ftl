[#include "/travel-demo/templates/macros/subpageNavigation.ftl"]

[#assign portalParticipatePage = cmsfn.contentByPath("/portal-participate", "en")!]

[#if portalParticipatePage?has_content]
    [@portalNavigation  portalParticipatePage /]
[/#if]