<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="seleccion.aspx.cs" Inherits="PaginaMujerLinda.seleccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div  class="container main-container">
            <form action="vista_formularios"> 
                <h1 class="titulo">QUE OPERACION DESEA REALIZAR</h1>
                <br>
                <hr>
                <br>
                <center>
                    <table>
                        <td><a href="publicacion_adopciones.jsp"><img src="Imagenes/img_publicacion gatos.png" width="300" height="300"></a></td>
                        <td></td>
                        <td><a href="VistaFormularios.aspx"><img src="Imagenes/img_verformularios.jpg" width="300" height="300"></a></td>
                    </table>
                </center>
                <br>
                <br>
            </form>
            <a href="Default.aspx"><img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>
        </div>
</asp:Content>
