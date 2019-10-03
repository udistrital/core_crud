-- object: core | type: SCHEMA --
-- DROP SCHEMA IF EXISTS core CASCADE;
CREATE SCHEMA core;
-- ddl-end --

SET search_path TO pg_catalog,public,core;
-- ddl-end --

-- object: core.area_conocimiento | type: TABLE --
-- DROP TABLE IF EXISTS core.area_conocimiento CASCADE;
CREATE TABLE core.area_conocimiento (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_area_conocimiento PRIMARY KEY (id),
	CONSTRAINT uq_nombre_area_conocimiento UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE core.area_conocimiento IS 'Tabla que parametriza las Áreas del Conocimiento según el SNIES';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.id IS 'Identificador de la tabla area_conocimiento';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.nombre IS 'Campo obligatorio de la tabla que indica el nombre del parámetro.';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.descripcion IS 'Descripción opcional del parámetro.';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.codigo_abreviacion IS 'Código asignado por el SNIES para el Área de Conocimiento';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.activo IS 'Campo de tipo boolean que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.area_conocimiento.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_area_conocimiento ON core.area_conocimiento  IS 'Llave primaria de la tabla area_conocimiento';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_area_conocimiento ON core.area_conocimiento  IS 'Restricción para que no se repita el nombre de las áreas de conocimiento';
-- ddl-end --

-- object: core.nucleo_basico_conocimiento | type: TABLE --
-- DROP TABLE IF EXISTS core.nucleo_basico_conocimiento CASCADE;
CREATE TABLE core.nucleo_basico_conocimiento (
	id serial NOT NULL,
	nombre character varying(100) NOT NULL,
	area_conocimiento_id integer NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_nucleo_basico_conocimiento PRIMARY KEY (id),
	CONSTRAINT uq_nombre_nucleo_basico_conocimiento UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE core.nucleo_basico_conocimiento IS 'Tabla que parametriza el Núcleo Básico del Conocimiento según el SNIES';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.id IS 'Identificador de la tabla nucleo_basico_conocimiento';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.nombre IS 'Nombre del Núcleo Básico del Conocimiento';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.area_conocimiento_id IS 'Referencia a la tabla area_conocimiento';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.descripcion IS 'Descripción opcional del parámetro.';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.codigo_abreviacion IS 'Código asignado por el SNIES para el Núcleo Básico de Conocimiento';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.activo IS 'Campo de tipo boolean que indica si el parametro esta activo';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.nucleo_basico_conocimiento.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_nucleo_basico_conocimiento ON core.nucleo_basico_conocimiento  IS 'Llave primaria de la tabla nucleo_basico_conocimiento';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_nucleo_basico_conocimiento ON core.nucleo_basico_conocimiento  IS 'Restricción para que no se repita el nombre de los núcleos básicos de conocimiento';
-- ddl-end --

-- object: core.tipo_dato_adicional | type: TABLE --
-- DROP TABLE IF EXISTS core.tipo_dato_adicional CASCADE;
CREATE TABLE core.tipo_dato_adicional (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_dato_adicional PRIMARY KEY (id),
	CONSTRAINT uq_nombre_tipo_dato_adicional UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE core.tipo_dato_adicional IS 'Tabla paramétrica con los tipos de dato de la caracterización, puede ser: numérico, texto, lista o fecha';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.id IS 'Identificador de la tabla tipo_dato_adicional';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.nombre IS 'Campo en el que se indica el nombre del tipo de dato';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.descripcion IS 'Descripción opcional del parámetro';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.activo IS 'Campo de tipo boolean que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.tipo_dato_adicional.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_tipo_dato_adicional ON core.tipo_dato_adicional  IS 'Llave primaria de la tabla tipo_dato_adicional';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_tipo_dato_adicional ON core.tipo_dato_adicional  IS 'Restricción para que no se repita el nombre del tipo de dato adicional';
-- ddl-end --

-- object: core.unidad_tiempo | type: TABLE --
-- DROP TABLE IF EXISTS core.unidad_tiempo CASCADE;
CREATE TABLE core.unidad_tiempo (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL DEFAULT now(),
	fecha_modificacion timestamp NOT NULL DEFAULT now(),
	CONSTRAINT pk_unidad_tiempo PRIMARY KEY (id),
	CONSTRAINT uq_nombre_unidad_tiempo UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE core.unidad_tiempo IS 'Tipo de unidad de tiempo (Semestres, Años, Horas)';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.id IS 'Identificador de la tabla unidad_tiempo';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.nombre IS 'Campo en el que se indica el nombre de la unidad de tiempo';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.descripcion IS 'Descripción opcional del parámetro';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.activo IS 'Campo de tipo boolean que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.unidad_tiempo.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_unidad_tiempo ON core.unidad_tiempo  IS 'Llave primaria de la tabla frecuencia';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_unidad_tiempo ON core.unidad_tiempo  IS 'Restricción para que no se repita el nombre de la unidad de tiempo';
-- ddl-end --

-- object: core.tipo_periodo | type: TABLE --
-- DROP TABLE IF EXISTS core.tipo_periodo CASCADE;
CREATE TABLE core.tipo_periodo (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_periodo PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE core.tipo_periodo IS 'Tabla que permite registrar los diferentes tipos de periodos que existen, ej: académico, ILUD, extensión.';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.id IS 'Identificador de la tabla tipo tipo_periodo';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.nombre IS 'Nombre del tipo de periodo';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.descripcion IS 'Descripcion del tipo de periodo';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.activo IS 'Booleano que define si el tipo de periodo se encuentra actualmente activo o no';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.tipo_periodo.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_tipo_periodo ON core.tipo_periodo  IS 'Restricción de llave primaria de la tabla tipo_periodo';
-- ddl-end --

-- object: core.periodo | type: TABLE --
-- DROP TABLE IF EXISTS core.periodo CASCADE;
CREATE TABLE core.periodo (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying,
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	tipo_periodo_id integer NOT NULL,
	fecha_creacion timestamp NOT NULL DEFAULT now(),
	fecha_modificacion timestamp NOT NULL DEFAULT now(),
	CONSTRAINT pk_periodo PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE core.periodo IS 'Tabla que permite registrar los periodos que tienen las diferentes organizaciones';
-- ddl-end --
COMMENT ON COLUMN core.periodo.id IS 'Identificador de la tabla periodo';
-- ddl-end --
COMMENT ON COLUMN core.periodo.nombre IS 'Nombre del periodo';
-- ddl-end --
COMMENT ON COLUMN core.periodo.descripcion IS 'Descripción del periodo que se referencia';
-- ddl-end --
COMMENT ON COLUMN core.periodo.codigo_abreviacion IS 'Codigo de abreviación del periodo que se maneja';
-- ddl-end --
COMMENT ON COLUMN core.periodo.activo IS 'Booleano que define si el perido se encuentra actualmente activo o no';
-- ddl-end --
COMMENT ON COLUMN core.periodo.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.periodo.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.periodo.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_periodo ON core.periodo  IS 'Constraint para llave primaria de la tabla';
-- ddl-end --

-- object: core.grupo_investigacion | type: TABLE --
-- DROP TABLE IF EXISTS core.grupo_investigacion CASCADE;
CREATE TABLE core.grupo_investigacion (
	id serial NOT NULL,
	nombre character varying(120) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_grupo_investigacion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE core.grupo_investigacion IS 'Tabla almacena los grupos de investigación existentes en la Universidad, a futuro se debe consumir la información de un servicio del CIDC.';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.id IS 'Identificador de la tabla grupo_investigacion';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.nombre IS 'Nombre del grupo de investigación';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.descripcion IS 'Descripcion del grupo de investigación';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.codigo_abreviacion IS 'Codigo de abreviación del grupo de investigación';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.activo IS 'Booleano que define si el grupo de investigación se encuentra actualmente activo o no';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.grupo_investigacion.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_grupo_investigacion ON core.grupo_investigacion  IS 'Constraint para llave primaria de la tabla';
-- ddl-end --

-- object: core.linea_investigacion | type: TABLE --
-- DROP TABLE IF EXISTS core.linea_investigacion CASCADE;
CREATE TABLE core.linea_investigacion (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_linea_investigacion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE core.linea_investigacion IS 'Líneas de investigación de los grupos de investigación';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.id IS 'Identificador de la tabla linea_investigacion';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.nombre IS 'Nombre de la línea de investigación';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.descripcion IS 'Descripción sobre la línea de investigación';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.codigo_abreviacion IS 'Código de abreviación para la línea de investigación';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_linea_investigacion ON core.linea_investigacion  IS 'Restricción de llave primaria de la tabla linea_investigacion';
-- ddl-end --

-- object: core.concepto_academico | type: TABLE --
-- DROP TABLE IF EXISTS core.concepto_academico CASCADE;
CREATE TABLE core.concepto_academico (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	descripcion character varying(250),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_concepto_academico PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE core.concepto_academico IS 'Tabla paramétrica para definir los conceptos por los cuales puede presentarse un descuento, incluye matrícula y derechos pecuniarios.';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.id IS 'Identificador de la tabla concepto_academico';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.codigo_abreviacion IS 'Código de abreviación del concepto académico';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.descripcion IS 'Descripcion del concepto académico';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.concepto_academico.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_concepto_academico ON core.concepto_academico  IS 'Llave primaria de la tabla concepto_academico';
-- ddl-end --

-- object: core.linea_investigacion_grupo_investigacion | type: TABLE --
-- DROP TABLE IF EXISTS core.linea_investigacion_grupo_investigacion CASCADE;
CREATE TABLE core.linea_investigacion_grupo_investigacion (
	id serial NOT NULL,
	grupo_investigacion_id integer NOT NULL,
	linea_investigacion_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_linea_investigacion_grupo_investigacion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE core.linea_investigacion_grupo_investigacion IS 'Tabla que relaciona las líneas de investigación con los grupos de investigación';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion_grupo_investigacion.id IS 'Identificador de la tabla linea_investigacion_grupo_investigacion';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion_grupo_investigacion.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion_grupo_investigacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN core.linea_investigacion_grupo_investigacion.fecha_modificacion IS 'Fecha de la útima modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_linea_investigacion_grupo_investigacion ON core.linea_investigacion_grupo_investigacion  IS 'Restricción de llave primaria de la tabla linea_investigacion_grupo_investigacion';
-- ddl-end --

-- object: fk_linea_investigacion_grupo_investigacion_grupo_invest_4192 | type: CONSTRAINT --
-- ALTER TABLE core.linea_investigacion_grupo_investigacion DROP CONSTRAINT IF EXISTS fk_linea_investigacion_grupo_investigacion_grupo CASCADE;
ALTER TABLE core.linea_investigacion_grupo_investigacion ADD CONSTRAINT fk_linea_investigacion_grupo_investigacion_grupo FOREIGN KEY (grupo_investigacion_id)
REFERENCES core.grupo_investigacion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_linea_investigacion_grupo_investigacion_linea_invest_4194 | type: CONSTRAINT --
-- ALTER TABLE core.linea_investigacion_grupo_investigacion DROP CONSTRAINT IF EXISTS fk_linea_investigacion_grupo_investigacion_linea CASCADE;
ALTER TABLE core.linea_investigacion_grupo_investigacion ADD CONSTRAINT fk_linea_investigacion_grupo_investigacion_linea FOREIGN KEY (linea_investigacion_id)
REFERENCES core.linea_investigacion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_nucleo_basico_conocimiento_area_conocimiento | type: CONSTRAINT --
-- ALTER TABLE core.nucleo_basico_conocimiento DROP CONSTRAINT IF EXISTS fk_nucleo_basico_conocimiento_area_conocimiento CASCADE;
ALTER TABLE core.nucleo_basico_conocimiento ADD CONSTRAINT fk_nucleo_basico_conocimiento_area_conocimiento FOREIGN KEY (area_conocimiento_id)
REFERENCES core.area_conocimiento (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_periodo_tipo_periodo | type: CONSTRAINT --
-- ALTER TABLE core.periodo DROP CONSTRAINT IF EXISTS fk_periodo_tipo_periodo CASCADE;
ALTER TABLE core.periodo ADD CONSTRAINT fk_periodo_tipo_periodo FOREIGN KEY (tipo_periodo_id)
REFERENCES core.tipo_periodo (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- Permisos de usuario
GRANT USAGE ON SCHEMA acta_recibido TO desarrollooas;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA acta_recibido TO desarrollooas;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA acta_recibido TO desarrollooas;