# PASO 1
/apache-tomcat/webapps/magnoliaAuthor/WEB-INF/config/default/magnolia.properties

# PASO 2
magnolia.content.bootstrap.dir = /Users/../magnolia/light-modules/jcr-data_auto-import

# PASO 3
\Light-Modules\training-backend-js-magic\jcr-data\jcr-data_mandatory

# PASO 4
Light-Modules/training-backend-js-magic/jcr-data/jcr-data_samples

# PASO 5
magnolia -> shell -> copy-jcr-data_to-autoimport.sh

#!/bin/sh
 
#setting variables
base_dir=../
auto_import_dir=${base_dir}jcr-data_auto-import
mandatory_foldername=jcr-data_mandatory
samples_foldername=jcr-data_samples
 
if [ "$1" = "mandatory" -o "$1" = "samples" -o "$1" = "all" ] ; then
 
    if [ "$1" = "mandatory" -o "$1" = "all" ] ; then
        find $base_dir -name $mandatory_foldername -exec cp -r {}/ $auto_import_dir \;
    fi
    if [ "$1" = "samples" -o "$1" = "all" ] ; then
        find $base_dir -name $samples_foldername -exec cp -r {}/ $auto_import_dir \;
    fi
     
else
    echo "Please provide \"mandatory\" or \"samples\" of \"all\" as argument."
    exit 1
fi

# PASO 6
Arrastre y suelte los archivos XML que desea importar en la carpeta jcr-data_auto-import

# Se puede ejecutar un script de shell usando el comando:
./copy-jcr-data_to-autoimport.sh

# Se debe elegir entre buscar archivos XML en la carpeta "obligatorio", "muestras" o "todos".
./copy-jcr-data_to-autoimport.sh mandatory

# El resultado será copiar los archivos XML del argumento elegido en la carpeta jcr-data_auto-import.