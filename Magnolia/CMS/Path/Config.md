# Cada instancia pública se configura como receptor de la instancia de Autor.
config: /modules/publishing-core/config/receivers.

# Definición de suscriptor.
config: App/server/activation/subscribers.

# Hacer que una plantilla sea o no editable.
config: /server@admin true or false.

# Permitir que los editores ingresen contenido en varios idiomas.
/config/server/i18n/authoring -> Enable: True
    <!-- Establece cuáles son los idiomas seleccionables -->
    Site/i18n/locales -> es, de
    <!-- Campos que se podrán traducir -->
    form:
        properties:
            title:
            type$: textField
            label: Page Title
            description: Define the Page's title.
            <!-- Etiqueta -->
            i18n: true