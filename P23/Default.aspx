<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            RepeatDirection="Horizontal">
            <asp:ListItem>Mouse</asp:ListItem>
            <asp:ListItem>KeyBoard</asp:ListItem>
            <asp:ListItem>Laptop</asp:ListItem>
            <asp:ListItem>RAM</asp:ListItem>
            <asp:ListItem>MotherBoard</asp:ListItem>
            <asp:ListItem>Graphic Card</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Place Order" />
    
    </div>
    <p>
        &nbsp;</p>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
