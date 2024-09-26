<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            height: 21px;
            text-align: center;
            font-weight: bold;
        }
        .style4
        {
            width: 459px;
        }
        #Select1
        {
            width: 86px;
        }
    </style>
<script language="javascript" type="text/javascript">
// <!CDATA[

function Select1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3" colspan="2">
                Registration Table</td>
        </tr>
        <tr>
            <td class="style4">
                id:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                email:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                password:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                security question:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>What is you name?</asp:ListItem>
                    <asp:ListItem>What your pet name?</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style4">
                Answer</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back 
                to login</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
