<!-- Verificar si se ha definido el ID del folder de destino -->
[#if content.targetFolderId?has_content]

    <!-- Asignar el ID del nodo del folder de destino -->
    [#assign targetFolderNodeId = content.targetFolderId! /]

    <!-- Obtener el nodo del folder de destino desde el CMS -->
    [#assign targetFolderNode = cmsfn.contentById(targetFolderNodeId, "dam")! /]
     
    <!-- Verificar si el nodo del folder de destino existe -->
    [#if targetFolderNode?has_content]
        <div>       
            <!-- Mostrar el título del nodo del folder de destino -->
            <h5>${targetFolderNode.title!targetFolderNode.@name}</h5>
             
            <br/>TODO 1: <br/>
            - Obtener los activos del folder y recorrerlos.<br/>
            - Crear un enlace para cada activo.<br/><br/>
             
            <br/>TODO 2: <br/>
            - Si no hay activos en el folder, informar al Autor al respecto.<br/>
        </div>   
    [#elseif cmsfn.editMode]
        <!-- Mostrar mensaje si no se puede resolver el enlace al nodo del folder de destino -->
        <div>The link to the target folder-node could not be resolved. Check if the target folder-node still exists.</div>
    [/#if]
    
[#elseif cmsfn.editMode]
    <!-- Mostrar mensaje si no se ha definido el enlace al nodo del folder de destino -->
    <div>No target folder-node link is defined. Please open the dialog and choose a target folder-node containing assets.</div>
[/#if]
