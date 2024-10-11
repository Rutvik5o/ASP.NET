<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
                Welcome User
                <asp:LoginName ID="LoginName1" runat="server" />
                <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/login.aspx"/>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/changepassword.aspx">Change Password</asp:HyperLink>
            </LoggedInTemplate>
            <RoleGroups>
            <asp:RoleGroup Roles="teacher">
            <ContentTemplate>
                Welcome teacher
                <asp:LoginName ID="LoginName2" runat="server" />
                <asp:LoginStatus ID="LoginStatus2" runat="server" LogoutPageUrl="~/login.aspx"/>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl= "~/changepassword.aspx">Change Password</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl= "~/teacher.aspx">Go to Teacher's Homepage</asp:HyperLink>
            </ContentTemplate>
            
    
            </asp:RoleGroup>
            <asp:RoleGroup Roles="student">
            <ContentTemplate>
              Welcome Student
                <asp:LoginName ID="LoginName3" runat="server" />
                <asp:LoginStatus ID="LoginStatus3" runat="server" LogoutPageUrl= "~/login.aspx" />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/changepassword.aspx">Change Password</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/student.aspx">Go to Student's Page</asp:HyperLink>
              
            
            
            </ContentTemplate>
            </asp:RoleGroup>
            
            </RoleGroups>
            
            
            
            <AnonymousTemplate>
                Welcome Visitor
                <asp:Login ID="Login1" runat="server" CreateUserText="New User" 
                    CreateUserUrl="~/register.aspx" DestinationPageUrl="~/login.aspx" 
                    PasswordRecoveryText="Forget Password" 
                    PasswordRecoveryUrl="~/forgetpassword.aspx">
                </asp:Login>
            </AnonymousTemplate>
        </asp:LoginView>
    
    </div>
    </form>
</body>
</html>
