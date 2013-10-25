
Partial Class newrecipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(ByVal sender As Object, ByVal e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Response.Write("This item has been removed.")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(ByVal sender As Object, ByVal e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Default.aspx")
    End Sub
End Class
