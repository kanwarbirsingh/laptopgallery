<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="customer_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="left">
				<div id="contact_form">
					<h1>Contact us</h1>
					<p>Please use the form below to send us a message.</p>
					
						<p>
							<label for="name" id="lname">Full name:</label>
							<input type="text" class="text" name="name" id="name" onfocus="input_focus('name');" onblur="input_blur('name');" />
						</p>
						
						<p>
							<label for="email" id="lemail">Email address:</label>
							<input type="text" class="text" name="email" id="email" onfocus="input_focus('email');" onblur="input_blur('email');" />
						</p>
						<div class="x"></div>
						<p class="error" id="email-error">You must enter your email address.</p>
						
						

						<p>
							<label for="message" id="lmessage">Message:</label>
							<textarea name="message" id="message" onfocus="input_focus('message');" onblur="input_blur('message');"></textarea>
						</p>
						<div class="x"></div>
						<p class="error" id="message-error">You must enter your message.</p>

						<p>
							<label for="captcha" id="lcaptcha"></label>
							<input type="text" class="text" name="captcha" id="captcha" onfocus="input_focus('captcha');" onblur="input_blur('captcha');" />
						</p>
						<div class="x"></div>
						<p class="error" id="captcha-error">Are you shure about your calculations?</p>
						<script type="text/javascript">
						    generate_captcha('lcaptcha');
						</script>
						
						<div class="x"></div>
                        <div style="background-color:Fuchsia; padding:3px 4px 4px 3px; margin:2px 2px 2px 2px;  width: 33px; height: 17px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">
                    <a href="~/customer/sendcontact.aspx">SEND</a></asp:LinkButton>
						</div>
                  
					
					<span id="contact-back">or you can <a href="Default.aspx" class="read-more">Go back</a></span>
				</div>
				
				<div id="message_sent" style="display:none;">
					<h1>Your message has been sent</h1>
					<p>We'll contact you in a shortest possible time.</p>
					<p>You can now <a href="Default.aspx" class="read-more">go back</a> to home page.</p>
				</div>				
			</div>
</asp:Content>

