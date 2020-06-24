<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaGeneral.Master" AutoEventWireup="true" CodeBehind="VistaFormularios.aspx.cs" Inherits="PaginaMujerLinda.VistaFormularios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="titulo">FORMULARIOS DILIGENCIADOS</h1>
    <br />
    <br />
    <div id="mainResumen" class="table-responsive" runat="server">
        <asp:GridView runat="server"
            ID="ResumenFormularios_gr"
            AllowPaging="true"
            AllowSorting="true"
            AutoGenerateColumns="false"
            CssClass="table table-bordered table-striped table-hover small"
            UseAccessibleHeader="true"
            OnPreRender="Grid_PreRender"
            EmptyDataText="!No hay formularios pendientes ... ¡"
            OnPageIndexChanging="ResumenFormularios_gr_PageIndexChanging"
            OnSelectedIndexChanged="ResumenFormularios_gr_SelectedIndexChanged"
            DataKeyNames="nro_documento,nombres,apellidos">
            <Columns>
                <asp:BoundField HeaderText="nro_documento" AccessibleHeaderText="nro_documento" DataField="nro_documento" />
                <asp:BoundField HeaderText="nombres" AccessibleHeaderText="nombres" DataField="nombres" />
                <asp:BoundField HeaderText="apellidos" AccessibleHeaderText="apellidos" DataField="apellidos" />
                <asp:BoundField HeaderText="telefono1" AccessibleHeaderText="telefono1" DataField="telefono1" />
                <asp:BoundField HeaderText="email" AccessibleHeaderText="email" DataField="email" />
                <asp:BoundField HeaderText="direccion_hogar" AccessibleHeaderText="direccion_hogar" DataField="direccion_hogar" />
            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" Position="Bottom" />
        </asp:GridView>
    </div>
    <a href="Default.aspx">
        <img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br>
    </a>
</asp:Content>
