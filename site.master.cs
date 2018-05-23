using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.CommandText = "select top 3 * from news order by newsid desc";
            command.Connection = connect;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            da.Fill(ds, "news");
            Repeater1.DataSource = ds.Tables["news"];
            Repeater1.DataBind();

            SqlCommand command2 = new SqlCommand();
            command2.CommandText = "select distinct(company) as company from laptops order by company";
            command2.Connection = connect;
            SqlDataAdapter da2 = new SqlDataAdapter(command2);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2, "company");
            Repeater2.DataSource = ds2.Tables["company"];
            Repeater2.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
