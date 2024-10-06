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
            width: 198px;
        }
        .style3
        {
            width: 198px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                Employee Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Address:</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                    TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Department:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="AccessDataSource1" DataTextField="d_name" DataValueField="d_code">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/main.mdb" SelectCommand="SELECT * FROM [dept]">
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                State:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="AccessDataSource2" DataTextField="s_name" DataValueField="s_id">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/main.mdb" SelectCommand="SELECT * FROM [state]">
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataSourceID="AccessDataSource3" DataTextField="c_name" DataValueField="c_code">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                    DataFile="~/main.mdb" SelectCommand="SELECT * FROM [city] WHERE ([s_id] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="s_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
