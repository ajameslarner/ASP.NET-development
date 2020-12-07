<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="listedproducts.aspx.vb" Inherits="project_gnome.listedproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
        <h2>Listed Products</h2>
        <p>Browse and bid on selected products!</p>
        <br />
        <p>Filter by Category</p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_name"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [tbl_category]"></asp:SqlDataSource>
            
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your bid" CssClass="register-form"></asp:TextBox></p>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_bids(user_id, listing_id, bid_offer) VALUES (@uid, @listid, @bidoffer)" SelectCommand="SELECT * FROM [tbl_bids]">
                    <InsertParameters>
                        <asp:SessionParameter Name="uid" SessionField="userid" />
                        <asp:SessionParameter Name="listid" SessionField="listid" />
                        <asp:ControlParameter ControlID="TextBox1" Name="bidoffer" PropertyName="Text" />
                    </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Place Bid" >
                <ControlStyle Height="115px" Width="150px" />
                </asp:CommandField>
                <asp:BoundField DataField="listing_id" HeaderText="Listing ID" SortExpression="listing_id">
                <HeaderStyle Font-Size="Large" />
                <ItemStyle Font-Size="Medium" />
                </asp:BoundField>
                <asp:BoundField DataField="listing_name" HeaderText="Product Name" SortExpression="listing_name" ItemStyle-Height="40px" >
                    <ControlStyle Font-Size="Small" />
                    <HeaderStyle Font-Size="Large" />
<ItemStyle Height="40px" Font-Size="Medium"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="listing_desc" HeaderText="Product Description" SortExpression="listing_desc" ItemStyle-Height="40px" >
                    <HeaderStyle Font-Size="Large" />
<ItemStyle Height="40px" Font-Size="Medium"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="listing_asking_price" HeaderText="Asking Price" SortExpression="listing_asking_price" ItemStyle-Height="40px" >
                    <HeaderStyle Font-Size="Large" />
<ItemStyle Height="40px" Font-Size="Medium"></ItemStyle>
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="listing_image">
                  <ControlStyle Height="300px" Width="300px" />
              </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [listing_name], [listing_desc], [listing_asking_price], [listing_image], [listing_id] FROM [tbl_listings]"></asp:SqlDataSource>
    </div>

</asp:Content>
