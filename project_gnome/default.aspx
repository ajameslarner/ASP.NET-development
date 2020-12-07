<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="project_gnome._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-bg"></div>
    <div class="float-content">
      <h2>Gnome Page</h2>
        <h5>Welcome to the Gnome Project.</h5>
        <p>We are a dynamic eShop supplying garden gnomes, trolls and goblins. The products we offer have been hand picked and selected with careful consideration for the following categories:</p>
        <ul>
            <li>Traditional</li>
            <li>Funny</li>
            <li>Scary</li>
            <li>Magical</li>
            <li>Trolls</li>
            <li>Goblins</li>
        </ul>
        <p>If you wish to browse our catalogue please begin by registering your account with us!</p>
        <p><a href="register.aspx">
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Register" />
            </a></p>
    </div>
    </form>
</body>
</html>