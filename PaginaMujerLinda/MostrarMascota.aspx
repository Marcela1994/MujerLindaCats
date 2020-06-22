<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostrarMascota.aspx.cs" Inherits="PaginaMujerLinda.MostrarMascota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="titulo">ACA PODRAS VER LAS MASCOTAS QUE TENEMOS EN ADOPCION</h1>
    <hr />
    <div class="container">
        <div class="row">
            <div class="row justify-content-center">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <div class="col-4 text-center">
                            <div class="card" style="width: 18rem;">
                                <img class="imagenesCatalogo" src="data:image/jpg;base64,<%# Convert.ToBase64String((byte[]) DataBinder.Eval(Container.DataItem,"foto"))%>" />
                                <div class="card-body">
                                    <h5 class="card-title">NOMBRE: <%#DataBinder.Eval(Container.DataItem,"nombre")%></h5>
                                    <p class="card-text">Edad: <%# DataBinder.Eval(Container.DataItem,"edad_mascota")%><br />
                                                         Color: <%# DataBinder.Eval(Container.DataItem,"color_mascota")%><br />
                                                         Genero: <%# DataBinder.Eval(Container.DataItem,"genero")%><br />
                                                         Esterilizado: <%# DataBinder.Eval(Container.DataItem,"esterilizado")%><br />
                                                         Vacunado: <%# DataBinder.Eval(Container.DataItem,"vacunado")%><br />
                                                         Desparasitado: <%# DataBinder.Eval(Container.DataItem,"desparasitado")%></p>
                                    
                                    
                                    
                                    <!--<a href="MostrarMascota.aspx" class="btn btn-primary">Ver Mascotas</a>-->
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>

        </div>
    </div>

    <a href="Default.aspx"><img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>
</asp:Content>
