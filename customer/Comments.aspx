<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Comments.aspx.cs" Inherits="customer_Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateSelectButton="True" Width="518px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <HeaderStyle Font-Size="Medium" HorizontalAlign="Center" />
        <RowStyle Font-Size="Larger" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
    </asp:DetailsView>
    <br />
    
    </asp:Content>

