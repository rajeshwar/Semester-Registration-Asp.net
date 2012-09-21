
Partial Class student_SemesterRegistration
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        FormsAuthentication.SignOut()
        'FormsAuthentication.RedirectToLoginPage()
        Response.Redirect("~/default.aspx")


    End Sub
End Class
