# Core_crud

API CRUD para la tablas del core necesarias en el sistema de gestion academica

## Requirements
Go version >= 1.8.

## Preparación:
    Para usar el API, usar el comando:
        - go get github.com/udistrital/core_crud

## Run

Definir los valores de las siguientes variables de entorno:

 - `CORE_CRUD_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `CORE_CRUD__PGUSER`: Usuario de la base de datos
 - `CORE_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `CORE_CRUD__PGURLS`: Host de conexión
 - `CORE_CRUD__PGDB`: Nombre de la base de datos
 - `CORE_CRUD__SCHEMA`: Esquema a utilizar en la base de datos

Ejemplo: CORE_CRUD_HTTP_PORT=8088 CORE_CRUD__PGUSER=postgres CORE_CRUD__PGPASS=12345678 CORE_CRUD__PGURLS=localhost CORE_CRUD__PGDB=core CORE_CRUD__SCHEMA=core bee run -downdoc=true -gendoc=true

## MODELO DE DATOS

Como modelos de datos del Api se utilizo el siguiente 