<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="browse.aspx.vb" Inherits="project_gnome.browse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Browse</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="side-op-r">
        <h6>Cart</h6>
        <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="cart_id" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <span style="side-op-r">cart_id:
                <asp:Label ID="cart_idLabel" runat="server" Text='<%# Eval("cart_id") %>' />
                <br />
                product_id:
                <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                <br />
                product_name:
                <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
                <br />
                image_url:
                <asp:Label ID="image_urlLabel" runat="server" Text='<%# Eval("image_url") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">cart_id:
                <asp:Label ID="cart_idLabel1" runat="server" Text='<%# Eval("cart_id") %>' />
                <br />
                product_id:
                <asp:TextBox ID="product_idTextBox" runat="server" Text='<%# Bind("product_id") %>' />
                <br />
                product_name:
                <asp:TextBox ID="product_nameTextBox" runat="server" Text='<%# Bind("product_name") %>' />
                <br />
                image_url:
                <asp:TextBox ID="image_urlTextBox" runat="server" Text='<%# Bind("image_url") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">product_id:
                <asp:TextBox ID="product_idTextBox" runat="server" Text='<%# Bind("product_id") %>' />
                <br />product_name:
                <asp:TextBox ID="product_nameTextBox" runat="server" Text='<%# Bind("product_name") %>' />
                <br />image_url:
                <asp:TextBox ID="image_urlTextBox" runat="server" Text='<%# Bind("image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">cart_id:
                <asp:Label ID="cart_idLabel" runat="server" Text='<%# Eval("cart_id") %>' />
                <br />
                product_id:
                <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                <br />
                product_name:
                <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
                <br />
                image_url:
                <asp:Label ID="image_urlLabel" runat="server" Text='<%# Eval("image_url") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">cart_id:
                <asp:Label ID="cart_idLabel" runat="server" Text='<%# Eval("cart_id") %>' />
                <br />
                product_id:
                <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                <br />
                product_name:
                <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
                <br />
                image_url:
                <asp:Label ID="image_urlLabel" runat="server" Text='<%# Eval("image_url") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
            </div>
        <h6>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_cart] WHERE [cart_id] = @cart_id" InsertCommand="INSERT INTO [tbl_cart] ([product_id], [product_name], [image_url]) VALUES (@product_id, @product_name, @image_url)" SelectCommand="SELECT * FROM [tbl_cart]" UpdateCommand="UPDATE [tbl_cart] SET [product_id] = @product_id, [product_name] = @product_name, [image_url] = @image_url WHERE [cart_id] = @cart_id">
                <DeleteParameters>
                    <asp:Parameter Name="cart_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="product_id" Type="String" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="image_url" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_id" Type="String" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="image_url" Type="String" />
                    <asp:Parameter Name="cart_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </h6>
        </div>
    <div class="page-bg"></div>
    <div class="float-content">
        <div class="nav-fade">
        <ul>
            <li class="selected"><a href="browse.aspx">Catalogue</a></li>
            <li><a href="shopping_cart.aspx">Cart</a></li>
            <li><a href="profile.aspx">Profile</a></li>
        </ul>
    </div>
      <h2>Browse</h2>
        <h2>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Traditional</asp:ListItem>
                <asp:ListItem>Scary</asp:ListItem>
                <asp:ListItem>Funny</asp:ListItem>
                <asp:ListItem>Trolls</asp:ListItem>
                <asp:ListItem>Goblins</asp:ListItem>
                <asp:ListItem>Magical</asp:ListItem>
            </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_products] WHERE ([product_category] = @product_category)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="product_category" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
            </asp:SqlDataSource>
        </h2>
        <h2>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_cart(product_id, product_name, image_url) VALUES (@productid, @productname, @imageurl)" SelectCommand="SELECT * FROM [tbl_cart]">
                <InsertParameters>
                    <asp:SessionParameter Name="imageurl" SessionField="imageurl" />
                    <asp:SessionParameter Name="productid" SessionField="productid" />
                    <asp:SessionParameter Name="productname" SessionField="productname" />
                </InsertParameters>
            </asp:SqlDataSource>
        </h2>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Horizontal" CssClass="grid-format">
          <Columns>
              <asp:CommandField ButtonType="Button" SelectText="Add to Cart" ShowSelectButton="True" />
              <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" ItemStyle-Height="40px" >
<ControlStyle Height="20px" BackColor="#FF6699"></ControlStyle>
              <ItemStyle Height="40px" />
              </asp:BoundField>
              <asp:BoundField DataField="product_desc" HeaderText="Description" SortExpression="product_desc" ControlStyle-Height="20px" >
<ControlStyle Height="20px"></ControlStyle>
              </asp:BoundField>
              <asp:BoundField DataField="product_price" HeaderText="Price" SortExpression="product_price" />
              <asp:ImageField DataImageUrlField="image_url">
                  <ControlStyle Height="300px" Width="300px" />
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
    </form>
</body>
</html>
