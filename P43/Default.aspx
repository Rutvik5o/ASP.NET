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
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="AccessDataSource1">
    
    <HeaderTemplate>
    <table>
    <tr>
        <th>emp_id</th>
        <th>emp_name</th>
        <th>emp_desg</th>
        <th>emp_salary</th>
        <th>no_of_hour</th>
     </tr>
     
     </HeaderTemplate>
     
     <ItemTemplate>
     <tr style="background-color:Lime">
         <td><%#Eval("emp_id") %></td>
         <td><%#Eval("emp_name") %></td>
         <td><%#Eval("emp_desg") %></td>
         <td><%#Eval("emp_salary") %></td>
         <td><%#Eval("no_of_hour") %></td>
     </tr>
     </ItemTemplate>
     
     <AlternatingItemTemplate>
     <tr style="background-color:Maroon">
         <td><%#Eval("emp_id") %></td>
         <td><%#Eval("emp_name") %></td>
         <td><%#Eval("emp_desg") %></td>
         <td><%#Eval("emp_salary") %></td>
         <td><%#Eval("no_of_hour") %></td>
      </tr>
     </AlternatingItemTemplate>
     
     
     <SeparatorTemplate>
     <tr style="background-color:Blue">
         <td colspan='5'><hr /></td>
     </tr>
     
     
     </SeparatorTemplate>
     
     <FooterTemplate>
     </table>
     </FooterTemplate>
    
        

    
    
    </asp:Repeater>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/main.mdb" SelectCommand="SELECT * FROM [Table1]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
