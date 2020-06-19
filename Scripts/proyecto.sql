create database proyecto;

use proyecto;
create table usuarios(
ID			INT			NOT NULL	PRIMARY KEY,
usuario		VARCHAR(20)	NOT NULL,
clave		VARCHAR(20)	NOT NULL,
nombre		VARCHAR(50)	NOT NULL
);


use proyecto;
CREATE TABLE mascota (
id_mascota		INT				IDENTITY(1,1)	NOT NULL	PRIMARY KEY,
--foto			image			NOT NULL,
nombre			VARCHAR(25)		NOT NULL,
edad_mascota	VARCHAR(20)		NOT NULL,
color_mascota	VARCHAR(30)		NOT NULL,
genero			VARCHAR(6)		NOT NULL,
esterilizado	VARCHAR(5)		NOT NULL,
vacunado		VARCHAR(5)		NOT NULL,
desparasitado	VARCHAR(5)		NOT NULL,
url_img			VARCHAR(max),
foto			IMAGE
);

use proyecto;
CREATE TABLE producto (
id_producto		INT				IDENTITY(1,1)	NOT NULL	PRIMARY KEY,
nombre			VARCHAR(25)		NOT NULL,
descripcion		VARCHAR(100)	NOT NULL,
foto			image			NOT NULL
);

use proyecto;
CREATE TABLE formulario_datosPersonales (
tipo_documento		VARCHAR(5)		NOT NULL,
nro_documento		NUMERIC(10)		NOT NULL,
nombres				VARCHAR(50)		NOT NULL,
apellidos			VARCHAR(50)		NOT NULL,
email				VARCHAR(100)	NOT NULL,
direccion_hogar		VARCHAR(100)	NOT NULL,
direccion_trabajo	VARCHAR(100),
ocupacion			VARCHAR(50)		NOT NULL,
telefono1			NUMERIC(10)		NOT NULL,
telefono2			NUMERIC(10)		NOT NULL,
facebook			VARCHAR(30)		NOT NULL,
instagram			VARCHAR(30)		NOT NULL,
CONSTRAINT pk_personas PRIMARY KEY (tipo_documento, nro_documento)
);

use proyecto;
CREATE TABLE formulario_datos_familiares (
tipo_documento								VARCHAR(5)		NOT NULL,
nro_documento								NUMERIC(10)		NOT NULL,
nro_personas_que_habitan_su_hogar			INT				NOT NULL,
todos_saben_que_va_a_adoptar				VARCHAR(2)		NOT NULL,
todos_estan_de_acuerdo						VARCHAR(2)		NOT NULL,
que_sucederia_en_caso_de_embarazo			VARCHAR(100)	NOT NULL,
alergias									VARCHAR(2)		NOT NULL,	
que_pasaria_si_alguien_resultara_alergico	VARCHAR(100)	NOT NULL,
CONSTRAINT FK_DPersonales_DFamiliares FOREIGN KEY (tipo_documento, nro_documento)
REFERENCES formulario_datosPersonales(tipo_documento, nro_documento)
);

use proyecto;
CREATE TABLE formulario_datos_vivienda (
tipo_documento								VARCHAR(5)		NOT NULL,
nro_documento								NUMERIC(10)		NOT NULL,
tipo_vivienda								VARCHAR(20)		NOT NULL,	
propia_alquilada							VARCHAR(20)		NOT NULL,
permite_mascotas							VARCHAR(5)		NOT NULL,
vecinos_contra_animales						VARCHAR(5)		NOT NULL,
patio_terraza								VARCHAR(5)		NOT NULL,
piso										VARCHAR(50)		NOT NULL,
mudanza										VARCHAR(5)		NOT NULL,
viajes										VARCHAR(5)		NOT NULL,
CONSTRAINT FK_DPersonales_DVivienda FOREIGN KEY (tipo_documento, nro_documento)
REFERENCES formulario_datosPersonales(tipo_documento, nro_documento)
);

use proyecto;
create table formulario_antiguas_mascotas (
tipo_documento								VARCHAR(5)		NOT NULL,
nro_documento								NUMERIC(10)		NOT NULL,
animales_ha_tenido							VARCHAR(100)	NOT NULL,
donde_estan									VARCHAR(100)	NOT NULL,
porque										VARCHAR(100)	NOT NULL,
cuanto_tiempo_antiguos						VARCHAR(100)	NOT NULL,
CONSTRAINT FK_DPersonales_DAntiguasMascotas FOREIGN KEY (tipo_documento, nro_documento)
REFERENCES formulario_datosPersonales(tipo_documento, nro_documento));


use proyecto;
create table formulario_mascotas(
tipo_documento								VARCHAR(5)		NOT NULL,
nro_documento								NUMERIC(10)		NOT NULL,
animales_actuales							VARCHAR(100)	NOT NULL,
cuanto_tiempo_actuales						VARCHAR(100)	NOT NULL,
como_llegaron								VARCHAR(100)	NOT NULL,
desparasitado								VARCHAR(5)		NOT NULL,
esterilizado								VARCHAR(5)		NOT NULL,		
vacunado									VARCHAR(5)		NOT NULL,
actividades									VARCHAR(100)	NOT NULL,
dormira										VARCHAR(100)	NOT NULL,
permaneceraSolo								VARCHAR(100)	NOT NULL,
compartirConEl								VARCHAR(100)	NOT NULL,
nadieEnCasa									VARCHAR(100)	NOT NULL,
mudarse										VARCHAR(100)	NOT NULL,
gastos1										VARCHAR(50)     NOT NULL,	
gastos2										VARCHAR(50)     NOT NULL,
gastos3										VARCHAR(50)     NOT NULL,
gastos4										VARCHAR(50)     NOT NULL,
hacerseCargo								VARCHAR(50)     NOT NULL,
provienenIngresos							VARCHAR(50)     NOT NULL,
coberturaDeGastos							VARCHAR(100)    NOT NULL,	
periodoAjuste								VARCHAR(100)    NOT NULL,	
tiempoAjuste								VARCHAR(100)    NOT NULL,
visitaDomiciliaria							VARCHAR(5)		NOT NULL,
seguimiento									VARCHAR(5)		NOT NULL,
contrato									VARCHAR(5)		NOT NULL,
CONSTRAINT FK_DPersonales_DMascotas FOREIGN KEY (tipo_documento, nro_documento)
REFERENCES formulario_datosPersonales(tipo_documento, nro_documento)
);

use proyecto;
create table referencias (
tipo_documento								VARCHAR(5)		NOT NULL,
nro_documento								NUMERIC(10)		NOT NULL,
nombre										VARCHAR(50)		NOT NULL,
direccion									VARCHAR(30)		NOT NULL,
telefono									NUMERIC(10)		NOT NULL,
ocupacion									VARCHAR(30)		NOT NULL,
email										VARCHAR(100)	NOT NULL,
relacion_adoptante							VARCHAR(30)		NOT NULL,
CONSTRAINT FK_DPersonales_DReferencias FOREIGN KEY (tipo_documento, nro_documento)
REFERENCES formulario_datosPersonales(tipo_documento, nro_documento)
);