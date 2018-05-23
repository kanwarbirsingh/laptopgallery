using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_PublishNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void publish_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "insert into news(newsHeading,newsContent,postedOn) values('"+newsHeading.Text+"','"+newsContent.Text+"',getdate())";
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "messg", "<script>alert('newsPublished');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}