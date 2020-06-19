create proc insertarReferencias
(
@tipoDoc varchar(5),
@nroDoc numeric(10,0),
@nombre varchar(50),
@direccion varchar(30),
@telefono numeric(10,0),
@ocupacion varchar(30),
@email varchar(100),
@relacionAdoptante varchar(30)
)
as
begin
insert into dbo.referencias (tipo_documento, nro_documento, nombre, direccion, telefono, ocupacion, email, relacion_adoptante)
values (@tipoDoc, @nroDoc, @nombre, @direccion, @telefono, @ocupacion, @email, @relacionAdoptante)
end