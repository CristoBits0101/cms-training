# magnolia.properties

Autor:
/magnolia-training/magnolia-jumpstart/apache-tomcat/webapps/ magnoliaAuthor /WEB-INF/config/default/

Público:
/magnolia-training/magnolia-jumpstart/apache-tomcat/webapps/ magnoliaPublic /WEB-INF/config/default/ magnolia.properties

# Cambiar el diseño de AdminCentral usando el nuevo.

magnolia.applauncher.config.compatibility=false

# Agregar una etiqueta AdminCentral.

magnolia.ui.sticker.environment=Local Dev! -> Texto
magnolia.ui.sticker.color=red -> Color
magnolia.webapp = Full-Stack Author -> Sub texto

# Ubicación del repositorio JCR.

magnolia.repositories.home=${magnolia.home}/repositories

# Define en la implementación inicial si una instancia se convierte en autor o instancia pública.

magnolia.bootstrap.authorInstance=true

# No aparece ninguna pantalla de instalación, la instalación se activa automáticamente cuando:

-> Se agregan nuevos módulos JAR a WEB/INF/lib
-> En la primera implementación

magnolia.update.auto=true

# Define si los recursos web deben almacenarse en caché.

-> Almacenamiento en caché de JS y recursos web.
-> Define si los recursos web deben almacenarse en caché.
-> En el desarrollo local, este valor se establece en verdadero.

## on live instance

magnolia.develop=false

## mgnl-jumpstart set value

magnolia.develop=true
