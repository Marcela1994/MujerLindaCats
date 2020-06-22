<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VistaFormularios.aspx.cs" Inherits="PaginaMujerLinda.VistaFormularios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="titulo">FORMULARIOS DILIGENCIADOS</h1>
    <br/>
    <br/>
    <asp:GridView runat="server" ID="resumenVistaFormulario" EmptyDataText="No se encontraron datos...">
        <Columns>
            <asp:BoundField AccessibleHeaderText="nro_documento" HeaderText="nro_documento" DataField="nro_documento" />
            <asp:BoundField AccessibleHeaderText="nombres" HeaderText="nombres" DataField="nombres" />
        </Columns>
    </asp:GridView>
    <a href="Default.aspx"><img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>
</asp:Content>
