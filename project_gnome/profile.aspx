<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profile.aspx.vb" Inherits="project_gnome.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Profile</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-bg"></div>
    <div class="float-content">
        <div class="nav-fade">
        <ul>
            <li><a href="browse.aspx">Catalogue</a></li>
            <li><a href="shopping_cart.aspx">Cart</a></li>
            <li class="selected"><a href="profile.aspx">Profile</a></li>
        </ul>
    </div>
      <h2>Customer Dashboard</h2>
        <h5>Welcome to the Gnome Project.</h5>
        <p>We are a dynamic eShop supplying garden gnomes, trolls and goblins. The products we offer have been hand picked and selected with careful consideration for the following categories:</p>
        <ul>
            <li><a href="browse.aspx">Catalogue</a></li>
            <li><a href="shopping_cart.aspx">Shopping Cart</a></li>
        </ul>
        <p>Click here to logout.</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Logout" />
        </p>
    </div>
    </form>
</body>
</html>