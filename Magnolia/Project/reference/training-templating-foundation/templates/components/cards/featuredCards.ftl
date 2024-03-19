[#-------------- ASSIGNMENTS --------------]
[#assign headline = content.headline!]
[#assign divClass = def.parameters.divClass!"panel panel-info"]
[#assign headingLevel = def.parameters.headingLevel!"h3"]
[#assign headingDivClass = def.parameters.headingDivClass!"panel-title"]

[#-------------- RENDERING  --------------]
<div class="${divClass}">
    <div class="panel-heading">
        [#if headline?has_content]
            <${headingLevel} class="${headingDivClass}">${headline}</${headingLevel}>
        [/#if]
    </div>
     
    <div class="panel-body">
        [@cms.area name="cards"/]
    </div>
</div>