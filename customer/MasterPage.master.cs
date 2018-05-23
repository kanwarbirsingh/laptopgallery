using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public void getNews()
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select top 6 * from news order by newsID desc";
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "news");
            if (ds.Tables["news"].Rows.Count > 0)
            {
                Repeater1.DataSource = ds.Tables["news"];
                Repeater1.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void getCart()
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select count(*) from cart where Username='"+Session["username"].ToString()+"'";
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "cart");
            string count = ds.Tables["cart"].Rows[0][0].ToString();
            mycart.Text = count;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

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
        
        
        if (!IsPostBack)
        {

            getCart();
            getNews();    
        }
    }
}
