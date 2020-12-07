Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        GridView1.Visible = True


    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim rowdetail As Integer

        rowdetail = GridView1.SelectedIndex

        Session("productid") = GridView1.Rows(rowdetail).Cells(1).Text
        Session("productname") = GridView1.Rows(rowdetail).Cells(2).Text
        Session("productprice") = GridView1.Rows(rowdetail).Cells(4).Text

        SqlDataSource2.Insert()

    End Sub

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting

    End Sub
End Class