﻿Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click2(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click3(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click4(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("default.aspx")
    End Sub
End Class