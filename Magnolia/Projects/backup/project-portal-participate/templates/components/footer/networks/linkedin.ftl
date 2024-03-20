<a href="https://www.linkedin.com" target="_blank">

    [#-- Get the asset --]
    [#assign assetUID = "jcr:b7b55be3-f3a8-4470-9c3e-f4dab925336a"]
    [#assign myAsset = damfn.getAsset(assetUID)]

    [#-- Networks imagen --]
    <img src="${myAsset.link}" alt="LinkedIn" title="LinkedIn" class="list-image">

</a>
