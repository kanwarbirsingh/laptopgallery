using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class customer_PostComment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string a = Request.QueryString["id"].ToString();
            prodId.Value = a;
        }
    }
    protected void postComments_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            /*SqlCommand cmd = new SqlCommand("select CustomerId from customers where username='"+Session["username"].ToString()+"'",connect);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "customer");
            int id = Convert.ToInt32(ds.Tables["customer"].Rows[0][0].ToString());*/
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "insert into comments values("+prodId.Value+",'"+Session["username"].ToString()+"','"+cmnts.Text+"',GETDATE())";
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "smkflr", "<script>alert('Comments Posted');</script>");
            Response.Redirect("~/customer/Comments.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}