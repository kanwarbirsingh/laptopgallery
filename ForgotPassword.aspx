<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<table>
<tr>
<td>Enter Username</td>
<td> : </td>
<td> 
    <asp:TextBox ID="username" runat="server"></asp:TextBox> </td>
</tr>
<tr><td colspan="3" align="center"> 
    <asp:Button ID="getPass" runat="server" Text="submit" onclick="getPass_Click" /> </td></tr>
</table>
</asp:Content>

