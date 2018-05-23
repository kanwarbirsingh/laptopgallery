using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class customer_Comments : System.Web.UI.Page
{

    public void getComments()
    {
        try
        {
            
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            DataSet ds = new DataSet();
            
            SqlCommand command = new SqlCommand();
            //Response.Write("cmd 2 created");
            command.Connection = connect;
            command.CommandText = "select * from comments where username='"+Session["username"].ToString()+"'";
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(ds, "reviews");
            if (ds.Tables["reviews"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["reviews"];
                GridView1.DataBind();
            }
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getComments();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            //Response.Write("entered selected index changed");
            GridViewRow row = GridView1.SelectedRow;
            //Response.Write("got gridview row");
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select company,model from laptops where ProductId=" + row.Cells[2].ToString();
            //Response.Write("command completed");
            SqlDataAdapter adpa = new SqlDataAdapter(command);
            //Response.Write(" done adp");
            DataSet ds2 = new DataSet();
            //Response.Write(" done ds ");
            adpa.Fill(ds2, "Products");
            //Response.Write(" filled ds ");
            DetailsView1.DataSource = ds2.Tables["Products"];
            DetailsView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }



}