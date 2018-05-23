using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.CommandText = "select top 10 * from laptops order by id desc";
            command.Connection = connect;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            da.Fill(ds, "laptops");
            Repeater1.DataSource = ds.Tables["laptops"];
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}