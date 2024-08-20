<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    Select any Bill Payment Mode:<br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
        Height="65px" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
        RepeatDirection="Horizontal" Width="443px">
        <asp:ListItem>By Cash</asp:ListItem>
        <asp:ListItem>By Credit/Debit</asp:ListItem>
        <asp:ListItem>By Cheque</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Panel ID="Panel1" runat="server" Height="159px" Visible="False">
        By Cash:<br />
        <br />
        Amount-&gt;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Date-&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="207px" Visible="False">
        By Credit / Check<br />
        <br />
        Card Number-&gt;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="435px"></asp:TextBox>
        <br />
        <br />
        Expiry Date-&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Amount-&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
        <br />
        <br />
        <br />
        <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="158px" Visible="False">
            By Cheque:<br />
            <br />
            Cheque No -&gt;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Width="466px"></asp:TextBox>
            <br />
            <br />
            Amount -&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" onclick="Button2_Click" Text="Submit" />
             </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" Height="219px">
                By Credit / Check<br />
                <br />
                Card Number-&gt;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" Width="435px"></asp:TextBox>
                <br />
                <br />
                Expiry Date-&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <br />
                Amount-&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" onclick="Button2_Click" Text="Submit" />
            </asp:Panel>
            <br />
            <br />
            <br />

        <br />
 
</form>
</body>
</html>
