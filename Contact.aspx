<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>Contact Us</h1>
<br />
<table>
<tr>
<td> Email </td>
<td> : </td>
<td> <asp:TextBox ID="email" runat="server" Width="200px"></asp:TextBox> </td>
</tr>
<tr>
<td> Mobile </td>
<td> : </td>
<td> <asp:TextBox ID="mobile" runat="server" Width="200px"></asp:TextBox> </td>
</tr>
<tr>
<td> Query </td>
<td> : </td>
<td> <asp:TextBox ID="qury" runat="server" Height="81px" TextMode="MultiLine" 
        Width="200px"></asp:TextBox> </td>
</tr>
<tr>
<td  colspan="3" align="center"> 
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /> </td>

</tr>
</table>
</center>
</asp:Content>

