Public Class WebForm3
    Inherits System.Web.UI.Page


    Public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Button1.Focus()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (TextBox1.Text = "") Then
            Label1.Visible = True
        ElseIf (TextBox2.Text = "") Then
            Label2.Visible = True
        ElseIf (TextBox3.Text = "") Then
            Label3.Visible = True
        ElseIf (TextBox4.Text = "") Then
            Label4.Visible = True
        ElseIf (TextBox5.Text = "") Then
            Label5.Visible = True
        Else
            Label6.Visible = True
            SqlDataSource1.Insert()
            SqlDataSource2.Insert()
            Response.Redirect("welcome.aspx")

            Label1.Visible = False
            Label2.Visible = False
            Label3.Visible = False
            Label4.Visible = False
            Label5.Visible = False

            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox5.Text = ""
        End If
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Button1.Focus()
    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Button1.Focus()
    End Sub

    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Button1.Focus()
    End Sub

    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Button1.Focus()
    End Sub

    Protected Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        Button1.Focus()
    End Sub

    Protected Sub TextBox1_TextChanged1(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class