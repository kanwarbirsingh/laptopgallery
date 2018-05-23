<%@ Page Title="" Language="C#" MasterPageFile="~/admin/site.master" AutoEventWireup="true" CodeFile="ViewNews.aspx.cs" Inherits="admin_ViewNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="SqlDataSource1" 
    EnableModelValidation="True" Width="745px">
        <AlternatingRowStyle BackColor="#999999" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="newsid" HeaderText="newsid" InsertVisible="False" 
                ReadOnly="True" SortExpression="newsid" />
            <asp:BoundField DataField="newsheading" HeaderText="newsheading" 
                SortExpression="newsheading" />
            <asp:BoundField DataField="newscontent" HeaderText="newscontent" 
                SortExpression="newscontent" />
            <asp:BoundField DataField="postedon" HeaderText="postedon" 
                SortExpression="postedon" />
        </Columns>
        <HeaderStyle BackColor="#333333" Font-Size="Medium" HorizontalAlign="Center" />
        <RowStyle BackColor="#CCCCCC" Font-Size="Larger" HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:mycon %>" 
    SelectCommand="SELECT * FROM [news]"></asp:SqlDataSource>
</asp:Content>

