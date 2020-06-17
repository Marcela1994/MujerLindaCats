<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaginaError.aspx.cs" Inherits="PaginaMujerLinda.PaginaError" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Lo sentimos...</h1>
            <p class="lead">Ha ocurrido un error y no hemos podido validar tu solicitud, intenta de nuevo mas tarde</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="Default.aspx" role="button">Volver al Inicio</a>
            </p>
            <img src="Imagenes/img_publicacion gatos.png" width="300" height="300" />
        </div>
    </div>
</asp:Content>
