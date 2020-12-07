<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="project_gnome.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-bg"></div>
    <div class="float-content">
        <div class="nav-fade">
        <ul>
            <li><a href="default.aspx">Home</a></li>
            <li class="selected"><a href="register.aspx">Register</a></li>
            <li><a href="login.aspx">Login</a></li>
        </ul>
    </div>
      <h2>Register</h2>
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
        <p>&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="register-form"></asp:TextBox>
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
        <p>&nbsp;<asp:TextBox ID="TextBox5" runat="server" CssClass="register-form"></asp:TextBox>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_customers(first_name, last_name, email_address) VALUES (@username, @password, @email)" SelectCommand="SELECT * FROM [tbl_customers]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="email" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_users(username, password) VALUES (@username, @password)" SelectCommand="SELECT * FROM [tbl_users]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="username" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="password" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
    </div>
    </form>
</body>
</html>
