<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PaginaMujerLinda._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <center><table border="0">
                    <thead>
                        <tr><center>
                        <th><h1 class="titulo">MUJER</h1></th>
                        <th><img class="inicial" src="Imagenes/mujerlinda_logo.jpg"></th>
                        <th><h1 class="titulo">LINDA</h1></th>
                    </center></tr>
                    </thead><a href="Default.aspx">Default.aspx</a>
                </table></center>
        <br>
        <hr>
        <br>
    </div>
    <div class="container main-container">
        <p class="parrafoCentral">
            Mujerlinda es una fundación sin ánimo de lucro que lleva 8 años rescatando, rehabilitando y 
                dando en adopción gatos rescatados de diferentes zonas de Bogotá, una labor realizada con 
                amor y dedicación por su fundadora Jaqueline Torres. Durante los años de trabajo de esta fundación 
                su creadora y colaboradores se han encargado de concientizar a las personas acerca de la 
                importancia de adoptar, de brindarle una nueva oportunidad a muchos animales que han sido 
                rescatados del abandono y el maltrato del que han sido víctimas. Para garantizar la seguridad 
                de los animales la fundación realiza un debido proceso de adopción en el que se conoce la 
                razón que tienen para adoptar.
                La fundación se financia con donaciones que recibe como comida, medicamentos y arena sanitaria.
                Y con la venta de productos variados como pocillos, sacos, babuchas, bolsos, 
                monederos entre otros.
        </p>
        <hr>
        <div class="row justify-content-center">
            <div class="col-4 text-center">
                <div class="card" style="width: 18rem;">
                    <img src="gif/adopciones.gif" class="card-img-top" alt="adopciones" width="250px" height="250px">
                    <div class="card-body">
                        <h5 class="card-title">Adopciones</h5>
                        <p class="card-text">Busca tu gato ideal</p>
                        <a href="MostrarMascota.aspx" class="btn btn-primary">Ver Mascotas</a>
                    </div>
                </div>
            </div>
            <div class="col-4 text-center">
                <div class="card" style="width: 18rem;">
                    <img src="gif/contactenos.gif" class="card-img-top" alt="Contactenos" width="250px" height="250px">
                    <div class="card-body">
                        <h5 class="card-title">Contactenos</h5>
                        <p class="card-text">En que podemos ayudarle... </p>
                        <a href="Contactenos.aspx" class="btn btn-primary">Contactenos</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h3 class="text-primary text-center">Siguenos</h3>
    <div class="text-center">
        <a href="https://web.facebook.com/mujerlindaccesorios/?epa=SEARCH_BOX">
            <img src="Imagenes/facebook.png" class="redes-sociales" alt="facebook" /></a>
        <a href="https://www.instagram.com/mujerlinda_/">
            <img src="Imagenes/instagram.jfif" class="redes-sociales" alt="facebook" /></a>
    </div>
</asp:Content>
