using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Code to send Mail
        //Will only work if SMTP client is Configured on Server and the internet is working

        /*
        MailMessage mailmsg = new MailMessage();
        mailmsg.From = new MailAddress(email.Text);
        mailmsg.To.Add(new MailAddress("contact@laptopgallery.com"));
        mailmsg.Subject = "New Query";
        mailmsg.Body = "Email : "+email.Text+" <br/> Mobile : "+mobile.Text+" <br/> Message : "+qury.Text;
        mailmsg.IsBodyHtml = true;
        mailmsg.Priority = MailPriority.Normal;
        SmtpClient smtp = new SmtpClient();
        smtp.Send(mailmsg);
         */

        ClientScript.RegisterClientScriptBlock(this.GetType(), "sndContact", "<script>alert('Thank you for contacting us.');</script>");
        Response.Redirect("~/Default.aspx");
    }
}