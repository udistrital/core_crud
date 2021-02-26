# core_crud
API de información general - core

Integración con

 - `CI`
 - `AWS Lambda - S3`
 - `Drone 1.x`
 - `core_crud master/develop`

## Requerimientos
Go version >= 1.8.

## Preparación
Para usar el API, usar el comando:

 - `go get github.com/udistrital/core_crud`

## Ejecución
Definir los valores de las siguientes variables de entorno:

 - `CORE_CRUD_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `CORE_CRUD__PGUSER`: Usuario de la base de datos
 - `CORE_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `CORE_CRUD__PGURLS`: Host de conexión
 - `CORE_CRUD__PGDB`: Nombre de la base de datos
 - `CORE_CRUD__SCHEMA`: Esquema a utilizar en la base de datos

## Ejemplo
CORE_CRUD_HTTP_PORT=8102 CORE_CRUD__PGUSER=user CORE_CRUD__PGPASS=password CORE_CRUD__PGURLS=localhost CORE_CRUD__PGDB=bd CORE_CRUD__SCHEMA=schema_new bee run

## Modelo BD
![image](https://github.com/udistrital/core_crud/blob/develop/modelo_core_crud.png).
