<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="catalogue.aspx.vb" Inherits="project_gnome.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
      <h2>Catalogue</h2>
        <p>Welcome, you're one of us now.</p>
        <br />
        <p>Filter by Category</p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Choose a Category</asp:ListItem>
                <asp:ListItem>Traditional</asp:ListItem>
                <asp:ListItem>Scary</asp:ListItem>
                <asp:ListItem>Funny</asp:ListItem>
                <asp:ListItem>Trolls</asp:ListItem>
                <asp:ListItem>Goblins</asp:ListItem>
                <asp:ListItem>Magical</asp:ListItem>
            </asp:DropDownList>
            </p>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_products] WHERE ([product_category] = @product_category)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="product_category" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_cart(user_id, item_1, item_2, item_3) VALUES (@cusid, @productid, @productname, @productprice)" SelectCommand="SELECT * FROM [tbl_cart]">
                <InsertParameters>
                    <asp:SessionParameter Name="cusid" SessionField="userid" />
                    <asp:SessionParameter Name="productid" SessionField="productid" />
                    <asp:SessionParameter Name="productname" SessionField="productname" />
                    <asp:SessionParameter Name="productprice" SessionField="productprice" />
                </InsertParameters>
            </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Horizontal" CssClass="grid-format" Visible="False">
          <Columns>
              <asp:CommandField ButtonType="Button" SelectText="Add to Cart" ShowSelectButton="True" />
              <asp:BoundField DataField="product_id" HeaderText="Item Number" SortExpression="product_id" />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        </div>

        
</asp:Content>
