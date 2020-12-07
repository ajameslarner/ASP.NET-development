<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="shopping_cart.aspx.vb" Inherits="project_gnome.shopping_cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Browse</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="page-bg"></div>
    <div class="float-content">
        <div class="nav-fade">
        <ul>
            <li><a href="browse.aspx">Catalogue</a></li>
            <li class="selected"><a href="shopping_cart.aspx">Cart</a></li>
            <li><a href="profile.aspx">Profile</a></li>
        </ul>
    </div>
      <h2>Shopping Cart</h2>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Horizontal" CssClass="grid-format" DataKeyNames="cart_id">
          <Columns>
              <asp:BoundField DataField="cart_id" HeaderText="Cart Num" SortExpression="cart_id" ControlStyle-Height="20px" InsertVisible="False" ReadOnly="True" >
<ControlStyle Height="20px"></ControlStyle>
              </asp:BoundField>
              <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" >
              <ItemStyle Height="40px" />
              </asp:BoundField>
              <asp:ImageField DataImageUrlField="image_url">
              </asp:ImageField>
          </Columns>
                <EditRowStyle BorderStyle="None" />
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_cart]"></asp:SqlDataSource>
    </form>
</body>
</html>