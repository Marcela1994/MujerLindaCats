create proc insertarDatosAntiguasMascotas
(
@tipoDoc varchar(5),
@nroDoc numeric(10,0),
@animalesAnteriores varchar(100),
@dondeEstan varchar(100),
@porque varchar(100),
@cuantoTiempoAntiguos varchar(100)
)
as
begin
insert into dbo.formulario_antiguas_mascotas (tipo_documento, nro_documento, animales_ha_tenido, donde_estan, porque, cuanto_tiempo_antiguos)
values (@tipoDoc, @nroDoc, @animalesAnteriores, @dondeEstan, @porque, @cuantoTiempoAntiguos)
end