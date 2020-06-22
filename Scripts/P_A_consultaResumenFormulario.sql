create proc resumenFormulario
as
begin
select dp.nro_documento, dp.nombres, dp.apellidos, dp.telefono1, dp.email, dp.direccion_hogar
from dbo.formulario_datosPersonales dp
end

