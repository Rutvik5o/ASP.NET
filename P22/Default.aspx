<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body id ="myBody" runat="server">
    <form id="form1" runat="server">
    <div>
    
        Select Color from Here:<br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal">
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Pink</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Aqua</asp:ListItem>
            <asp:ListItem>Purple</asp:ListItem>
            <asp:ListItem>Yellow</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Grey</asp:ListItem>
        </asp:RadioButtonList>
        <br />
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="Apply" />
    </p>
    </form>
</body>
</html>
