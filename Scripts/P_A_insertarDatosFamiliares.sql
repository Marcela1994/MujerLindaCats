create proc insertarDatosFamiliares
(
@tipoDoc varchar(5),
@nroDoc numeric(10,0),
@nroPersonas int,
@saben varchar(2),
@deAcuerdo varchar(2),
@embarazo varchar(100),
@alergiasExistentes varchar(2),
@alergiasAparezcan varchar(100)
)
as
begin
insert into dbo.formulario_datos_familiares (tipo_documento, nro_documento, nro_personas_que_habitan_su_hogar, todos_saben_que_va_a_adoptar, todos_estan_de_acuerdo, que_sucederia_en_caso_de_embarazo, alergias, que_pasaria_si_alguien_resultara_alergico)
values (@tipoDoc, @nroDoc, @nroPersonas, @saben, @deAcuerdo, @embarazo, @alergiasExistentes, @alergiasAparezcan)
end