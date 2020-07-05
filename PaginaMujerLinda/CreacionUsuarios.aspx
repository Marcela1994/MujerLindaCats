<%@ Page Title="" Language="C#" MasterPageFile="~/Administrativos.Master" AutoEventWireup="true" CodeBehind="CreacionUsuarios.aspx.cs" Inherits="PaginaMujerLinda.CreacionUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="titulo">CREACIÓN DE NUEVOS USUARIOS</h1>
    <asp:Label ID="lblDocumento" runat="server" >Ingrese el número de documento del colaborador:</asp:Label>
    <asp:TextBox type="text" ID="txtDocumento" runat="server" placeholder="Ingrese el documento"></asp:TextBox>
    <br />
    <br />    
    <asp:Label ID="lblNombre" runat="server" >Ingrese el nombre del colaborador:</asp:Label>
    <asp:TextBox type="text" ID="txtNombre" runat="server" placeholder="Ingrese el nombre"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblUser" runat="server" >Ingrese el usuario del colaborador:</asp:Label>
    <asp:TextBox type="text" ID="txtUsuario" runat="server" placeholder="Ingrese el usuario"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPassword" runat="server" >Ingrese la contraseña del colaborador:</asp:Label>
    <asp:TextBox type="password" ID="txtPassword" runat="server" placeholder="Ingrese la contraseña"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnCrearUser" CssClass="btn btn-primary" Text="CREAR" runat="server" OnClick="btnCrearUser_Click" />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="mensaje_error" CssClass=".text-danger" runat="server"></asp:Label>
</asp:Content>
