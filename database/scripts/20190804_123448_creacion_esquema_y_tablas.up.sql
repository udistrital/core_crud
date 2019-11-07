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
GRANT USAGE ON SCHEMA core TO desarrollooas;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA core TO desarrollooas;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA core TO desarrollooas;
