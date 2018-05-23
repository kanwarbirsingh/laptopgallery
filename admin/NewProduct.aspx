<%@ Page Title="" Language="C#" MasterPageFile="~/admin/site.master" AutoEventWireup="true" CodeFile="NewProduct.aspx.cs" Inherits="admin_NewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<h1>ispAdd New Product</h1>

<table>

<tr>
<td>company name:</td>
<td>
    <asp:TextBox ID="company" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>model name:</td>
<td>
    <asp:TextBox ID="model" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>ram</td>
<td>
    <asp:TextBox ID="ram" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>hard disk</td>
<td>
    <asp:TextBox ID="hdd" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>display</td>
<td>
    <asp:TextBox ID="display" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>graphic card</td>
<td>
    <asp:TextBox ID="gcard" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>operating system</td>
<td>
    <asp:TextBox ID="os" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>processor</td>
<td>
    <asp:TextBox ID="processor" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>bluetooth</td>
<td>
    <asp:TextBox ID="btooth" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>webcam</td>
<td>
    <asp:TextBox ID="webcam" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>dvdwriter</td>
<td>
    <asp:TextBox ID="dvdwr" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>wifi</td>
<td>
    <asp:TextBox ID="wifi" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>audio</td>
<td>
    <asp:TextBox ID="audio" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>price</td>
<td>
    <asp:TextBox ID="price" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
<td>additional</td>
<td>
    <asp:TextBox ID="additional" runat="server" Height="48px" TextMode="MultiLine" 
        Width="117px"></asp:TextBox>
    </td>
</tr>

<tr>
<td>Product Image</td>
<td> 
    <asp:FileUpload ID="FileUpload1" runat="server" /> </td>
</tr>
<tr >
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
    </td>
</tr>
</table>

</asp:Content>

