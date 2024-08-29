<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <br />
        Select File -&gt;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
            RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="183px" 
                    ImageUrl='<%# Eval("Name","~/images_folder/{0}") %>' Width="211px" />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
