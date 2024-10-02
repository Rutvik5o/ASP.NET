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
            width: 459px;
            height: 37px;
        }
        .style4
        {
            height: 37px;
        }
        .style5
        {
            width: 459px;
            height: 45px;
        }
        .style6
        {
            height: 45px;
        }
        .style7
        {
            width: 459px;
            height: 51px;
        }
        .style8
        {
            height: 51px;
        }
        .style9
        {
            width: 459px;
            height: 33px;
        }
        .style10
        {
            height: 33px;
        }
        .style11
        {
            width: 459px;
            height: 36px;
        }
        .style12
        {
            height: 36px;
        }
        .style13
        {
            width: 459px;
            height: 31px;
        }
        .style14
        {
            height: 31px;
        }
        .style15
        {
            width: 459px;
            height: 32px;
        }
        .style16
        {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    Enter Date of Arrival:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    No Of Days:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Room Type:</td>
                <td class="style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource1" DataTextField="RoomType" 
                        DataValueField="RoomPrice" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/main.mdb" 
                        SelectCommand="SELECT * FROM [roomdetail]"></asp:AccessDataSource>
&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style11">
                    No of Persons:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox3" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Confirm Booking:</td>
                <td class="style8">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    Advance Payment:
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox4" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style10">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Details Shown Here:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox5" runat="server" Height="166px" ReadOnly="True" 
                        TextMode="MultiLine" Width="380px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
