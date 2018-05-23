<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

Logging Out <%= Session["username"].ToString() %>

</asp:Content>

