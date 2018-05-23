<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome to LAPTOP GALLERY</h2>
<br />
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
<div id="produc">
 <table>
<tr>
<td><img src='productimages/<%# Eval("imgpath") %>' alt='<%# Eval("model") %>' title='<%# Eval("model") %>'  width="200" height="200"/></td>
<td> <%# Eval("additional") %> </td>
</tr> 
 </table>
 </div>
    
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>

