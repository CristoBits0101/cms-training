<!-- Direct access through your uid -->
<a href="https://www.facebook.com" target="_blank">

    [#assign assetUID = "jcr:20984dc5-5c2e-486b-a79a-00a59fb8759c"]
    [#assign myAsset = damfn.getAsset(assetUID)]

    <img src="${myAsset.link}" alt="Facebook" title="Facebook" class="list-image">

</a>

<!-- Access from a dialog -->
[#assign asset = damfn.getAsset(content.imageLink)!]
[#assign assetLink = asset.link()!]