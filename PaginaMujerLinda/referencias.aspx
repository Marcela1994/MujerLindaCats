<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="referencias.aspx.cs" Inherits="Test.Principal.referencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="/Imagenes/mujerlinda_logo.jpg">
    <title>Referencias</title>
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
    <h2 class="subtitulo">REFERENCIAS</h2>
    <br>
    <hr>
    <br>
    <form class="container main-container" action="Adopciones.aspx" method="post"> 
        <div>
            <input type="hidden" name="cc" value=""/>
            <input type="hidden" name="tipo_id" value=""/>
            <h4 class="subtitulo"> REFERENCIA FAMILIAR</h4>
            <br>
            <div class="form-group">
                <label for="inputName">NOMBRES</label>
                <input type="text" class="form-control" id="nombre_ref_fam" name="nombre_ref_fam" placeholder="INGRESE SU NOMBRE" required="required">
            </div>

            <div class="form-group">
                <label for="inputAdress">DIRECCIÓN</label>
                <input type="text" class="form-control" id="direccion_ref_fam" name="direccion_ref_fam" placeholder="INGRESE LA DIRECCION DE SU HOGAR" required="required">
            </div>

            <div class="form-group">
                <label for="inputTelefono">TELEFONO</label>
                <input type="text" class="form-control" id="telefono_ref_fam" name="telefono_ref_fam" placeholder="INGRESE SU NÚMERO TELEFONICO" required="required">
            </div>

            <div class="form-group">
                <label for="inputOcupation">OCUPACION</label>
                <input type="text" class="form-control" id="ocupacion_ref_fam" name="ocupacion_ref_fam" placeholder="INGRESE SU OCUPACIÓN" required="required">
            </div>

            <div class="form-group">
                <label for="inputEmail">CORREO ELECTRONICO</label>
                <input type="email" class="form-control" id="email_ref_fam" name="email_ref_fam" placeholder="INGRESE SU EMAIL" required="required">
            </div>

            <div class="form-group">
                <label for="inputRel_adoptante">RELACION CON EL POSIBLE ADOPTANTE</label>
                <input type="text" class="form-control" id="rel_adoptante_ref_fam" name="rel_adoptante_ref_fam" placeholder="INGRESE SU RESPUESTA" required="required">
            </div>
        </div>

        <hr>
        <div>
            <input type="hidden" name="cc" value=""/>
            <input type="hidden" name="tipo_id" value=""/>
            <h4 class="subtitulo"> REFERENCIA PERSONAL</h4>
            <br>
            <div class="form-group">
                <label for="inputName">NOMBRES</label>
                <input type="text" class="form-control" id="nombre_ref_per" name="nombre_ref_per" placeholder="INGRESE SU NOMBRE" required="required">
            </div>

            <div class="form-group">
                <label for="inputAdress">DIRECCIÓN</label>
                <input type="text" class="form-control" id="direccion_ref_per" name="direccion_ref_per" placeholder="INGRESE LA DIRECCION DE SU HOGAR" required="required">
            </div>

            <div class="form-group">
                <label for="inputTelefono">TELEFONO</label>
                <input type="text" class="form-control" id="telefono_ref_per" name="telefono_ref_per" placeholder="INGRESE SU NÚMERO TELEFONICO" required="required">
            </div>

            <div class="form-group">
                <label for="inputOcupation">OCUPACION</label>
                <input type="text" class="form-control" id="ocupacion_ref_per" name="ocupacion_ref_per" placeholder="INGRESE SU OCUPACIÓN" required="required">
            </div>

            <div class="form-group">
                <label for="inputEmail">CORREO ELECTRONICO</label>
                <input type="email" class="form-control" id="email_ref_per" name="email_ref_per" placeholder="INGRESE SU EMAIL" required="required">
            </div>

            <div class="form-group">
                <label for="inputRel_adoptante">RELACION CON EL POSIBLE ADOPTANTE</label>
                <input type="text" class="form-control" id="rel_adoptante_ref_per" name="rel_adoptante_ref_per" placeholder="INGRESE SU RESPUESTA" required="required">
            </div>
        </div>
        <center><button type="submit" class="btn btn-primary">ENVIAR FORMULARIO</button></center>
    </form>
    <a href="Default.aspx"><img class="inicio" src="/Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js"></script>
</body>
</html>
