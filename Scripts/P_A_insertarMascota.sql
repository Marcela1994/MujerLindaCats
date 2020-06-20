
create proc insertarMascota 
(
@nombre varchar(25),
@edad varchar(20),
@color varchar(30),
@genero varchar(6),
@esterilizado varchar(5),
@vacuna varchar(5),
@desparasitado varchar(5),
@foto image
)
as
begin 
insert into dbo.mascota (nombre, edad_mascota, color_mascota, genero, esterilizado, vacunado, desparasitado, foto)
values (@nombre, @edad, @color, @genero, @esterilizado, @vacuna, @desparasitado, @foto);
SELECT @@ROWCOUNT as CantRegs;
end


insert into dbo.usuarios (ID, usuario, clave, nombre)
values (1234, 'admin', 'admin', 'marce')