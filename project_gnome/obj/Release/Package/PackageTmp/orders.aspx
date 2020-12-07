<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="orders.aspx.vb" Inherits="project_gnome.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
      <h2>Orders</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
                <asp:BoundField DataField="cart_id" HeaderText="cart_id" SortExpression="cart_id" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [order_id], [cart_id], [product_name], [product_price], [user_id] FROM [tbl_orders] WHERE ([user_id] = @user_id)">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
