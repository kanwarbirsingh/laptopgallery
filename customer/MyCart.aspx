<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="customer_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        EnableModelValidation="True" Width="463px">
        <Columns>
            <asp:BoundField DataField="productid" HeaderText="productid" 
                SortExpression="productid" />
            <asp:BoundField DataField="price" HeaderText="price" 
                SortExpression="price" />
            <asp:BoundField DataField="productname" HeaderText="productname" 
                SortExpression="productname" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
        </Columns>
        <RowStyle HorizontalAlign="Center" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mycon %>" 
        
        SelectCommand="SELECT [productid], [price], [productname], [quantity] FROM [cart] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Confirm Order" />
    <br />
</asp:Content>

