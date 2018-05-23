<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="customer_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td><h2> New Password </h2></td>
<td> : </td>
<td> 
    <asp:TextBox ID="newPass" runat="server"></asp:TextBox> </td>
</tr>
<tr><td></td></tr>
<tr>
<td> <h2>Confirm Password</h2> </td>
<td> : </td>
<td> 
    <asp:TextBox ID="confPass" runat="server"></asp:TextBox> </td>
</tr>

<tr>
<td colspan="3" align="center"> 
    <asp:Button ID="ChangePass" runat="server" Text="Change Password" 
        onclick="ChangePass_Click" /> </td>
</tr>
</table>
</asp:Content>

