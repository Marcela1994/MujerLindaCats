<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="PaginaMujerLinda.Contactenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container main-container">
            <h1 class="titulo">Contacto</h1>
            <p class="contenido">Gracias por mostrar interes en nuestra causa de ayudar a animalitos que no cuentan con un hogar
                y poder brindarles una ayuda.</p>
            <br/><br/>
            <form action="contactenos" method="post">
                <div class="form-group">
                    <label for="inputName">Ingrese su nombre: </label>
                    <input type="text" class="form-control col-md-12" id="nombre" name="nombre" placeholder="INGRESE SU NOMBRE Y APELLIDO" required="required">
                </div>
                <br>
                <div class="form-group">
                    <label for="inputPhone">Ingrese su numero telefonico: </label>
                    <input type="text" class="form-control col-md-12" id="nombre" name="nombre" placeholder="INGRESE SU NÚMERO TELEFONICO" required="required">
                </div>
                <br>
                <div class="form-group">
                    <label for="inputEmail">Ingrese su numero correo electronico:</label>
                    <input type="email" class="form-control col-md-12" id="nombre" name="nombre" placeholder="INGRESE SU CORREO ELECTRONICO" required="required">
                </div>
                <br>
                <div class="form-group">
                    <label for="inputMensaje">Ingrese su mensaje:</label>
                    <textarea type="text" class="form-control col-md-12" id="mensaje" name="mensaje" placeholder="INGRESE SU MENSAJE" required="required"></textarea>
                    <br>
                    <br>
                    <center><button class="btn btn-primary" type="submit">Enviar Informacion</button></center>
                </div>
            </form>
        </div>
        <br>
        <p class="contenido">Gracias por su colaboracion</p>
        <br/>
        <div class="contenido">
            Para tramites de adopciones dirijase a la pestaña de adopciones y siga los pasos alli mencionados.
            <br/><br/>
            <a href="Adopciones.aspx">Adopciones</a>
            
        </div>
        <br>
        <a href="Default.aspx"><img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>
</asp:Content>
