<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Select State:<br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="AccessDataSource1" DataTextField="StateName" 
            DataValueField="StateCode">
        </asp:DropDownList>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/P25.mdb" onselecting="AccessDataSource1_Selecting" 
            SelectCommand="SELECT [StateCode], [StateName] FROM [State]">
        </asp:AccessDataSource>
        <br />
        <br />
        <br />
        Select City:<br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="AccessDataSource2" DataTextField="CityName" 
            DataValueField="CityName">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/P25.mdb" 
            SelectCommand="SELECT [CityName], [CityCode], [StateCode] FROM [City] WHERE ([StateCode] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="StateCode" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
