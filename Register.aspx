<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<h1>Registration Form</h1>
<br />
<table>
<tr>
<td> Username (Email)</td>
<td> : </td>
<td> <asp:TextBox ID="username" runat="server"></asp:TextBox></td>
<td> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Please choose a username" ControlToValidate="username"></asp:RequiredFieldValidator> 
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Enter the email in correct format" 
        ControlToValidate="username" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td> Password </td>
<td> : </td>
<td> <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="password" ErrorMessage="Please Choose a Password"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> Confirm Password </td>
<td> : </td>
<td> <asp:TextBox ID="confirm" runat="server" TextMode="Password"></asp:TextBox> </td>
<td>  
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="password" ControlToValidate="confirm" 
        ErrorMessage="Password does not matches the Confirm Password"></asp:CompareValidator>
    </td>
</tr>
<tr>
<td> Security Question </td>
<td> : </td>
<td> <asp:TextBox ID="ques" runat="server"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="ques" ErrorMessage="Please type a Security Question"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> Security Answer </td>
<td> : </td>
<td> <asp:TextBox ID="ans" runat="server" TextMode="Password"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="ans" ErrorMessage="Please Type an Answer"></asp:RequiredFieldValidator>
    </td>
</tr>
<br /><br />
<hr />
<br /><br />
<tr>
<td> Full Name </td>
<td> : </td>
<td> <asp:TextBox ID="fullname" runat="server"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="fullname" ErrorMessage="Enter Your Full Name"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> Address </td>
<td> : </td>
<td> <asp:TextBox ID="Address" runat="server" TextMode="MultiLine" Height="68px" 
        Width="127px"></asp:TextBox> </td>
        <td>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="Address" ErrorMessage="Please Provide your address"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> City </td>
<td> : </td>
<td> <asp:TextBox ID="City" runat="server"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="City" ErrorMessage="Enter your city"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> State </td>
<td> : </td>
<td> <asp:TextBox ID="State" runat="server"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="State" ErrorMessage="Enter your state"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> Pin Code </td>
<td> : </td>
<td> <asp:TextBox ID="pinCode" runat="server"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="pinCode" 
        ErrorMessage="Provide us with pin code of your city"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td> Mobile </td>
<td> : </td>
<td> <asp:TextBox ID="Mobile" runat="server"></asp:TextBox> </td>
<td>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="Mobile" ErrorMessage="Please provide your mobile number"></asp:RequiredFieldValidator>
    </td>
</tr>
 <tr>
 <td colspan="3" align="center"> 
     <asp:Button ID="Button1" runat="server" Text="Register" 
         onclick="Button1_Click" /> </td>
 </tr>
</table>
</center>
</asp:Content>

