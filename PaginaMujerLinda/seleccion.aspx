<%@ Page Title="" Language="C#" MasterPageFile="~/Administrativos.Master" AutoEventWireup="true" CodeBehind="seleccion.aspx.cs" Inherits="PaginaMujerLinda.seleccion" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container main-container">
        <h1 class="titulo">QUE OPERACION DESEA REALIZAR</h1>
        <br>
        <hr>
        <br>
        <center>
                    <table>
                        <td><a href="PublicacionMascotas.aspx"><img src="Imagenes/img_publicacion gatos.png" width="300" height="300"></a></td>
                        <td></td>
                        <td><a href="VistaFormularios.aspx"><img src="Imagenes/img_verformularios.jpg" width="300" height="300"></a></td>
                        <td></td>
                        <!--<td><a href="VistaFormularios.aspx"><img src="Imagenes/editar_gatos.jpg" width="300" height="300"></a></td>-->
                    </table>
                </center>
        <br>
        <br>
        <a href="Default.aspx">
            <img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br>
        </a>
    </div>
</asp:Content>
