<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productlist.aspx.cs" Inherits="productlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="pcode" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="pcode" HeaderText="pcode" ReadOnly="True" 
                    SortExpression="pcode" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                <asp:BoundField DataField="pprice" HeaderText="pprice" 
                    SortExpression="pprice" />
                <asp:BoundField DataField="pdesc" HeaderText="pdesc" SortExpression="pdesc" />
                <asp:BoundField DataField="pcate" HeaderText="pcate" SortExpression="pcate" />
                <asp:TemplateField HeaderText="purl" SortExpression="purl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("purl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="243px" 
                            ImageUrl='<%# Eval("purl","~/imgs/{0}") %>' Width="326px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/main.mdb" SelectCommand="SELECT * FROM [product]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
