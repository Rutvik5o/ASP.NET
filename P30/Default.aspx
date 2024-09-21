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
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StudentID" DataSourceID="AccessDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" 
                SortExpression="StudentID" />
            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                SortExpression="Student_Name" />
            <asp:BoundField DataField="Student_Bday" HeaderText="Student_Bday" 
                SortExpression="Student_Bday" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Main1.mdb" 
        SelectCommand="SELECT * FROM [Table1] WHERE ([Student_Bday] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" Name="Student_Bday" 
                PropertyName="SelectedDate" Type="DateTime" />
        </SelectParameters>
    </asp:AccessDataSource>
    </form>
</body>
</html>
