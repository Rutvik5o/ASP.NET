<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 
   <% int i;
      for (i = 0; i < 8; i++)
      { %>
      
       <font size= "<%=i %>">Gujarat University </font>
       
       <br />
       <%} %>
       
       
      <% for (int j = 0; j <= 8; j++)
         {%>
         
        <font size = "<%=j %>">welcome to program</font>
        <br />
        <% } %>
        
        
        <% for (int k = 0; k <= 8; k++)
           { %>
        
        <font size = "<%=k %>">for expeiment</font>
        <br />
        
        <% } %>
        
        
        
        
         
         
         
       
            
    </div>
    </form>
</body>
</html>
