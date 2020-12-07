<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="index.aspx.vb" Inherits="project_gnome.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="float-content">
        
      <h2>Gnome Page</h2>
        <h5>Welcome to the Gnome Project.</h5>
        <p>This platform is already inhabited, you are merely a guest.</p>
        <p>Should you wish to proceed, step into our registration process and uncover the hidden collection.</p>
        <p><asp:Button ID="Button1" runat="server" Text="Get Started" /></p>
        <p>Otherwise, if you are one of us, you can use the login form to the right.</p>
    </div>
</asp:Content>
