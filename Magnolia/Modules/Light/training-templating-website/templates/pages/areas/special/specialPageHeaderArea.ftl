<div class="panel panel-info">
 
    <div class="panel-heading">
        <h1 class="panel-title">${content.title!content.@name}</h1>
    </div>
     
    [#if content.abstract?has_content]
    <div class="panel-body">
        <p>${content.abstract}</p>
    </div>
    [/#if]
     
    [#if content.imageLink?has_content]
        [#assign asset = damfn.getAsset(content.imageLink)!]
        [#if asset?has_content && asset.link?has_content]
            <img class="img-responsive" src="${asset.link}" alt="">
        [/#if]
    [/#if]
     
</div>