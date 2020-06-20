<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PublicacionMascotas.aspx.cs" Inherits="PaginaMujerLinda.PublicacionMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - MujerLinda</title>
    <link href="estilo.css" rel="stylesheet" type="text/css"/>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="Imagenes/mujerlinda_logo.jpg" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <div class="titulo">
        <h1>Agregar nueva mascota</h1>
    </div>
    <form runat="server">
        <div class="container main-container">
            <br>
            <br>
            <br>
            <div class="form-group">
                <asp:Label runat="server" ID="solicitud_fotos" CssClass="exampleFormControlFile1">Agregue las fotografias</asp:Label>
                <asp:FileUpload runat="server" ID="ingreso_fotos" CssClass="form-control-file"></asp:FileUpload>
            </div>
            <br>
            <hr>
            <br>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label runat="server" ID="nombre" CssClass="exampleFormControlFile1">NOMBRE DE LA MASCOTA</asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="nombre_mascota" required="true"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" ID="edad" CssClass="exampleFormControlFile1">EDAD DE LA MASCOTA</asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="edad_mascota" required="true"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="color" CssClass="exampleFormControlFile1">COLOR DE LA MASCOTA</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control" ID="color_mascota" required="true"></asp:TextBox>
            </div>
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label col-sm-2 pt-0">Genero: </legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <asp:DropDownList runat="server" ID="genero" CssClass="custom-select my-1 mr-sm-2">
                                <asp:ListItem>HEMBRA</asp:ListItem>
                                <asp:ListItem>MACHO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label col-sm-2 pt-0">Esterilizado: </legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <asp:DropDownList runat="server" ID="esterilizado" CssClass="custom-select my-1 mr-sm-2">
                                <asp:ListItem>SI</asp:ListItem>
                                <asp:ListItem>NO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label col-sm-2 pt-0">Vacunado: </legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <asp:DropDownList runat="server" ID="vacunado" CssClass="custom-select my-1 mr-sm-2">
                                <asp:ListItem>SI</asp:ListItem>
                                <asp:ListItem>NO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
            </fieldset>
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label col-sm-2 pt-0">Desparasitado: </legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <asp:DropDownList runat="server" ID="desparasitado" CssClass="custom-select my-1 mr-sm-2">
                                <asp:ListItem>SI</asp:ListItem>
                                <asp:ListItem>NO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
            </fieldset>
            <center><asp:Button id="guardar_mascota" runat="server" Text="PUBLICAR" CssClass="btn btn-primary mb-2" OnClick="guardar_mascota_Click" />
        </div>

        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
    </form>
    <asp:Label ID="mensaje_error" CssClass=".text-danger" runat="server"></asp:Label>
    <a href="seleccion.aspx"><img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Volver"><br></a>
</body>
</html>
