<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="BoughtProduct.aspx.cs" Inherits="customer_BoughtProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Your order has been confirmed. <br />
Your will recieve your gadgets within 6-8 working days <br />
on the following address in our records.<br /><br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="86px" Width="178px" 
        AutoGenerateRows="False" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="membername" HeaderText="membername" 
                SortExpression="membername" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" 
                SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" 
                SortExpression="pincode" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
        </Fields>
        <HeaderStyle Font-Bold="True" Font-Size="Larger" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mycon %>" 
        SelectCommand="SELECT * FROM [personaldetails]">
    </asp:SqlDataSource>
<br />
<br />
If the Address is incorrect, Please update it in the Personal Details Page .
</asp:Content>

