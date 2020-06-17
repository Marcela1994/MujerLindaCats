<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulario4.aspx.cs" Inherits="Test.Principal.formulario4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="/Imagenes/mujerlinda_logo.jpg">
    <title>Datos de sus compañeros animales</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css">
    <link href="/estilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
            <center><table border="0">
                    <thead>
                        <tr><center>
                            <th><img src="/Imagenes/mujerlinda_logo.jpg" class="tituloImg"></th>
                            <th><h1 class="titulo">FORMULARIO DE ADOPCION</h1></th>
                        <th><img src="/Imagenes/mujerlinda_logo.jpg" class="tituloImg"></th>
                        </tr></center>
                    </thead>
                </table></center>
        <h2 class="subtitulo">INGRESO DE LA INFORMACION SOBRE SUS COMPAÑEROS ANIMALES PASADOS O ACTUALES</h2>
        <br>
        <hr>
        <br>
        <form class="container main-container" action="referencias.aspx" method="post">

            <div class="form-group">
                <input type="hidden" name="cc" value=">"/>
                <input type="hidden" name="tipo_id" value=""/>
                <label for="inputAnimalesHaTenido">Qué animales ha tenido </label>
                <textarea type="text" class="form-control" id="AnimalesHaTenido" name="AnimalesHaTenido" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>
            <br>
            <h4>Los que ya no están con usted</h4>
            <br>
            <div class="form-group">
                <label for="inputDonde_estan">Donde estan </label>
                <textarea type="text" class="form-control" id="donde_estan" name="donde_estan" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputporque">Porque </label>
                <textarea type="text" class="form-control" id="porque" name="porque" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputcuantotiempo">¿Cuánto tiempo vivió con usted? </label>
                <textarea type="text" class="form-control" id="cuantotiempo" name="cuantotiempo" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputAnimalesActuales">Actualmente, ¿qué animales tiene?</label>
                <textarea type="text" class="form-control" id="AnimalesActuales" name="AnimalesActuales" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputCuantoTiempo">¿Cuánto tiempo llevan con usted?</label>
                <textarea type="text" class="form-control" id="CuantoTiempo" name="CuantoTiempo" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputComoLlegaron">¿Cómo llegaron a usted?</label>
                <textarea type="text" class="form-control" id="ComoLlegaron" name="ComoLlegaron" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <h4>Los animales que ha tenido o tienen están o estuvieron: </h4>

            <div class="form-group">
                <label for="inputDesparasitados">Desparasitados</label>
                <select class="form-control" name="Desparasitados" id="Desparasitados" required="required">
                    <option>Seleccione una opcion...</option>
                    <option>SI</option>
                    <option>NO</option>
                </select>
            </div>

            <div class="form-group">
                <label for="inputEsterilizado">Esterilizados</label>
                <select class="form-control" name="Esterilizado" id="Esterilizado" required="required">
                    <option>Seleccione una opcion...</option>
                    <option>SI</option>
                    <option>NO</option>
                </select>
            </div>

            <div class="form-group">
                <label for="inputVacunados">Vacunados</label>
                <select class="form-control" name="vacunados" id="vacunados" required="required">
                    <option>Seleccione una opcion...</option>
                    <option>SI</option>
                    <option>NO</option>
                </select>
            </div>
            <br>
            <br>
            <h3 class="subtitulo">ESPACIO Y ACTIVIDADES PARA TU COMPAÑERO</h3>
            <br>
            <br>

            <div class="form-group">
                <label for="inputActividades">Qué tipo de actividades planeas realizar con su compañero gato</label>
                <textarea type="text" class="form-control" id="actividades" name="actividades" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputDormira">En dónde dormiría</label>
                <textarea type="text" class="form-control" id="dormira" name="dormira" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputpermaneceraSolo">¿Cuántas horas del día permanecería solo?</label>
                <textarea type="text" class="form-control" id="permaneceraSolo" name="permaneceraSolo" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputCompartirConEl">¿Cuántas horas del día puede compartir con él?</label>
                <textarea type="text" class="form-control" id="CompartirConEl" name="CompartirConEl" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputNadieEncasa">¿En dónde estaría mientras no hubiera nadie en casa?</label>
                <textarea type="text" class="form-control" id="NadieEncasa" name="NadieEncasa" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputmudarse">¿Qué sucedería con el animal si tuviera usted que mudarse a otra casa, ciudad o país?</label>
                <textarea type="text" class="form-control" id="mudarse" name="mudarse" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputGastos">¿Conoce los gastos que implica tener un animal de compañía? Enumere mínimo cuatro</label><br>
                1. <input type="text" class="form-control" id="gastos1" name="gastos1" placeholder="INGRESE SU RESPUESTA" required="required">
                2. <input type="text" class="form-control" id="gastos2" name="gastos2" placeholder="INGRESE SU RESPUESTA" required="required">
                3. <input type="text" class="form-control" id="gastos3" name="gastos3" placeholder="INGRESE SU RESPUESTA" required="required">
                4. <input type="text" class="form-control" id="gastos4" name="gastos4" placeholder="INGRESE SU RESPUESTA" required="required">
            </div>

            <div class="form-group">
                <label for="inputHacerseCargo">¿Quién se hará cargo económicamente del animal?</label>
                <input type="text" class="form-control" id="HacerseCargo" name="HacerseCargo" placeholder="INGRESE SU RESPUESTA" required="required">
            </div>

            <div class="form-group">
                <label for="inputProvieneningresos">¿De dónde provienen sus ingresos?</label>
                <input type="text" class="form-control" id="Provieneningresos" name="Provieneningresos" placeholder="INGRESE SU RESPUESTA" required="required">
            </div>

            <div class="form-group">
                <label for="inputCoberturaDeGastos">Todos los gastos relacionados los cubriremos de la siguiente forma</label>
                <textarea type="text" class="form-control" id="CoberturaDeGastos" name="CoberturaDeGastos" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputPeriodoAjuste"> ¿Está dispuesto a que el animal tenga un periodo de ajuste en el que aprenda dónde debe ir 
                    al baño y se adapte a la familia?</label>
                <textarea type="text" class="form-control" id="PeriodoAjuste" name="PeriodoAjuste" placeholder="INGRESE SU RESPUESTA" required="required">
                </textarea>
            </div>

            <div class="form-group">
                <label for="inputTiempoAjuste">¿Cuánto tiempo?</label>
                <input type="text" class="form-control" id="TiempoAjuste" name="TiempoAjuste" placeholder="INGRESE SU RESPUESTA" required="required">
            </div>

            <div class="form-group">
                <label for="inputVisitaDomiciliaria">¿Está de acuerdo en que se le haga una visita domiciliaria para conocer el hogar donde va a 
                    vivir antes de la adopción?</label>
                <select class="form-control" name="VisitaDomiciliaria" id="VisitaDomiciliaria" required="required">
                    <option>Seleccione una opcion...</option>
                    <option>SI</option>
                    <option>NO</option>
                </select>
            </div>

            <div class="form-group">
                <label for="inputSeguimiento">¿Está de acuerdo en que se haga un seguimiento después de la adopción?</label>
                <select class="form-control" name="Seguimiento" id="Seguimiento" required="required">
                    <option>Seleccione una opcion...</option>
                    <option>SI</option>
                    <option>NO</option>
                </select>
            </div>

            <div class="form-group">
                <label for="inputContrato">¿Está de acuerdo con firmar un contrato de adopción si el gato o perro le es dado en 
                    adopción?</label>
                <select class="form-control" name="contrato" id="contrato" required="required">
                    <option>Seleccione una opcion...</option>
                    <option>SI</option>
                    <option>NO</option>
                </select>
            </div>

            <center><button type="submit" class="btn btn-primary">SIGUIENTE</button></center>
        </form>
        
         <a href="Default.aspx"><img class="inicio" src="/Imagenes/inicio_profe.jpg" alt="Inicio"/><br></a>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js"></script>
</body>
</html>
