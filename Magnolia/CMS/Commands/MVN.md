# Crea los archivos JAR y WAR.
mvn clean package

# Crea y agrega los JAR y WAR integrados a su repositorio local de Maven.
mvn clean install

# Aplicación web personalizada basada en Maven es ejecutar el comando archetype.
mvn archetype:generate -DarchetypeGroupId=info.magnolia.maven.archetypes -DarchetypeArtifactId=magnolia-project-archetype -DarchetypeVersion=RELEASE
