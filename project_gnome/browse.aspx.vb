Public Class browse
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim rownum As Integer
        rownum = GridView1.SelectedIndex

        Session("productname") = GridView1.Rows(rownum).Cells(1).Text
        Session("productprice") = GridView1.Rows(rownum).Cells(3).Text
        Session("imageurl") = GridView1.Rows(rownum).Cells(4).Text

        SqlDataSource2.Insert()
    End Sub

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
End Class