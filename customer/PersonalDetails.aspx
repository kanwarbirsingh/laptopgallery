<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="customer_PersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br /><h1>Personal Details</h1><br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateEditButton="True" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" 
        DataKeyNames="Id">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" 
                SortExpression="Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="membername" HeaderText="membername" 
                SortExpression="membername" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" 
                SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" 
                SortExpression="pincode" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
        </Fields>
        <HeaderStyle Font-Bold="True" Font-Size="Medium" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mycon %>" 
        SelectCommand="SELECT [Id], [membername], [address], [city], [state], [pincode], [mobile] FROM [personaldetails] WHERE ([email] = @email)" 
        
        
        UpdateCommand="update personaldetails set membername=@membername, address=@address, city=@city, state=@state, pincode=@pincode, mobile=@mobile where ID=@Id">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="DetailsView1" Name="@membername" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="@address" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="@city" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="@state" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="@pincode" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="@mobile" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="@id" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

