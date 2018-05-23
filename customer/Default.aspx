<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="customer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1> Welcome <%= Session["username"].ToString() %> </h1>
</asp:Content>

