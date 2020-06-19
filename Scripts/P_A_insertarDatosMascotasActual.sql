create proc insertarDatosMascotaActual
(
@tipoDoc varchar(5),
@nroDoc numeric(10,0),
@animalesActuales varchar(100),
@cuantoTiempo varchar(100),
@comoLlegaron varchar(100),
@desparasitado varchar(5),
@esterilizado varchar(5),
@vacunado varchar(5),
@actividades varchar(100),
@dormira varchar(100),
@permanecerSolo varchar(100),
@compartirConEl varchar(100),
@nadieEnCasa varchar(100),
@mudarse varchar(100),
@gasto1 varchar(50),
@gasto2 varchar(50),
@gasto3 varchar(50),
@gasto4 varchar(50),
@hacerseCargo varchar(50),
@provienenIngresos varchar(50),
@coberturaDeGasto varchar(100),
@periodoAjuste varchar(100),
@tiempoAjuste varchar(100),
@visitaDomiciliaria varchar(5),
@seguimiento varchar(5),
@contrato varchar(5)
)
as
begin 
insert into dbo.formulario_mascotas (tipo_documento, nro_documento, animales_actuales, cuanto_tiempo_actuales, como_llegaron, desparasitado, esterilizado, vacunado, actividades, dormira, permaneceraSolo, compartirConEl, nadieEnCasa, mudarse, gastos1, gastos2, gastos3, gastos4, hacerseCargo, provienenIngresos, coberturaDeGastos, periodoAjuste, tiempoAjuste, visitaDomiciliaria, seguimiento, contrato)
values (@tipoDoc, @nroDoc, @animalesActuales, @cuantoTiempo, @comoLlegaron, @desparasitado, @esterilizado, @vacunado, @actividades, @dormira, @permanecerSolo, @compartirConEl, @nadieEnCasa, @mudarse, @gasto1, @gasto2, @gasto3, @gasto4, @hacerseCargo, @provienenIngresos, @coberturaDeGasto, @periodoAjuste, @tiempoAjuste, @visitaDomiciliaria, @seguimiento, @contrato)
end