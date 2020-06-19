create proc consulta_usuario
(
@user varchar(20),
@pass varchar(20)
)
as
begin
select count (*) from dbo.usuarios u
where u.usuario = @user and u.clave = @pass;
end