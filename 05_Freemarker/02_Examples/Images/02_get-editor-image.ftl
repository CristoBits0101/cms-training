[#if content.iconLink?has_content]

    <a href="https://www.facebook.com" target="_blank">

        [#-- Get the asset --]
        [#assign myAsset = damfn.getAsset(content.iconLink)!]]

        [#-- Networks imagen --]
        <img src="${myAsset.link}" alt="Facebook" title="Facebook" class="list-image">

    </a>
    
[/#if]
