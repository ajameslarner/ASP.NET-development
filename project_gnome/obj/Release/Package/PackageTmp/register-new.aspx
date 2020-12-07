<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/project_gnome.Master" CodeBehind="register-new.aspx.vb" Inherits="project_gnome.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="float-content">
      <h2>Register</h2>
        <p>You're on the right path.</p>
        <p>You're doing the right thing.</p> 
        <p>First Name</p>
        <p>&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="register-form"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" ForeColor="#FF5050" Text="*Required Field" Visible="False"></asp:Label>
        </p>
        <p>Last Name</p>
        <p>&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="register-form"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" ForeColor="#FF5050" Text="*Required Field" Visible="False"></asp:Label>
        </p>
        <p>Email Address</p>
        <p>&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="register-form" TextMode="Email"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" ForeColor="#FF5050" Text="*Required Field" Visible="False"></asp:Label>
        </p>
        <p>Username</p>
        <p>&nbsp;<asp:TextBox ID="TextBox4" runat="server" CssClass="register-form"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" ForeColor="#FF5050" Text="*Required Field" Visible="False"></asp:Label>
        </p>
        <p>Password</p>
        <p>&nbsp;<asp:TextBox ID="TextBox5" runat="server" CssClass="register-form" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" ForeColor="#FF5050" Text="*Required Field" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="button" />
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" ForeColor="#33CC33" Text="Registration Successful!" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_users(username, password) VALUES (@username, @password)" SelectCommand="SELECT * FROM [tbl_users]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="username" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="password" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_customers(first_name, last_name, email_address) VALUES (@firstname, @lastname, @email)" SelectCommand="SELECT * FROM [tbl_customers]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="firstname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="lastname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="email" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
        </p>
    </div>

    </asp:Content>