using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session == null || Session["username"] == null)
            {
                Response.Redirect("~/Logout.aspx");
            }
        }
        catch
        {
            Response.Redirect("~/Logout.aspx");
        }
       
    }
}
