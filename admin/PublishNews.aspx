<%@ Page Title="" Language="C#" MasterPageFile="~/admin/site.master" AutoEventWireup="true" CodeFile="PublishNews.aspx.cs" Inherits="admin_PublishNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Publish News</h1>
<table>
<tr>
<td>News Heading</td>
<td> : </td>
<td> 
    <asp:TextBox ID="newsHeading" runat="server"></asp:TextBox> </td>
</tr>

<tr>
<td>News Content</td>
<td> : </td>
<td> 
    <asp:TextBox ID="newsContent" runat="server"></asp:TextBox> </td>
</tr>

<tr>
<td colspan="3" align="center"> 
    <asp:Button ID="publish" runat="server" Text="publish" 
        onclick="publish_Click" /> </td>
</tr>
</table>
</asp:Content>

