using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ViewProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        string pid = gr.Cells[1].Text;
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            string query = "select * from laptops where id="+pid;
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = query;
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "product");
            DetailsView1.DataSource = ds.Tables["product"];
            DetailsView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}