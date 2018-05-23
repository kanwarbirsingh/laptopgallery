using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void getPass_Click(object sender, EventArgs e)
    {
        string mobile, password;
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select Mobile,email from customer where username='" + username.Text + "'";
            
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "mobile");
            if (ds.Tables["mobile"].Rows.Count > 0)
            {
                mobile = ds.Tables["mobile"].Rows[0][0].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connect;
                cmd.CommandText = "select Password from loginDetails where Username='" + username.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "password");
                password = ds.Tables["password"].Rows[0][0].ToString();
                //Code to send password to mobile
                ClientScript.RegisterClientScriptBlock(this.GetType(), "masdfg", "<script>alert('Your Password has been sent to your registered mobile number');</script>");

            }
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}