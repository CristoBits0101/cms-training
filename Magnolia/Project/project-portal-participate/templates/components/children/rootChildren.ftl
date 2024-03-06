<!-- Obtener el nodo raíz de la aplicación de contenido 'Eventos' -->
[#assign eventsRoot = cmsfn.contentByPath("/", "events")!]

<!-- Obtener la lista de eventos desde la aplicación de contenido -->
[#assign events = cmsfn.children(eventsRoot, "event")![]]

<!-- Mostrar la lista de eventos -->
<ul>
    <!-- Iterar sobre cada evento -->
    [#list events as event]
        <li>
            <!-- Enlace dinámico usando el selector 'event-id' -->
            <a href="${cmsfn.link(event)!}">
                ${event.name}
            </a>
        </li>
    [/#list]
</ul>