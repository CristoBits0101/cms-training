[#-- Incluyendo nuestras funciones auxiliares de vinculación de activos de Freemarker --]
[#include "/ training-templating-additional/includes/functions/jcrImageLinkToAssetLink.ftl" ]

[#if content.imageLink?has_content]
    [#assign asset = damfn.getAsset(content.imageLink)!]
    [#if asset?has_content && asset.link?has_content]
        <img class="img-responsive" src="${asset.link}" alt="">
    [/#if]
[/#if]

[#-- Possibility 1: Getting the asset (from the function 'jcrImageLinkToAsset') and from the asset the link --]
[#assign asset = jcrImageLinkToAsset(content.imageLink)!]
[#if asset?has_content]
    <img class="img-responsive" src="${asset.link}" alt="">
[/#if]
 
[#-- Possibility 2: Getting directly the asset's link from the function 'jcrImageLinkToAssetLink' --]
[#assign assetLink = jcrImageLinkToAssetLink(content.imageLink)!]
[#if assetLink?has_content]
    <img class="img-responsive" src="${assetLink}" alt="">
[/#if]

[#-- Resolve the 'imageLink' property to an asset-rendition -> getting resized image --]         
[#if content.imageLink?has_content]
    [#assign assetLink = damfn.getAssetLink(content.imageLink, "large")!]
    [#if assetLink?has_content]
        <img class="img-responsive" src="${assetLink}" alt="">
    [/#if]
[/#if]

[#-- Getting directly the asset's link from the function 'jcrImageLinkToAssetLink' --]
[#assign assetLink = jcrImageLinkToAssetLink(content.imageLink, "large")!]
[#if assetLink?has_content]
    <img class="img-responsive" src="${assetLink}" alt="">
[/#if]