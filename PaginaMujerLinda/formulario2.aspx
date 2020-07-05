<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFormularios.Master" AutoEventWireup="true" CodeBehind="Formulario2.aspx.cs" Inherits="PaginaMujerLinda.Formulario2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="subtitulo">INGRESO DE INFORMACION FAMILIAR</h2>
    <br>
    <hr>
    <br>
    <div class="container main-container">
        <div class="form-group">

            <asp:Label ID="Label1" runat="server" Text="Label">NÚMERO DE PERSONAS QUE HABITAN SU HOGAR</asp:Label>
            <asp:TextBox ID="numPersonas" runat="server" placeHolder="NÚMERO DE PERSONAS QUE HABITAN SU HOGAR" CssClass="form-control col-md-9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="POR FAVOR, INGRESE EN NÚMERO DE PERSONAS" ControlToValidate="numPersonas"></asp:RequiredFieldValidator>
        </div>
        <div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Label">ESTAN TODOS LOS MIEMBROS DE LA FAMILIA ENTERADOS DE LA INTENCIÓN DE ADOPTAR UN ANIMAL DE COMPAÑIA?</asp:Label>
                <asp:DropDownList ID="enterados" runat="server" CssClass="form-control col-md-9">
                    <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                    <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                    <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Label">ESTÁN TODOS DE ACUERDO</asp:Label><br />
                <asp:DropDownList ID="deAcuerdo" runat="server" CssClass="form-control col-md-9">
                    <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                    <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                    <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Label">¿QUE SUCEDERÍA CON ÉL ANIMAL; SI USTED, O EN CASO DE SER HOMBRE, SU PAREJA QUEDARA EMBARAZADA?</asp:Label>
            <asp:TextBox ID="embarazo" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="POR FAVOR, INGRESE LA INFORMACIÓN" ControlToValidate="embarazo"></asp:RequiredFieldValidator>
        </div>
        <div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Label">¿HAY ALGUIEN EN SU FAMILIA CON PROBLEMAS O ANTECEDENTE DE ALERGIA?</asp:Label><br />
                <asp:DropDownList ID="alergias" runat="server" CssClass="form-control col-md-9">
                    <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                    <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                    <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Label">¿QUE SUCEDERIA SI ALGUIEN RESULTA ALÉRGICO AL ANIMAL?</asp:Label>
            <asp:TextBox ID="alergicos" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="POR FAVOR, INGRESE LA INFORMACIÓN" ControlToValidate="alergicos"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Panel ID="pnl_guardar" runat="server">
            <asp:Button ID="siguiente" runat="server" Text="SIGUIENTE" CssClass="btn btn-primary" OnClick="siguiente_Click" />
        </asp:Panel>
        <asp:Panel ID="pnl_siguiente" runat="server" Visible="false">
            <a class="btn btn-primary" href="Formulario3.aspx">Siguiente...</a>
        </asp:Panel>
    </div>
    <a href="Default.aspx">
        <img class="inicio" src="/Imagenes/inicio_profe.jpg" alt="Inicio" /><br>
    </a>
</asp:Content>
