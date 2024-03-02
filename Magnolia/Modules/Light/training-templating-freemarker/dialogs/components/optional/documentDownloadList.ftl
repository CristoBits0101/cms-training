<!-- TODO 1: Obtener los activos de la carpeta y recorrerlos -->
[#list cmsfn.children(targetFolderNode, "mgnl:asset")]

    <!-- Lista no ordenada para los activos -->
    <ul>
        <!-- Iterar sobre cada activo en la carpeta -->
        [#items as childAssetNode]

            <!-- Crear un enlace para cada activo -->
            <li><a href="${cmsfn.link(childAssetNode)!}">${childAssetNode.title!childAssetNode.@name}</a></li>
        
        [/#items]      
    </ul>

    <!-- TODO 2: Informar al Autor si no hay activos en la carpeta -->
    <br/>TODO 2: <br/>
    - Si no hay activos en la carpeta, informar al Autor al respecto.<br/>

    <!-- Verificar si hay activos en la carpeta -->
    [#list cmsfn.children(targetFolderNode, "mgnl:asset")]

        <!-- Lista no ordenada para los activos -->
        <ul>

            <!-- Iterar sobre cada activo en la carpeta -->
            [#items as childAssetNode]

                <!-- Crear un enlace para cada activo -->
                <li><a href="${cmsfn.link(childAssetNode)!}">${childAssetNode.title!childAssetNode.@name}</a></li>

            [/#items]    

        </ul>

    <!-- Si no hay activos en la carpeta -->
    [#else]

        <!-- Verificar si estamos en modo de edición -->
        [#if cmsfn.editMode]

            <!-- Mostrar mensaje si no hay activos en la carpeta -->
            <div>You have chosen a folder without any assets. Therefore the download list can not provide any links to assets.</div>

        [/#if]

    [/#list]

[/#list]
