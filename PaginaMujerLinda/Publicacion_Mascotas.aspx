<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publicacion_Mascotas.aspx.cs" Inherits="PaginaMujerLinda.Publicacion_Mascotas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                    <asp:TextBox runat="server" CssClass="form-control" ID="nombre_mascota"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" ID="edad" CssClass="exampleFormControlFile1">EDAD DE LA MASCOTA</asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="edad_mascota"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="color" CssClass="exampleFormControlFile1">COLOR DE LA MASCOTA</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control" ID="color_mascota"></asp:TextBox>
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
    </form>
    <asp:Label ID="mensaje_error" CssClass=".text-danger" runat="server"></asp:Label>
</asp:Content>
