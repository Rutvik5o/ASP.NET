﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .mystyle
        {
        	background-color:Blue;
        	color:Red;
        	font-size:50px;
        }
        
        	
        
    
    
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Welcome to text" CssClass="mystyle" 
    onmouseover="this.style.backgroundColor='yellow';" 
    onmouseout="this.style.backgroundColor='';"></asp:Label>

    
    </div>
    </form>
</body>
</html>
