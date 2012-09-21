
Partial Class Administration_Admin_Services
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        FormsAuthentication.SignOut()
        Response.Redirect("~/Default.aspx")


    End Sub
End Class
