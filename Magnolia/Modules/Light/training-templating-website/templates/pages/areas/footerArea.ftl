[#-------------- ASSIGNMENTS --------------]
[#--  Dependiendo de la cantidad de componentes en components se asignará un estilo  --]
[#switch components?size]
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
<div class="row">
    [#--  Se recorre componentes para pintar el componente y se le asigna un tamaño al div  --]
    [#list components as component ]
        <div class="${divColClass}">
            [#-- Activando el renderizado de cada nodo componente --]
            [@cms.component content=component /]
        </div>
    [/#list]
</div>