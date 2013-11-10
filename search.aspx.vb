
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub searchTB_TextChanged(sender As Object, e As EventArgs) Handles searchTB.TextChanged
        Dim searchword As String
        searchword = "Select * From rosters where (name Like '%" + searchTB.Text.ToString() + "%') or (position Like '%" + searchTB.Text.ToString() + "%') or (college Like '%" + searchTB.Text.ToString() + "%') or (number Like '%" + searchTB.Text.ToString() + "%')"        SqlDataSource1.SelectCommand = searchword


    End Sub

    
    Protected Sub search2TB_TextChanged(sender As Object, e As EventArgs) Handles search2TB.TextChanged
        Dim searchword As String
        searchword = "Select * From rosters where (name Like '%" + search2TB.Text.ToString() + "%') or (position Like '%" + search2TB.Text.ToString() + "%') or (college Like '%" + search2TB.Text.ToString() + "%') or (number Like '%" + search2TB.Text.ToString() + "%')"        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class
