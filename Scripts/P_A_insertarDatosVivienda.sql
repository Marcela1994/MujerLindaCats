create proc insertarDatosVivienda
(
@tipoDoc varchar(5),
@nroDoc numeric(10,0),
@tipoVivienda varchar(20),
@propiaAlquilada varchar(20),
@permiteMascotas varchar(5),
@vecinos varchar(5),
@patioTerraza varchar(5),
@piso varchar(50),
@mudanza varchar(5),
@viajes varchar(5)
)
as
begin
insert into dbo.formulario_datos_vivienda (tipo_documento, nro_documento, tipo_vivienda, propia_alquilada, permite_mascotas, vecinos_contra_animales, patio_terraza, piso, mudanza, viajes)
values (@tipoDoc, @nroDoc, @tipoVivienda, @propiaAlquilada, @permiteMascotas, @vecinos, @patioTerraza, @piso, @mudanza, @viajes)
end