<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cp.aspx.cs" Inherits="cp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 617px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <br />
        <table class="style1">
            <tr>
                <td bgcolor="#FFFFCC" colspan="2" style="text-align: center">
                    Change Password</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFCC" class="style2">
                    Current Password:</td>
                <td bgcolor="#FFFFCC">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFCC" class="style2">
                    New Password:</td>
                <td bgcolor="#FFFFCC">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFCC" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFCC" class="style2">
                    Re-Type New Password:</td>
                <td bgcolor="#FFFFCC">
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFFCC" Width="244px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFFFCC" class="style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" 
                        onclick="Button1_Click" Text="Change Password" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Process"></asp:Label>
&nbsp;</td>
                <td bgcolor="#FFFFCC">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back 
                    to login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Back 
                    to register</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
