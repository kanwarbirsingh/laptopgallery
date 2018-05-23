using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class customer_Compare : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            getProducts();

        }
    }

    public void getProducts()
    {
        int i = 0;

        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connect;
            cmd.CommandText = "select * from laptops order by Id desc";
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "categories");
            if (ds.Tables["categories"].Rows.Count > 0)
            {
                product1.Items.Add("Select");
                product2.Items.Add("Select");
                for (i = 0; i < ds.Tables["categories"].Rows.Count; i++)
                {
                    product1.Items.Add(ds.Tables["categories"].Rows[i][0].ToString() + " - " + ds.Tables["categories"].Rows[i][2].ToString());
                    product2.Items.Add(ds.Tables["categories"].Rows[i][0].ToString() + " - " + ds.Tables["categories"].Rows[i][2].ToString());
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

 
    protected void comaprePro_Click(object sender, EventArgs e)
    {

        string ssid = product1.SelectedItem.ToString();
        ssid = ssid.Substring(0, ssid.LastIndexOf("-")).Trim();
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "kolpi", "<script>alert("+ssid+");</script>");
        int prod1 = Convert.ToInt32(ssid);

        ssid = product2.SelectedItem.ToString();
        ssid = ssid.Substring(0, ssid.LastIndexOf("-")).Trim();
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "kolpi", "<script>alert("+ssid+");</script>");
        int prod2 = Convert.ToInt32(ssid);
        
        try
        {
            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connect;
            cmd.CommandText = "select * from laptops where Id=" + prod1;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = connect;
            cmd1.CommandText = "select * from laptops where Id=" + prod2;
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            adp.Fill(ds, "pro");
            DetailsView1.DataSource = ds.Tables["pro"];
            DetailsView1.DataBind();
            da.Fill(ds, "produc");
            DetailsView2.DataSource = ds.Tables["produc"];
            DetailsView2.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}