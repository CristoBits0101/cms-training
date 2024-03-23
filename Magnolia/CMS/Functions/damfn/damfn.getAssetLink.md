<!-- Obtenga un enlace al activo -->

<!-- Cadena getAssetLink (cadena activeKey) -->
[#assign assetLink = damfn.getAssetLink(content.imageLink)!]

<!-- String getAssetLink (String activeKey, String renditionName) -->
<!-- String getAssetLink (activo de activo, MediaType mediaType, String renditionName) -->
[#assign assetLink = damfn.getAssetLink(content.imageLink, "small")!]

<img alt="Using damfn object."src="${damfn.getAssetLink(content.linkToAsset}, "small")}">

[#if content.imageLink?has_content]
  [#assign assetLink = damfn.getAssetLink(content.imageLink, "large")!]
    [#if assetLink?has_content]
      <img class="img-responsive" src="${assetLink}" alt="">
    [/#if]
[/#if]