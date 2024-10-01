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
    <p>
        Select Student:</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="AccessDataSource1" DataTextField="Student_Name" 
            DataValueField="Student_ID">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/main.mdb" 
            SelectCommand="SELECT [Student_ID], [Student_Name] FROM [student_info]">
        </asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Listed Marks:<br />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="Score_ID" DataSourceID="AccessDataSource2" Height="50px" 
            Width="125px">
            <Fields>
                <asp:BoundField DataField="Score_ID" HeaderText="Score_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Score_ID" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                    SortExpression="Student_ID" />
                <asp:BoundField DataField="Marks1" HeaderText="Marks1" 
                    SortExpression="Marks1" />
                <asp:BoundField DataField="Marks2" HeaderText="Marks2" 
                    SortExpression="Marks2" />
                <asp:BoundField DataField="Marks3" HeaderText="Marks3" 
                    SortExpression="Marks3" />
            </Fields>
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/main.mdb" 
            SelectCommand="SELECT * FROM [student_score] WHERE ([Student_ID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Student_ID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
    </form>
<p>
    a</p>
</body>
</html>
