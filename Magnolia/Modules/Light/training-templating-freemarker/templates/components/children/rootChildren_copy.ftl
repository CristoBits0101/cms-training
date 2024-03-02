<div class='container'>
    
    <!-- Obtener el nodo raíz de los eventos -->
    [#assign eventsRoot = cmsfn.contentByPath("/", "events")!]
    
    <!-- Obtener la lista de eventos hijos del nodo raíz -->
    [#assign events = cmsfn.children(eventsRoot, "event")![]]
    
    <!-- Listar los eventos -->
    [#list events]
    
        <ul class="list-group">

            <!-- Mostrar el total de eventos -->
            <li class="list-group-item active">Total events: ${events?size} </li>
            
            <!-- Iterar sobre cada evento -->
            [#items as event]

                <!-- Verificar si el evento tiene un nombre -->
                [#if event.name?has_content]

                    <!-- Mostrar detalles del evento, como el nombre y la fecha si está disponible -->
                    <li class="list-group-item"><small>Event #${event_index+1}: </small> ${event.name} [#if event.date?has_content][${event.date?string["dd.MM.YY"]}][/#if]</li>
                
                [/#if]

            [/#items]

        </ul>

    [/#list]
 
</div>
