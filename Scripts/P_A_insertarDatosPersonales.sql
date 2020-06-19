create proc insertarDatosPersonales
(
@tipoDoc varchar(5),
@documento numeric(10,0),
@nombre varchar(50),
@apellido varchar(50),
@email varchar(100),
@dirHogar varchar(100),
@dirTrabajo varchar(100),
@ocupacion varchar(50),
@tel_1 numeric(10,0),
@tel_2 numeric(10,0),
@facebook varchar(30),
@instagram varchar(30)
)
as
begin
insert into dbo.formulario_datosPersonales (tipo_documento, nro_documento, nombres, apellidos, email, direccion_hogar, direccion_trabajo, ocupacion, telefono1, telefono2, facebook, instagram)
values (@tipoDoc, @documento, @nombre, @apellido, @email, @dirHogar, @dirTrabajo, @ocupacion, @tel_1, @tel_2, @facebook, @instagram)
end;