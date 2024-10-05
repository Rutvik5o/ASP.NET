<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p2.aspx.cs" Inherits="p2" %>

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
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:TemplateField HeaderText="produrl" SortExpression="produrl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("produrl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                            ImageUrl='<%# Eval("produrl") %>' 
                            PostBackUrl='<%# Eval("produrl", "p3.aspx?a={0}") %>' Width="137px" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("produrl") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/main.mdb" 
            SelectCommand="SELECT [productcode], [price], [produrl] FROM [product] WHERE ([category] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="i" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
