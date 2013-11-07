
Partial Class rostersMP
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        currentLbl.Text = "Today is " & DateTime.Now.ToString("MMMM dd, yyyy")
    End Sub
End Class

