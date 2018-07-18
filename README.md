# Recusos para el usos de docker

## Directorio /bd
> Este directorio contiene todos los archivos necesarios para poder levantar un contenedor de postgres con el usuario "mortal" dentro del script resbar.sql junto con las sentencias SQL necesarias para crear crear las tablas dentro de la base de datos "resbar" definida en el archivo db.env

## Directorio /proyecto
> Contiene la carpeta /docker para ser copiada dentro del directorio /src/main/resources/ que serviran para poder desplegar el proyecto realizado con java y maven con solo hacer "clean and build"

## Directorio /local
> Contiene el script sql para la creacion de las tablas e insert de datos en estas. Podran usar el script para instalaciones locales de postgres(windows o linux, da igual) pero necesitaran crear manualmente el usuario "mortal" y las base de datos "resbar"(en windows se puede hacer facilmente desde pg admin que se instala junto con postgres, en linux ya teneis la guia pero si ya tienen linux instalado mejor instalen docker ce y docker compose y utilicen el directorio /bd)
