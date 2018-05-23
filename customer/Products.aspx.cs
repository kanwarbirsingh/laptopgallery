using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Products : System.Web.UI.Page
{
    public void getData(int id)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select * from laptops where Id=" + id;
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "product");
            if (ds.Tables["product"].Rows.Count > 0)
            {
                Repeater1.DataSource = ds.Tables["product"];
                Repeater1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void getComments(int id)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select top 10 * from comments where laptopId=" + id;
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "comments");
            if (ds.Tables["comments"].Rows.Count > 0)
            {
                Repeater2.DataSource = ds.Tables["comments"];
                Repeater2.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = 0;
        string sid = Request.QueryString["id"].ToString();
        id = Convert.ToInt32(sid);
        getData(id);
        getComments(id);
    }
    protected void postComments_Click(object sender, EventArgs e)
    {
        try
        {
            int id = 0;
            string sid = Request.QueryString["id"].ToString();
            id = Convert.ToInt32(sid);
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "insert into comments values(" + id + ",'" + Session["username"].ToString() + "','" + Comments.Text + "',getDate())";
            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "kmnjl", "<script>alert('Comment Posted');</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}