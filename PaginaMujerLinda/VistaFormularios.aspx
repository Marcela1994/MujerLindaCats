<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VistaFormularios.aspx.cs" Inherits="PaginaMujerLinda.VistaFormularios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="titulo">FORMULARIOS DILIGENCIADOS</h1><BR><br>
    <div class="container main-container">
    <table class="table table-dark">
    <thead>
        <tr>
            <th scope="col">Nro de documento</th>
            <th scope="col">Nombre del adoptante</th>
            <th scope="col">Apellido del adoptante</th>
            <th scope="col">Nro de telefono</th>
            <th scope="col">Correo Electronico</th>
            <th scope="col">Direccion del hogar</th>
            <th scope="col">Ver detalles</th>
        </tr>
      </thead>  
        <tbody>
            <tr>
            <th scope="row">Id dato DB</th>
            <td>primer dato DB</td>
            <td>segundo dato DB</td>
            <td>tercer dato DB</td>
            <td>cuarto dato DB</td>
            <td>quinto dato DB</td>
            <td><a href="Ct_detalle_formulario">Ver detalle</a></td>
             </tr> 
        </tbody>
        </table>
        <a href="Default.aspx"><img class="inicio" src="App_Data/Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>
</asp:Content>
