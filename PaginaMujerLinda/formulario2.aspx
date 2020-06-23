<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFormularios.Master" AutoEventWireup="true" CodeBehind="Formulario2.aspx.cs" Inherits="PaginaMujerLinda.Formulario2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="subtitulo">INGRESO DE INFORMACION FAMILIAR</h2>
    <br>
    <hr>
    <br>
    <div class="container main-container">
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="Label7" runat="server" Text="Label">NÚMERO DE DOCUMENTO</asp:Label>
                <asp:TextBox ID="id_numDcto" runat="server" CssClass="form-control" placeHolder="NÚMERO DE DOCUMENTO"></asp:TextBox>
                <%--      <asp:RequiredFieldValidator runat="server" id="id_num" controltovalidate="id" errormessage="¡POR FAVOR INGRESE UN VALOR!" />--%>
            </div>
            <div class="form-group col-md-4">
                <asp:Label ID="Label8" runat="server" Text="Label">TIPO DE DOCUMENTO</asp:Label>
                <asp:DropDownList ID="tipoId" runat="server">
                    <asp:ListItem Text="CC" Value="0"></asp:ListItem>
                    <asp:ListItem Text="CE" Value="1"></asp:ListItem>
                    <asp:ListItem Text="PASAPORTE" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="Label1" runat="server" Text="Label">NÚMERO DE PERSONAS QUE HABITAN SU HOGAR</asp:Label>
                <asp:TextBox ID="numPersonas" runat="server" placeHolder="Número de personas que habitan su hogar" CssClass="form-control col-md-12"></asp:TextBox>
            </div>
            <div>
                <div class="form-group col-md-10">
                    <asp:Label ID="Label2" runat="server" Text="Label">Estan todos los miembros de la familia enterados de la intención de adoptar un animal de compañia.</asp:Label>
                    <asp:DropDownList ID="enterados" runat="server">
                        <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div>
                <div class="form-group col-md-10">
                    <asp:Label ID="Label3" runat="server" Text="Label">Están todos de acuerdo</asp:Label><br />
                    <asp:DropDownList ID="deAcuerdo" runat="server">
                        <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group col-md-10">
                <asp:Label ID="Label4" runat="server" Text="Label">¿Que sucedería con él animal; si usted, o en caso de ser hombre, su pareja quedara embarazada?</asp:Label>
                <asp:TextBox ID="embarazo" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-12"></asp:TextBox>
            </div>
            <div>
                <div class="form-group col-md-10">
                    <asp:Label ID="Label5" runat="server" Text="Label">¿Hay alguien en su familia con problemas o antecedente de alergia?</asp:Label><br />
                    <asp:DropDownList ID="alergias" runat="server">
                        <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group col-md-10">
                <asp:Label ID="Label6" runat="server" Text="Label">¿Que sucederia si alguien resulta alérgico al animal?</asp:Label>
                <asp:TextBox ID="alergicos" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-12"></asp:TextBox>
            </div>
            <asp:Button ID="siguiente" runat="server" Text="SIGUIENTE" CssClass="btn btn-primary" OnClick="siguiente_click" />
        </div>
    </div>
     <a href="Default.aspx"><img class="inicio" src="/Imagenes/inicio_profe.jpg" alt="Inicio"/><br></a>
</asp:Content>
