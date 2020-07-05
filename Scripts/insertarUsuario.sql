create proc insertarUsuario
(
@doc int,
@usuario varchar(20),
@clave varchar(20),
@nombre varchar(50)
)
as
begin
insert into dbo.usuarios(ID, usuario, clave, nombre)
values (@doc, @usuario, @clave, @nombre);
SELECT @@ROWCOUNT as CantRegs;
end;