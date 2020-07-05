<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFormularios.Master" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="PaginaMujerLinda.Formulario1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="subtitulo">INGRESO DE INFORMACION PERSONAL</h2>
    <br>
    <hr>
    <br>
    <div class="container main-container">
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="Label1" runat="server" Text="Label">NÚMERO DE DOCUMENTO</asp:Label>
                <asp:TextBox ID="id_numDcto" runat="server" CssClass="form-control" placeHolder="NÚMERO DE DOCUMENTO"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="POR FAVOR, INGRESE EL NÚMERO DE DOCUMENTO" ControlToValidate="id_numDcto"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-md-4">
                <asp:Label ID="Label2" runat="server" Text="Label">TIPO DE DOCUMENTO</asp:Label>
                <asp:DropDownList ID="tipoId" runat="server" CssClass="form-control">
                    <asp:ListItem Text="CC" Value="0"></asp:ListItem>
                    <asp:ListItem Text="CE" Value="1"></asp:ListItem>
                    <asp:ListItem Text="PASAPORTE" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Label">NOMBRES</asp:Label>
            <asp:TextBox ID="nombres" runat="server" CssClass="form-control col-md-12" placeHolder="INGRESE SUS NOMBRES"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="POR FAVOR, INGRESE SUS NOMBRES" ControlToValidate="nombres"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Label">APELLIDOS</asp:Label>
            <asp:TextBox ID="apellidos" runat="server" placeHolder="INGRESE SUS APELLIDOS" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="POR FAVOR, INGRESE SUS APELLIDOS" ControlToValidate="apellidos"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Label">DIRECCIÓN DE RECIDENCIA</asp:Label>
            <asp:TextBox ID="direccion1" runat="server" CssClass="form-control col-md-12" placeHolder="DIRECCIÓN DE RECIDENCIA"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="POR FAVOR, INGRESE LA DIRECCIÓN DE RECIDENCIA" ControlToValidate="direccion1"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Label">DIRECCIÓN DE TRABAJO</asp:Label>
            <asp:TextBox ID="direccion2" runat="server" placeHolder="DIRECCIÓN DE TRABAJO" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="POR FAVOR, AGREGAR LA DIRECCIÓN DE TRABAJO" ControlToValidate="direccion2"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Label">OCUPACIÓN</asp:Label>
            <asp:TextBox ID="ocupacion" runat="server" placeHolder="INGRESE SU OCUPACIÓN" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="POR FAVOR, AGREGUE SU OCUPACIÓN" ControlToValidate="ocupacion"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Label">CORREO ELECTRÓNICO</asp:Label>
            <asp:TextBox ID="email" runat="server" placeHolder="INGRESE SU EMAIL" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="POR FAVOR, INGRESE SU IMAIL" ControlToValidate="email"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Label">FACEBOOK</asp:Label>
            <asp:TextBox ID="facebook" runat="server" placeHolder="INGRESE SU FACEBOOK" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="POR FAVOR INGRESE SU FACEBOOK" ControlToValidate="facebook"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Label">INSTAGRAM</asp:Label>
            <asp:TextBox ID="instagram" runat="server" placeHolder="INGRESE SU INSTAGRAM" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="POR FAVOR, INGRESE SU INSTAGRAM" ControlToValidate="instagram"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Label">TELÉFONO 1</asp:Label>
            <asp:TextBox ID="telefono1" runat="server" placeHolder="INGRESE SU NÚMERO TELEFÓNICO" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="POR FAVOR, INGRESE SU NÚMERO" ControlToValidate="telefono1"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Label">TELEFÓNO 2</asp:Label>
            <asp:TextBox ID="telefono2" runat="server" placeHolder="INGRESE SU NÚMERO TELEFÓNICO" CssClass="form-control col-md-12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="telefono2"></asp:RequiredFieldValidator>
            <div class="form-group">
            <asp:Panel ID="pnl_guardar" runat="server">
                <asp:Button ID="siguiente" runat="server" Text="SIGUIENTE" CssClass="btn btn-primary" OnClick="siguiente_Click" />
            </asp:Panel>
            <asp:Panel ID="pnl_siguiente" runat="server">
                <a class="btn btn-primary" href="Formulario2.aspx">Siguiente...</a>
            </asp:Panel>
            </div>
        </div>
        <a href="Default.aspx">
            <img class="inicio" src="/Imagenes/inicio_profe.jpg" alt="Inicio" /><br>
        </a>
</asp:Content>
