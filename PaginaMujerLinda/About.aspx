<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PaginaMujerLinda.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <asp:Label ID="lblnombre" runat="server"></asp:Label>
    <asp:Label ID="lbledad" runat="server"></asp:Label>
    <asp:Label ID="lblcolor" runat="server"></asp:Label>

</asp:Content>
