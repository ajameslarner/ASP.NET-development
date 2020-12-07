<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="cart.aspx.vb" Inherits="project_gnome.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
      <h2>Shopping Cart</h2>
        <br />
        <br />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Horizontal" CssClass="grid-format" DataKeyNames="cart_id">
          <Columns>
              <asp:CommandField ShowDeleteButton="True" />
              <asp:BoundField DataField="user_id" HeaderText="Customer ID" SortExpression="user_id" ControlStyle-Height="20px" >
              </asp:BoundField>
              <asp:BoundField DataField="item_1" HeaderText="Product ID" SortExpression="item_1" >
              </asp:BoundField>
              <asp:BoundField DataField="item_2" HeaderText="Product Name" SortExpression="item_2" />
              <asp:BoundField DataField="item_3" HeaderText="Price" SortExpression="item_3" />
              <asp:BoundField DataField="cart_id" HeaderText="Cart ID" SortExpression="cart_id" InsertVisible="False" ReadOnly="True" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_orders(user_id, product_name, product_price) VALUES (@userid, @productname, @productprice)" SelectCommand="SELECT * FROM [tbl_orders]">
            <InsertParameters>
                <asp:SessionParameter Name="userid" SessionField="userid" />
                <asp:SessionParameter Name="productname" SessionField="productname" />
                <asp:Parameter DefaultValue="productprice" Name="productprice" />
            </InsertParameters>
        </asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [item_1], [item_2], [item_3], [cart_id] FROM [tbl_cart] WHERE ([user_id] = @user_id)" DeleteCommand="DELETE FROM [tbl_cart] WHERE [cart_id] = @cart_id" InsertCommand="INSERT INTO [tbl_cart] ([user_id], [item_1], [item_2], [item_3]) VALUES (@user_id, @item_1, @item_2, @item_3)" UpdateCommand="UPDATE [tbl_cart] SET [user_id] = @user_id, [item_1] = @item_1, [item_2] = @item_2, [item_3] = @item_3 WHERE [cart_id] = @cart_id">
            <DeleteParameters>
                <asp:Parameter Name="cart_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="item_1" Type="String" />
                <asp:Parameter Name="item_2" Type="String" />
                <asp:Parameter Name="item_3" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="item_1" Type="String" />
                <asp:Parameter Name="item_2" Type="String" />
                <asp:Parameter Name="item_3" Type="String" />
                <asp:Parameter Name="cart_id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
