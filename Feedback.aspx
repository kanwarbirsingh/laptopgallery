<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>Feedback Form</h1>
<br />
<table>
<tr>
<td> Username (Email) </td>
<td> : </td>
<td> 
    <asp:TextBox ID="Username" runat="server" Width="200px"></asp:TextBox> </td>
</tr>
<tr>
<td>Feedback</td>
<td> : </td>
<td> 
    <asp:TextBox ID="feedback" runat="server" TextMode="MultiLine" Height="215px" 
        Width="200px"></asp:TextBox> </td>
</tr>
<tr>
<td colspan="3" align="center"> 
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /> </td>
</tr>
</table>
</center>
</asp:Content>

