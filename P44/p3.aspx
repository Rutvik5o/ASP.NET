<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p3.aspx.cs" Inherits="p3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="productcode" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="productcode" HeaderText="productcode" 
                    ReadOnly="True" SortExpression="productcode" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" 
                    SortExpression="prodname" />
                <asp:BoundField DataField="proddesc" HeaderText="proddesc" 
                    SortExpression="proddesc" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:TemplateField HeaderText="produrl" SortExpression="produrl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("produrl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="87px" 
                            ImageUrl='<%# Eval("produrl") %>' Width="120px" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("produrl") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/main.mdb" 
            SelectCommand="SELECT * FROM [product] WHERE ([produrl] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="produrl" QueryStringField="a" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
