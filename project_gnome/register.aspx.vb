Public Class register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub TextBox1_TextChanged1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub TextBox1_TextChanged2(sender As Object, e As EventArgs)

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

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub SqlDataSource1_Selecting1(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub SqlDataSource1_Selecting2(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub SqlDataSource1_Selecting3(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub SqlDataSource2_Selecting1(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub
End Class