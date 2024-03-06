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

[#if content.headline?has_content || content.text?has_content || content.imageLink?has_content]
<div class="default-text-image">
  [#if content.headline?has_content]
  <h4 class="chapter-head">
    ${content.headline!}
  </h4>
  [/#if]
  ${cmsfn.decode(content).text!}
  [#if content.imageLink?has_content]
  <figure class="figure">
    [#-- Resolve the 'imageLink' property to the asset node and create a link to it. For more detailed comments see the 'defaultPageScript.ftl' script.--]
    <#--  [#assign asset = damfn.getAsset(content.imageLink)!]  -->
    <#--  [#assign asset = damfn.getRendition(content.imageLink, "480")!]  -->
    [#assign asset = damfn.getRendition(content.imageLink, "1366")!]
    [#if asset?has_content && asset.link?has_content]
    <img class="img-responsive" src="${asset.link}" alt="">
    [/#if]
    [#-- Only if there is a caption AND an asset -> render the caption text.--]
    [#if content.imageCaption?has_content && asset?has_content]
    <figcaption class="figure-caption text-right">
      ${content.imageCaption}
    </figcaption>
    [/#if]
  </figure>
  [/#if]
</div>
[#elseif cmsfn.editMode]
<div>No Content defined for this text & image component.</div>
[/#if]