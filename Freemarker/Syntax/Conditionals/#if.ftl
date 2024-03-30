[#-- Creas un posible li vacío --]
<li><span>🎊</span>
    [#if childNode.starts?has_content]
        ${childNode.starts}
    [/#if]
</li>

[#-- Evitas el li vacío --]
[#if childNode.starts?has_content]
    <li><span>🎊</span>${childNode.starts}</li>
[/#if]

[#-- Puede estar fuera el li del condicional porque nunca estara vacío --]
<li><span>🎊</span>
    [#if childNode.starts?has_content]
        ${childNode.starts}
    [#else]
        Unspecified beginning
    [/#if]
</li>

[#-- Duplicidad de código --]
[#if childNode.starts?has_content]
    <li><span>🎊</span>${childNode.starts}</li>
[#else]
    <li><span>🎊</span>Unspecified beginning</li>
[/#if]

[#-- No requiere condicionales hay un valor por defecto --]
<li><span>🎊</span>${childNode.starts!Unspecified beginning}</li>
<li><span>🚧</span>${childNode.ends!Unspecified ending}</li>
<li><span>📍</span>${childNode.location!Unspecified location}</li>

[#-- Requiere de condicionales no tiene valor por defecto --]
[#if childNode.starts?has_content && childNode.ends?has_content && childNode.location?has_content]
    <li><span>🎊</span>${childNode.starts}</li>
    <li><span>🚧</span>${childNode.ends}</li>
    <li><span>📍</span>${childNode.location}</li>
[/#if]
