<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
      <img src='../productImages/<%#Eval("imgpath") %>' alt="" /> <br />
    <p> <b><%#Eval("model") %></b></p><br />
    
    
    <p>
   <b> Company</b>  <%# Eval("Company") %>
    </p><br />
    <p>
    <b>Model</b>  <%# Eval("model") %>
    </p><br />
    <p>
    <b>Bluetooth</b>  <%# Eval("Bluetooth") %>
    </p><br />
    <p>
    <b>Wi-Fi</b>  <%# Eval("wifi") %>
    </p><br />
    <p>
    <b>Ram</b>  <%# Eval("Ram") %>
    </p><br />
    <p>
    <b>Processor</b>  <%# Eval("Processor") %>
    </p><br />
    <p>
    <b>Display</b>  <%# Eval("Display") %>
    </p><br />
    <p>
    <b>Hard Disk</b>  <%# Eval("hdd") %>
    </p><br />
    <p>
    <b>Camera</b>  <%# Eval("webcam") %>
    </p><br />
    <p>
    <b>Sound</b>  <%# Eval("audio") %>
    </p><br />
    <p>
    <b>Features</b>  <%# Eval("additional") %>
    </p><br />
    <p>
    <b>Price </b> <%# Eval("Price") %>
    </p><br />
    </ItemTemplate>
    </asp:Repeater>
    <h2>Comments / Reviews</h2>
    <br />
    <asp:Repeater ID="Repeater2" runat="server">
    <ItemTemplate>
    <%# Eval("comments") %><br />
    <hr />
    </ItemTemplate>
    </asp:Repeater>

    <br />
    <br />
    <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine"></asp:TextBox><br />
    <asp:Button ID="postComments" runat="server" Text="Post" 
        onclick="postComments_Click" />
</div>

</asp:Content>

