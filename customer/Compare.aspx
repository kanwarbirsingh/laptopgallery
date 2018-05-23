<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Compare.aspx.cs" Inherits="customer_Compare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Select Products Category<br />
    <asp:DropDownList ID="product1" runat="server">
    </asp:DropDownList>
    <asp:DropDownList ID="product2" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Button ID="comaprePro" runat="server" Text="Compare" 
        onclick="comaprePro_Click" />
        <br /><br />
        <div style="width: 600px; height: auto;">
         <div style="width: 300px; height: auto; float: left;">
             <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
             </asp:DetailsView> 
         </div>
         <div style="width: 300px; height: auto; float: left;">
             <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px">
             </asp:DetailsView>
         </div>
        </div>
</asp:Content>

