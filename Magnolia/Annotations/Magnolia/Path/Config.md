# Cada Instancia pública se configura como receptor de la Instancia de Autor.
config: /modules/publishing-core/config/receivers

# Definición de suscriptor.
config: App/server/activation/subscribers

# Hacer que una plantilla sea o no editable.
config: /server@admin true or false

# Cambio de ruta en el puerto 8080.
1. Acceda a Magnolia usando la URL: 
    -> http://localhost:8080/training-fullstack-webapp/
2. Abra la aplicación de configuración: 
    -> /modules/publishing-core/config/receivers/magnoliaPublic8080
3. Cambie la URL a:  
    -> http://localhost:8080/training-fullstack-webapp