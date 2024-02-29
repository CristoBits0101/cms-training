<!-- Obtenga un enlace al activo -->

<!-- Cadena getAssetLink (cadena activeKey) -->
[#assign assetLink = damfn.getAssetLink(content.imageLink)!]

<!-- String getAssetLink (String activeKey, String renditionName) -->
<!-- String getAssetLink (activo de activo, MediaType mediaType, String renditionName) -->
[#assign assetLink = damfn.getAssetLink(content.imageLink, "small")!]