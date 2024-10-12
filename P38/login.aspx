<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                welcome user
                <asp:LoginName ID="LoginName1" runat="server" />
                <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/login.aspx" />
            </LoggedInTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="admin">
                    <ContentTemplate>
                        Welcome Administrator
                        <asp:LoginName ID="LoginName2" runat="server" />
                        <asp:LoginStatus ID="LoginStatus2" runat="server" LogoutPageUrl="~/login.aspx"/>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin.aspx">Go to Admin Page</asp:HyperLink>
                    </ContentTemplate>
                
                  
                </asp:RoleGroup>
                <asp:RoleGroup Roles="customer">
                <ContentTemplate>
                    Welcome Customer
                    <asp:LoginName ID="LoginName3" runat="server" />
                    <asp:LoginStatus ID="LoginStatus3" runat="server" LogoutPageUrl="~/login.aspx"/>
             
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/customer.aspx">Go to Custome Page</asp:HyperLink>
                
                </ContentTemplate>
                
                </asp:RoleGroup>
            
            
            </RoleGroups>
            
            
            
            
            <AnonymousTemplate>
                welcome visitor
                <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/login.aspx">
                   
                </asp:Login>
                
                
            </AnonymousTemplate>
        </asp:LoginView>
    
    </div>
    </form>
</body>
</html>
