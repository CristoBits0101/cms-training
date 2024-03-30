# PASO 1:
    1.1. Crear una plantilla para los formularios.
    1.3. Crear un área disponible en la plantilla con los componentes PUR de Magnolia CMS en el YAML:
    https://bitbucket.org/magnolia-cms/travel-demo/src/cd65fedd85808733df741160c0bea637c1e7e3d2/community/magnolia-travel-demo/src/main/resources/travel-demo/templates/pages/pur.yaml

# PASO 2:
    2.1. Crear las páginas de los formularios en la aplicación de páginas usando la plantilla anterior de formularios.
    2.2. Añadir en las áreas de las páginas los componentes PUR correspondientes: página de login -> componente de login.

# PASO 3:
    3.1. Configura la estrategia de registro (por ejemplo, Always para habilitar a los usuarios de forma inmediata).
    3.2. Configura la recuperación de contraseña y el grupo predeterminado.
    3.3. Establece permisos en la instancia pública para restringir el acceso anónimo al contenido reservado para usuarios registrados y otorgar acceso a este contenido a usuarios registrados.