
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("Default2.aspx")
    End Sub
End Class



'(Unit-1) Design .aspx page, havin 4 textboxes (firstname,lasatname,email & mobile).  place a button on the page. on the click even of the button user will be redirected on another page, having same 4
'textboxe having Autoxomplete capability. On the another page user do not have type firstname,lastname,email an dmobile number but it will be autocomplete by pressing one or two keys in each textbox.(Demo 
'of Autofcomplete Type property 