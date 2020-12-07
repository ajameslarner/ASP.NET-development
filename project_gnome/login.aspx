<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="project_gnome.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-bg"></div>
    <div class="float-content">
        <div class="nav-fade">
        <ul>
            <li><a href="default.aspx">Home</a></li>
            <li><a href="register.aspx">Register</a></li>
            <li class="selected"><a href="login.aspx">Login</a></li>
        </ul>
    </div>
      <h2>Login
          </h2>
        <p>Username
            </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="register-form"></asp:TextBox>
          </p>
        <p>
            <asp:Label ID="Label1" runat="server" ForeColor="#FF5050" Text="*Username not found" Visible="False"></asp:Label>
          </p>
        <p>Password
            </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="register-form"></asp:TextBox>
          </p>
        <p>
            <asp:Label ID="Label2" runat="server" ForeColor="#FF5050" Text="*Incorrect password" Visible="False"></asp:Label>
          </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button" />
          </p>
        <p>
            <asp:Label ID="Label3" runat="server" ForeColor="#33CC33" Text="You have successfully logged in!" Visible="False"></asp:Label>
          </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="privileges" HeaderText="privileges" SortExpression="privileges" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_users] WHERE (([username] = @username) AND ([password] = @password))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>

    </form>
</body>
</html>
