<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                FirstName:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="FirstName"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                LastName:&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="LastName" 
                    Height="22px" Width="128px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                PhoneNumber:&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Cellular"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Email:&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Email"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" style="width: 56px" Text="Button" />
    </p>
    </form>
</body>
</html>
