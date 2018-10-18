# core_crud
API de core, Integración con CI
core_crud master/develop
 ## Requirements
Go version >= 1.8.
 ## Preparation:
    Para usar el API, usar el comando:
        - go get github.com/udistrital/core_crud
 ## Run
 Definir los valores de las siguientes variables de entorno:
  - `CORE_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `CORE_CRUD__PGUSER`: Usuario de la base de datos
 - `CORE_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `CORE_CRUD__PGURLS`: Host de conexión
 - `CORE_CRUD__PGDB`: Nombre de la base de datos
 - `CORE_CRUD__SCHEMA`: Esquema a utilizar en la base de datos
 ## Example:
CORE_HTTP_PORT=8095 CORE_CRUD__PGUSER=postgres CORE_CRUD__PGPASS=password CORE_CRUD__PGURLS=localhost CORE_CRUD__PGDB=local CORE_CRUD__SCHEMA=core_new bee run
 ## Model DB
![image](https://github.com/udistrital/core_crud/blob/develop/modelo_core_crud.png).
