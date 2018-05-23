
<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="PostComment.aspx.cs" Inherits="customer_PostComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<b>POST YOUR COMMENT ABOUT THE PRODUCT</b>
<br />
<br /><br />
    <asp:HiddenField ID="prodId" runat="server" />
    <asp:TextBox ID="cmnts" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="postComments" runat="server" Text="Post" 
        onclick="postComments_Click" />
</asp:Content>

