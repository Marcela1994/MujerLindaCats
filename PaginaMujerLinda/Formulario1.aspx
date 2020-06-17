<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFormularios.Master" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="PaginaMujerLinda.Formulario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="subtitulo">INGRESO DE INFORMACION PERSONAL</h2> <br> <hr> <br>
    <form action="formulario2.aspx" method="POST" class="container main-container">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputID">NÚMERO DE DOCUMENTO</label>
                <input type="text" class="form-control" id="id" name="id" placeholder="NÚMERO DE DOCUMENTO" required="required">
            </div>
            <div class="form-group col-md-4">
                <label for="inputtipoID">TIPO DE DOCUMENTO</label>
                <select id="inputTID" class="form-control" name="tipoID" id="tipoID" required="required">
                    <option selected>CC</option>
                    <option>CE</option>
                    <option>PASAPORTE</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="inputName" class="col-md-6">NOMBRES</label>
            <input type="text" class="form-control col-md-12" id="nombre" name="nombre" placeholder="INGRESE SU NOMBRE" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputLastName">APELLIDOS</label>
            <input type="text" class="form-control col-md-12" id="apellidos" name="apellidos" placeholder="INGRESE SUS APELLIDOS" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputAdress">DIRECCIÓN DE RESIDENCIA</label>
            <input type="text" class="form-control col-md-12" id="direccion1" name="direccion1" placeholder="INGRESE LA DIRECCION DE SU HOGAR" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputAdress2">DIRECCIÓN DE TRABAJO</label>
            <input type="text" class="form-control col-md-12" id="direccion2" name="direccion2" placeholder="INGRESE LA DIRECCION DE SU TRABAJO"/>
        </div>

        <div class="form-group">
            <label for="inputOcupation">OCUPACION</label>
            <input type="text" class="form-control col-md-12" id="ocupacion" name="ocupacion" placeholder="INGRESE SU OCUPACIÓN" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputEmail">CORREO ELECTRONICO</label>
            <input type="email" class="form-control col-md-12" id="email" name="email" placeholder="INGRESE SU EMAIL" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputFacebook">FACEBOOK</label>
            <input type="url" class="form-control col-md-12" id="facebook" name="facebook" placeholder="INGRESE SU FACEBOOK" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputInstagram">INSTAGRAM</label>
            <input type="text" class="form-control col-md-12" id="Instagram" name="Instagram" placeholder="INGRESE SU INSTAGRAM" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputTelefono">TELEFONO</label>
            <input type="text" class="form-control col-md-12" id="telefono1" name="telefono1" placeholder="INGRESE SU NÚMERO TELEFONICO" required="required"/>
        </div>

        <div class="form-group">
            <label for="inputTelefono2">TELEFONO</label>
            <input type="text" class="form-control col-md-12" id="telefono2" name="telefono2" placeholder="INGRESE SU NÚMERO TELEFONICO" required="required"/>
        </div>

        <center><button type="submit" class="btn btn-primary">SIGUIENTE</button></center>

    </form>

    <a href="index.aspx"><img class="inicio" src="/Imagenes/inicio_profe.jpg" alt="Inicio"/><br></a>
</asp:Content>
