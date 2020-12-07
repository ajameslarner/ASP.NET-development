<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="mybids.aspx.vb" Inherits="project_gnome.mybids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
    <h2>My Bids</h2>
        
        <p>Here you will find the bids you've placed on listed products.</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="1" ForeColor="Black" GridLines="Horizontal" CssClass="grid-format" DataKeyNames="bid_id">
          <Columns>
              <asp:BoundField DataField="bid_id" HeaderText="Bid ID" SortExpression="bid_id" ControlStyle-Height="20px" InsertVisible="False" ReadOnly="True" >
              </asp:BoundField>
              <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" >
              </asp:BoundField>
              <asp:BoundField DataField="listing_id" HeaderText="Listing ID" SortExpression="listing_id" />
              <asp:BoundField DataField="bid_offer" HeaderText="Bid Offer" SortExpression="bid_offer" />
              <asp:CommandField ButtonType="Button" DeleteText="Cancel Bid" ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_bids] WHERE [bid_id] = @bid_id" InsertCommand="INSERT INTO [tbl_bids] ([user_id], [listing_id], [bid_offer]) VALUES (@user_id, @listing_id, @bid_offer)" SelectCommand="SELECT * FROM [tbl_bids]" UpdateCommand="UPDATE [tbl_bids] SET [user_id] = @user_id, [listing_id] = @listing_id, [bid_offer] = @bid_offer WHERE [bid_id] = @bid_id">
            <DeleteParameters>
                <asp:Parameter Name="bid_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="listing_id" Type="Int32" />
                <asp:Parameter Name="bid_offer" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="listing_id" Type="Int32" />
                <asp:Parameter Name="bid_offer" Type="Decimal" />
                <asp:Parameter Name="bid_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>

</asp:Content>
  