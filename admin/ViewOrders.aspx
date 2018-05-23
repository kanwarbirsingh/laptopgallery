<%@ Page Title="" Language="C#" MasterPageFile="~/admin/site.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="admin_ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" 
    DataKeyNames="orderid" DataSourceID="SqlDataSource1" 
    EnableModelValidation="True" Width="801px" Height="255px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" 
                InsertVisible="False" ReadOnly="True" SortExpression="orderid" />
            <asp:BoundField DataField="orderedon" HeaderText="orderedon" 
                SortExpression="orderedon" />
            <asp:BoundField DataField="orderstatus" HeaderText="orderstatus" 
                SortExpression="orderstatus" />
            <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" 
                SortExpression="paymentmode" />
            <asp:BoundField DataField="paymentstatus" HeaderText="paymentstatus" 
                SortExpression="paymentstatus" />
            <asp:BoundField DataField="orderedby" HeaderText="orderedby" 
                SortExpression="orderedby" />
        </Columns>
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:mycon %>" 
    SelectCommand="SELECT * FROM [orders] ORDER BY [orderid] DESC"></asp:SqlDataSource>
<br />
<br />
<br />
</asp:Content>

