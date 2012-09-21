
Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub LoginAction_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles LoginAction.Click

        Page.Validate()
        If (Not Page.IsValid) Then
            Return
        End If

        If FormsAuthentication.Authenticate(UsernameText.Text, PasswordText.Text) Then
            FormsAuthentication.RedirectFromLoginPage(UsernameText.Text, False)

        Else
            LegendStatus.Text = "Invalid Username or Password!"
        End If


    End Sub
End Class
