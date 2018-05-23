using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customer_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePass_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "update loginDetails set Password='"+newPass.Text+"' where username='"+Session["username"].ToString()+"'";
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "kjhfd", "<script>alert('Password Changed');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}