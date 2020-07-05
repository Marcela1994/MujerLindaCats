<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFormularios.Master" AutoEventWireup="true" CodeBehind="Formulario4.aspx.cs" Inherits="PaginaMujerLinda.Formulario4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="subtitulo">INGRESO DE LA INFORMACION SOBRE SUS COMPAÑEROS ANIMALES PASADOS O ACTUALES</h2>
    <br>
    <hr>
    <br>
    <div class="container main-container">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label">¿QUE ANIMALES A TENIDO?</asp:Label>
            <br />
            <asp:TextBox ID="animalesTenido" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <br>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Label">LOS QUE YA NO ESTÁN CON USTED ¿DONDE ESTÁN?</asp:Label>
            <asp:TextBox ID="dondeEstan" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Label">¿POR QUE?</asp:Label>
            <asp:TextBox ID="porque" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Label">¿CUÁNTO TIEMPO VIVIÓ CON USTED?</asp:Label>
            <asp:TextBox ID="cuantoTiempo" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Label">ACTUALMENTE, ¿QUE ANIMALES TIENE?</asp:Label>
            <asp:TextBox ID="animalesTiene" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Label">¿CUÁNTOS TIEMPO LLEVAN CON USTED?</asp:Label>
            <asp:TextBox ID="tiempo" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Label">¿CÓMO LLEGARON A USTED?</asp:Label>
            <asp:TextBox ID="comoLlegaron" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <h4>Los animales que ha tenido o tienen están o estuvieron: </h4>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Label">DESPARASITADOS</asp:Label>
            <asp:DropDownList ID="desparasitado" runat="server" CssClass="form-control">
                <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Label">ESTERILIZADOS</asp:Label>
            <asp:DropDownList ID="esterilizados" runat="server" CssClass="form-control">
                <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Label">VACUNADOS</asp:Label>
            <asp:DropDownList ID="vacunados" runat="server" CssClass="form-control">
                <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br>
        <br>
        <h3 class="subtitulo">ESPACIO Y ACTIVIDADES PARA TU COMPAÑERO</h3>
        <br>
        <br>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Label">QUE TIPO DE ACTIVIDADES PLANEA REALIZAR CON SU COMPAÑERO GATO</asp:Label>
            <asp:TextBox ID="compañeroGato" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Label">¿EN DONDE DORMIRÁ?</asp:Label>
            <asp:TextBox ID="dormitorio" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Label">¿CUÁNTAS HORAS DEL DÍA PERMANECERÍA SOLO?</asp:Label>
            <asp:TextBox ID="soledad" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label14" runat="server" Text="Label">¿CUÁNTAS HORAS DEL DÍA PUEDE COMPARTIR CON ÉL?</asp:Label>
            <asp:TextBox ID="compartir" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label15" runat="server" Text="Label">¿EN DÓNDE ESTARÍA MIENTRAS NO HUBIERA NADIE EN CASA?</asp:Label>
            <asp:TextBox ID="soledadEnCasa" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label16" runat="server" Text="Label">¿QUÉ SUCEDERÍA CON EL ANIMAL SI TUVIERA USTED QUE MUDARSE A OTRA CASA, CIUDAD O PAÍS?</asp:Label>
            <asp:TextBox ID="mudanza" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label25" runat="server" Text="Label">¿CONOCE LOS GASTOS QUE IMPLICA TENER UNA ANIMAL DE COMPAÑIA? ENUMERE MINIMO 4:</asp:Label>
            <br />
            <asp:TextBox ID="gastos1" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox><br />
            <asp:TextBox ID="gastos2" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox><br />
            <asp:TextBox ID="gastos3" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox><br />
            <asp:TextBox ID="gastos4" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox><br />
        </div>
        <div class="form-group">
            <asp:Label ID="Label17" runat="server" Text="Label">¿QUIEN SE HARÁ CARGO ECONÓMICAMENTE DEL ANIMAL?</asp:Label>
            <asp:TextBox ID="responsable" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label18" runat="server" Text="Label">¿DE DONDE PROVIENEN SUS INGRESOS?</asp:Label>
            <asp:TextBox ID="ingresos" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label19" runat="server" Text="Label">TODOS LOS GASTOS RELACINADOS SERAN CUBIERTOS DE LA SUIGENTE FORMA</asp:Label>
            <asp:TextBox ID="gastosCubiertos" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label20" runat="server" Text="Label">¿ESTÁ DISPUESTO A QUE EL ANIMAL TENGA UN PERIODO DE AJUSTE EN EL QUE APRENDA DONDE IR AL BAÑO Y SE ADAPTE A LA FAMILIA</asp:Label>
            <asp:TextBox ID="adaptacion" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label21" runat="server" Text="Label">¿CUANTO TIEMPO?</asp:Label>
            <asp:TextBox ID="tiempoAdaptacion" runat="server" placeHolder="INGRESE SU RESPUESTA" CssClass="form-control col-md-9"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label22" runat="server" Text="Label">¿ESTÁ DE ACUERDO EN QUE SE LE HAGA UNA VISITA DOMICILIARIO PARA CONOCER EL HOGAR DONDE VA A VIVIR ANTES DE LA ADOPCIÓN?</asp:Label>
            <asp:DropDownList ID="ddlVisitaDomiciliaria" runat="server" CssClass="form-control">
                <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="Label23" runat="server" Text="Label">¿ESTA DE ACUERDO EN QUE SE HAGA UN SEGUIMIENTO DESPUÉS DE LA ADOPCIÓN?</asp:Label>
            <asp:DropDownList ID="ddlSeguimiento" runat="server" CssClass="form-control">
                <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label ID="Label24" runat="server" Text="Label">¿ESTÁ DE ACUERDO CON FIRMAR UN CONTRATO DE ADOPCIÓN SI EL GATO O PERRRO LE ES DADO EN ADOPCIÓN?</asp:Label>
            <asp:DropDownList ID="ddlContrato" runat="server" CssClass="form-control">
                <asp:ListItem Text="SELECCIONE UNA OPCIÓN" Value="0"></asp:ListItem>
                <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                <asp:ListItem Text="NO" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnSiguiente_guardar" runat="server" Text="Siguiente" CssClass="btn-primary" OnClick="btnSiguiente_guardar_Click"/>
        <asp:Label ID="mensaje_error" CssClass=".text-danger" runat="server"></asp:Label>
    </div>
    <a href="index.jsp"> <img class="inicio" src="Imagenes/inicio_profe.jpg" alt="Inicio"><br></a>
</asp:Content>
