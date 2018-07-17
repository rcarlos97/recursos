# Agregando la imagen 192.168.0.15:5000/
FROM payara/micro:latest

# Descargando el JDBC
# RUN wget -O $PAYARA_PATH/postgresql-42.2.2.jar https://jdbc.postgresql.org/download/postgresql-42.2.2.jar
COPY postgresql-42.2.2.jar $PAYARA_PATH/

# Agregando el archivo de comandos asadmin
COPY asadmin.txt $PAYARA_PATH/

# Agregando nuestra aplicacion web al directorio autodeploy
COPY resbar-1.0-SNAPSHOT.war $PAYARA_PATH/

# Agregando la libreria, Ejecutamos los comandos asadmin(Pool y Resources) y hacemos Deploy
ENTRYPOINT ["java", "-jar", "payara-micro.jar", "--addLibs", "postgresql-42.2.2.jar", "--postbootcommandfile", "asadmin.txt","--deploy", "resbar-1.0-SNAPSHOT.war"]
