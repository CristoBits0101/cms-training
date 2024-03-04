[#if def.parameters.resfnStrings?has_content]
    [#list def.parameters.resfnStrings?values as resfnString]
        ${resfn.cachedCss(resfnString, "media='all'")}
    [/#list]
[/#if]