<%@ Page Title="" Language="C#" MasterPageFile="~/admin/site.master" AutoEventWireup="true" CodeFile="ViewProducts.aspx.cs" Inherits="admin_ViewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
    </asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="624px" 
        AutoGenerateSelectButton="True" Height="90px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="Gray" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" 
                InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="company" HeaderText="company" 
                SortExpression="company" />
            <asp:BoundField DataField="model" HeaderText="model" 
                SortExpression="model" />
            
            <asp:BoundField DataField="ram" HeaderText="ram" 
                SortExpression="ram" />
            <asp:BoundField DataField="hdd" HeaderText="hdd" 
                SortExpression="hdd" />
            <asp:BoundField DataField="processor" HeaderText="processor" 
                SortExpression="processor" />
        </Columns>
        <HeaderStyle BackColor="#333333" Font-Size="Medium" />
        <RowStyle BackColor="#CCCCCC" Font-Size="Larger" HorizontalAlign="Center" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mycon %>" 
        
        SelectCommand="SELECT [id], [company], [model], [ram], [hdd], [processor] FROM [laptops]"></asp:SqlDataSource>
</asp:Content>

