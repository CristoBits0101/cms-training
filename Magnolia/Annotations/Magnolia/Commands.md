# INSTALL MAGNOLIA SERVE
magnolia-dx-core-demo-6.2.32
    -> cd C:\Magnolia\magnolia-dx-core-demo-6.2.32\apache-tomcat-9.0.73\bin
    -> magnolia_control.bat start
    -> magnolia_control.bat stop

# MAGNOLIA USING THE NPM CLI PACKAGE
magnolia-community-webapp
    -> cd C:\Users\reuda\Desktop\magnolia\light-modules
    -> mgnl jumpstart
    -> mgnl start
    -> mgnl create-light-module
    -> mgnl create-page
    -> mgnl create-component
    -> mgnl add-availability
    -> mgnl create-content-type
    -> mgnl create-app
    -> mgnl create-virtual-uri
    -> mgnl search
    -> mgnl install
    -> mgnl tab-completion

# Crea los archivos JAR y WAR.
mvn clean package

# Crea los archivos JAR y WAR.
# Agregaría los Jar y War integrados a su repositorio local de Maven.
mvn clean install