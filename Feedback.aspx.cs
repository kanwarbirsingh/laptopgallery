using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.CommandText = "select mobile from logindetails username='" + Username.Text + "'";
            command.Connection = connect;
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "valid");
            if (ds.Tables["valid"].Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into feedback values('"+Username.Text+"','"+feedback.Text+"',getdate())";
                cmd.Connection = connect;
                connect.Open();
                cmd.ExecuteNonQuery();
                connect.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "feedbac", "<script>alert('Thank you for your feedback feedback');</script>");
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "reguser", "<script>alert('Sorry! Only registered users can provide feedback');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}