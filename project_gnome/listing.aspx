<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="listing.aspx.vb" Inherits="project_gnome.listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="float-content">
        <h2>List your products!</h2>
        <p>Use the form below to list your own products for auction.</p>
        <p>Other users will be able to place bids on your listed products.</p>
        <p>
            <asp:TextBox ID="lname" runat="server" CssClass="register-form" placeholder="Product name"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="ldesc" runat="server" CssClass="register-form" placeholder="Product description"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="lprice" runat="server" CssClass="register-form" placeholder="Product price"></asp:TextBox>
        </p>
        <p>Choose a Category</p>
        <p>
            <asp:DropDownList ID="lcat" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_name"></asp:DropDownList>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [tbl_category]"></asp:SqlDataSource>
        </p>
        <p>Upload an image</p>
        <p>
        <asp:FileUpload ID="limg" placeholder="Product image" runat="server" CssClass="register-form" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Submit" />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_listings(listing_name, listing_desc, listing_asking_price, category_id, listing_image) VALUES (@lname, @ldesc, @lask, @lcat, @limg)" SelectCommand="SELECT * FROM [tbl_listings]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="lname" Name="lname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="ldesc" Name="ldesc" PropertyName="Text" />
                    <asp:ControlParameter ControlID="lprice" Name="lask" PropertyName="Text" />
                    <asp:ControlParameter ControlID="lcat" Name="lcat" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="limg" Name="limg" PropertyName="FileBytes" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
            </div>
</asp:Content>
