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
        .style2
        {
            height: 25px;
        }
        .style3
        {
            width: 396px;
        }
        .style4
        {
            height: 25px;
            width: 396px;
        }
        .style5
        {
            width: 328px;
        }
        .style6
        {
            height: 25px;
            width: 328px;
        }
        .style7
        {
            width: 382px;
        }
        .style8
        {
            height: 25px;
            width: 382px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table bgcolor="#FFCCCC" class="style1">
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="Label1" runat="server" Text="Web Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label2" runat="server" Text="Birthday Date:"></asp:Label>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Null value not allowed!!"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="432px"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox1" 
                    ErrorMessage="Enter Date between 1/1/1990 to 1/1/2000" MaximumValue="1/1/2000" 
                    MinimumValue="1/1/1990" Type="Date"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Null value not allowed!!"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox2" runat="server" Width="432px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter email in proper format!!" 
                    ValidationExpression=" [a-zA-Z0-9.*%±]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="Label4" runat="server" Text="Mobile Number:"></asp:Label>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Null value not allowed!!"></asp:RequiredFieldValidator>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="432px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter 10 digit number!!" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
