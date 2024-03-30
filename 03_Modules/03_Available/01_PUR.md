# STEP 1:

    1.1. CREATE -> AUTH TEMPLATE:

    1.2. CREATE -> YAML DEFINITION:

    1.3.    ADD -> REFERENCES:

    1.4.    ADD -> MAIN AREA:

    1.3.    ADD -> PUR COMPONENTS:

# STEP 2:

    2.1. CREATE -> FORM PAGES:

            - REGISTRATION
            - LOGIN
            - UPDATE PROFILE
            - PASSWORD CHANGE
            - PASSWORD RETRIEVAL
            - RESTRICTED PAGES

    2.2. ADD -> AREA COMPONENTS:

            - REGISTRATION
                ## La cuenta de usuario solo se crea en la instancia pública.
                ## Los usuarios públicos se almacenan y administran en la aplicación Seguridad en la instancia pública.
                ## El sistema registra la cuenta automáticamente cuando un usuario se registra.
                ## Que el usuario pueda utilizar la cuenta inmediatamente o no depende de la estrategia de registro configurada.
            - LOGIN
            - UPDATE PROFILE
            - PASSWORD CHANGE
            - PASSWORD RETRIEVAL

# STEP 3:

    3.1. ADD -> project-portal-participate\decorations\public-user-registration\config.configurations.participate.yaml

    3.2. ADD -> project-portal-participate\templates\components\main\form.yaml

    3.3. ADD -> project-portal-participate\templates\components\main\form.ftl