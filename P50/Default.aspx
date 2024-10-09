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
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:FormView ID="FormView1" runat="server">
    <ItemTemplate>
    
     <table border=1>
     <tr>
     <td>Customer Name</td>
     <td><%#Eval("cname") %></td>
     </tr>
     <tr>
     <td>Product Name</td>
     <td><%#Eval("pname") %></td>
     </tr>
     <tr>
     <td>Line Total</td>
     <td><%#Eval("linetotal") %></td>
     </tr>
     </table>
    </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
