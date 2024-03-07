[#--  An attempt is made to assign the link of the selected image in long format  --]
[#assign assetLink = damfn.getAssetLink(content.imageLink, "large")!]

[#--  This conditional block checks if the 'assetLink' variable contains content  --]
[#if assetLink?has_content]
    [#--  
        <div style="background-image: url('${content.imageLink}');>
            <img src="${assetLink}" alt="">
        </div>  
    --]
[/#if]