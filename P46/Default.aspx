<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="d_id" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="d_id" HeaderText="d_id" ReadOnly="True" 
                    SortExpression="d_id" />
                <asp:BoundField DataField="d_name" HeaderText="d_name" 
                    SortExpression="d_name" />
                <asp:HyperLinkField DataNavigateUrlFields="d_id" 
                    DataNavigateUrlFormatString="default.aspx?a={0}" HeaderText="View " 
                    Text="View Patient" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/main1.mdb" SelectCommand="SELECT * FROM [doctor]">
        </asp:AccessDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="p_id" DataSourceID="AccessDataSource2">
            <Columns>
                <asp:BoundField DataField="p_id" HeaderText="p_id" ReadOnly="True" 
                    SortExpression="p_id" />
                <asp:BoundField DataField="p_name" HeaderText="p_name" 
                    SortExpression="p_name" />
                <asp:BoundField DataField="d_id" HeaderText="d_id" SortExpression="d_id" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/main1.mdb" 
            SelectCommand="SELECT * FROM [patient] WHERE ([d_id] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="d_id" QueryStringField="a" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
