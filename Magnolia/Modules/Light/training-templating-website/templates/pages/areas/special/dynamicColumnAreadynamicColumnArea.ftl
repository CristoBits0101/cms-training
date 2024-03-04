[#if cmsfn.editMode || ((components?size) > 0)]
<div class="${def.parameters.divColClass!"col-sm-12"}">
    [#list components ]
    <div class="panel panel-default">
        <div class="panel-body">
            [#items as component ]
            [@cms.component content=component /]
            [/#items]
        </div>
    </div>
    [/#list]
</div>
[/#if]