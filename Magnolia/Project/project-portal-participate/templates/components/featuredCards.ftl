[#-------------- ASSIGNMENTS --------------]
[#assign componentCount = components?size /]
 
[#switch componentCount]
    [#case 2]
        [#assign divColClass = "col-sm-6" /]
        [#break]
    [#case 3]
        [#assign divColClass = "col-sm-4" /]
        [#break]
    [#case 4]
        [#assign divColClass = "col-sm-3" /]
        [#break]
    [#default]
        [#assign divColClass = "col-sm-12" /]
[/#switch]
  
[#-------------- RENDERING --------------]
 
[#-- The system provides automatically to every Area script: All components of the area as a list 'components'. Therefore looping over each component. --]
<div class="cards">
    <div class="row row-cards">
        <div class="tile is-ancestor">
         
            [#list components as component ]
                <div class="${divColClass} tile is-parent">
                    <div class="list-group-item tile is-child">
                    [@cms.component content=component contextAttributes={"divColClass":divColClass} /]
                    </div>
                </div>
            [/#list]
             
        </div>
    </div>
</div>