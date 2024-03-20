<a href="https://www.facebook.com" target="_blank">

    [#-- Get the asset --]
    [#assign assetUID = "jcr:20984dc5-5c2e-486b-a79a-00a59fb8759c"]
    [#assign myAsset = damfn.getAsset(assetUID)]

    [#-- Networks imagen --]
    <img src="${myAsset.link}" alt="Facebook" title="Facebook" class="list-image">

</a>
