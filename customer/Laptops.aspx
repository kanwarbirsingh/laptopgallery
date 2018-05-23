<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Laptops.aspx.cs" Inherits="customer_Laptops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
            <div id="products">
                <img src='../productimages/<%# Eval("imgpath") %>' width="180" height="180"/>
            </div>

        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

