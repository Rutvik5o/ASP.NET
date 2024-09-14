<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ImageMap ID="ImageMap1" runat="server" Height="674px" 
        ImageUrl="~/title.png" style="margin-top: 0px" Width="1459px">
        <asp:RectangleHotSpot Bottom="97" Left="119" NavigateUrl="~/Home.aspx" 
            Right="435" Top="189" />
        <asp:RectangleHotSpot Bottom="615" Left="113" NavigateUrl="~/Product.aspx" 
            Right="964" Top="185" />
        <asp:RectangleHotSpot Bottom="1248" Left="122" NavigateUrl="~/Services.aspx" 
            Right="1528" Top="175" />
    </asp:ImageMap>
    </form>
</body>
</html>
