Public Class listedproducts
    Inherits System.Web.UI.Page
    Public Class GlobalVariables
        Public Shared loginsession As String
        Public Shared inuser As String

        Public Shared activeuser As String

    End Class
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim rowdetail As Integer

        rowdetail = GridView1.SelectedIndex

        Session("listid") = GridView1.Rows(rowdetail).Cells(1).Text

        SqlDataSource4.Insert()

        Response.Redirect("mybids.aspx")
    End Sub
End Class