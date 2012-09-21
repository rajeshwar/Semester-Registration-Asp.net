<%@ Page Language="VB" MasterPageFile="~/MasterPage01.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>please enter your credentials here....</h2>
<div style="text-align: center">
    <h2>Please Log into the System</h2><br />
    <asp:Panel ID="mainpanel" runat="server" Width="380px" >
        <br />
        <table width="100%" border="0" cellpadding="0" cellspacing="0" style=" border: solid 1px silver; padding:5px;">
            <tr>
                <td style="width:30%;height:43px;" >
                    User Name:
                </td>
                <td style="width:70%; height: 43px;" >
                    <asp:TextBox ID="UsernameText" runat="server" Width="80%" />
                    <asp:RequiredFieldValidator ID="UsernameRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="UsernameText" />
                    <br />
                    <asp:RegularExpressionValidator
                    ID="UsernameValidator" runat="server"
                    ControlToValidate="UsernameText"
                    ErrorMessage="Invalid username"
                    ValidationExpression="[\w| ]*" />
                </td>
            </tr>
            <tr>
                <td style="width:30%;height: 26px;">
                    Password:
                </td>
                <td style="width:70%; height: 26px">
                    <asp:TextBox ID="PasswordText" runat="server"
                    Width="80%" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="PwdRequiredValidator"
                    runat="server" ErrorMessage="*"
                    ControlToValidate="PasswordText" />
                    <br />
                    <asp:RegularExpressionValidator ID="PwdValidator"
                    runat="server" ControlToValidate="PasswordText"
                    ErrorMessage="Invalid password"
                    ValidationExpression='[\w| !"§$%&amp;/()=\-?\*]*' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="LoginAction" runat="server"
                     Text="Login" /><!--OnClick="LoginAction_Click"*/-->
                </td>
                <td>
                    <asp:Label ID="LegendStatus" runat="server"
                    EnableViewState="false" Text="" />
                </td>
            </tr>
            
            </table>
    </asp:Panel>
</div><!-- div after aspcontent end -->

</asp:Content>

