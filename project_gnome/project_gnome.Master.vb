Public Class Site1
    Inherits System.Web.UI.MasterPage

    Public Class GlobalVariables
        Public Shared loginsession As String
        Public Shared inuser As String

        Public Shared activeuser As String

    End Class

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If GlobalVariables.loginsession = "true" Then ListView1.Visible = True

        If GlobalVariables.loginsession = "true" Then TextBox1.Visible = False
        If GlobalVariables.loginsession = "true" Then TextBox2.Visible = False
        If GlobalVariables.loginsession = "true" Then Label1.Text = "Welcome"
        If GlobalVariables.loginsession = "true" Then Button1.Visible = False
        If GlobalVariables.loginsession = "true" Then Button2.Visible = True
        If GlobalVariables.loginsession = "true" Then Label2.Visible = True
        If GlobalVariables.loginsession = "true" Then Label4.Visible = False
        If GlobalVariables.loginsession = "true" Then Label6.Visible = True
        If GlobalVariables.loginsession = "true" Then Label10.Visible = True
        If GlobalVariables.loginsession = "true" Then Label11.Visible = True
        If GlobalVariables.loginsession = "true" Then Label12.Visible = True

        If GlobalVariables.loginsession = "true" Then Label1.Text = "Welcome, " & GlobalVariables.inuser

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim usernum As Integer

        usernum = GridView1.SelectedValue

        If GridView1.Rows.Count = 1 Then GlobalVariables.loginsession = "true"
        If GlobalVariables.loginsession = "true" Then Session("userid") = GridView1.Rows(usernum).Cells(0).Text

        GlobalVariables.activeuser = Session("userid")

        If GlobalVariables.loginsession = "true" Then Response.Redirect("catalogue.aspx")

        If GlobalVariables.loginsession = "true" Then TextBox1.Visible = False
        If GlobalVariables.loginsession = "true" Then TextBox2.Visible = False
        If GlobalVariables.loginsession = "true" Then Label1.Text = "Welcome"
        If GlobalVariables.loginsession = "true" Then Button1.Visible = False
        If GlobalVariables.loginsession = "true" Then Button2.Visible = True
        If GlobalVariables.loginsession = "true" Then Label2.Visible = True
        If GlobalVariables.loginsession = "true" Then Label4.Visible = False
        If GlobalVariables.loginsession = "true" Then Label6.Visible = True
        If GlobalVariables.loginsession = "true" Then Label10.Visible = True
        If GlobalVariables.loginsession = "true" Then Label11.Visible = True
        If GlobalVariables.loginsession = "true" Then Label12.Visible = True

        If GlobalVariables.loginsession = "true" Then Label7.Visible = False Else Label7.Visible = True

        GlobalVariables.inuser = TextBox1.Text

        If GlobalVariables.loginsession = "true" Then Label1.Text = "Welcome" & GlobalVariables.inuser


    End Sub

    Protected Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub

    Protected Sub SqlDataSource3_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource3.Selecting

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click



        If GlobalVariables.loginsession = "true" Then TextBox1.Visible = True

        If GlobalVariables.loginsession = "true" Then TextBox2.Visible = True
        If GlobalVariables.loginsession = "true" Then Label1.Text = "Customers"
        If GlobalVariables.loginsession = "true" Then Button1.Visible = True
        If GlobalVariables.loginsession = "true" Then Button2.Visible = False
        If GlobalVariables.loginsession = "true" Then Label2.Visible = False
        If GlobalVariables.loginsession = "true" Then Label4.Visible = True
        If GlobalVariables.loginsession = "true" Then Label6.Visible = False
        If GlobalVariables.loginsession = "true" Then Label6.Visible = False
        If GlobalVariables.loginsession = "true" Then Label12.Visible = True

        GlobalVariables.loginsession = "false"

        Session("userid") = "0"

        SqlDataSource1.SelectCommand = "SELECT * FROM [tbl_users] WHERE (([username] = @username) AND ([password] = @password))"

        If GlobalVariables.loginsession = "false" Then Response.Redirect("index.aspx")

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class