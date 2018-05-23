<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center> 
<table>
<tr>
<td>Username</td>
<td> : </td>
<td> <asp:TextBox ID="username" runat="server"></asp:TextBox> </td>
</tr>
<td>Password</td>
<td> : </td>
<td> <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox> </td>
</tr>
<tr>
<td colspan="3" align="center"> 
    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /> </td>
</tr>
</table>
</center>
</asp:Content>

