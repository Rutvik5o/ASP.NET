<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!--Desgin two different css clss in the web page having different formatting features lke border size,border style,border color,font color,
background color etc. Place two buttons and a label on the .aspx page. On the click event of the first button one css class will be applied
to the label and on the click event of the second button apply second css class to the label.(Changing apperance of the label at run time
uysing cssclass property -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    
    .style1
    {
        background-color:Yellow;
        color:Blue;
        border:2px solid red;
    }
    
    .style2
    {
        background-color:Aqua;
        color:Blue;
        border: 2px dashed black;
    }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    <p>
        <asp:Button ID="Button2" runat="server" Text="Style1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Style2" />
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
