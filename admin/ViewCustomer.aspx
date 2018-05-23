<%@ Page Title="" Language="C#" MasterPageFile="~/admin/site.master" AutoEventWireup="true" CodeFile="ViewCustomer.aspx.cs" Inherits="admin_ViewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="Id" 
    DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="828px">
        <AlternatingRowStyle BackColor="#CCCCCC" Font-Size="Larger" 
            HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="membername" HeaderText="membername" 
                SortExpression="membername" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" 
                SortExpression="city" />
            
            <asp:BoundField DataField="state" HeaderText="state" 
                SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" 
                SortExpression="pincode" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
        </Columns>
        <HeaderStyle BackColor="#666666" Font-Size="Medium" HorizontalAlign="Center" />
        <RowStyle BackColor="#999999" Font-Size="Larger" HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:mycon %>" 
    SelectCommand="SELECT * FROM [personaldetails] ORDER BY [Id] DESC"></asp:SqlDataSource>
</asp:Content>

