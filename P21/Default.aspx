<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        Select Product -&gt;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="AccessDataSource1">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server">
        </asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Price -&gt;         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Fetch Price" />
&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        quantity -&gt;         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        total price -&gt;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" Text="Total Price" />
    </p>
    </form>
</body>
</html>
