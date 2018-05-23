using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class customer_BuyProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try 
            {
                string id = Request.QueryString["id"];
                SqlConnection connect = new SqlConnection();
                connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
                SqlCommand cmd = new SqlCommand("select price,model from laptops where Id=" + id, connect);
                //Response.Write("cmd executed");
                SqlDataAdapter pPrice = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                pPrice.Fill(ds,"proPrice");
                ///Response.Write("dsshjshhsxs");
                string s = ds.Tables["proPrice"].Rows[0][0].ToString();
                s = s.Replace(",","");
                int price = Convert.ToInt32(s);
                //Response.Write("cdhc");
                string proName = ds.Tables["proPrice"].Rows[0][1].ToString();
                //Response.Write("object made");
                SqlCommand command = new SqlCommand();
                command.Connection = connect;
                command.CommandText = "insert into cart values('" + Session["username"].ToString() + "'," + id + ",'" + proName + "'," + price + ",1)";
                connect.Open();
                command.ExecuteNonQuery();
                connect.Close();

                /*SqlCommand getData = new SqlCommand();
                getData.Connection = connect;
                getData.CommandText = "select ProductName, Price, Qty from cart where Username='" + Session["username"].ToString() + "'";
                SqlDataAdapter adp = new SqlDataAdapter(getData);
                adp.Fill(ds, "cart");
                GridView1.DataSource = ds.Tables["cart"];
                GridView1.DataBind();*/
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connect = new SqlConnection();
            //Response.Write("Passed : Connection \n");
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand cmd = new SqlCommand("select * from cart where username='" + Session["username"].ToString() + "'", connect);
            //Response.Write("Passed : Command \n");
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            //Response.Write("Passed : adp \n");
            DataSet ds = new DataSet();
            adp.Fill(ds, "order");
            //Response.Write("Passed : ds \n");
            for (int i = 0; i < ds.Tables["order"].Rows.Count; i++)
            {
                //Response.Write("Entered Loop : \n");
                SqlCommand command = new SqlCommand();
                command.Connection = connect;
                command.CommandText = "insert into orders(OrderedBy,OrderedOn,OrderStatus,PaymentMode,PaymentStatus) values('"+Session["username"].ToString()+"',getDate(),'Pending','COD','Pending') ";
                //Response.Write("Passed : command \n");
                connect.Open();
                //Response.Write("Passed : Connection opened \n");
                command.ExecuteNonQuery();
                //Response.Write("Passed : Command executed \n");
                connect.Close();
                //Response.Write("Passed : connection closed \n");

              
                SqlCommand cmd3 = new SqlCommand();
                cmd3.Connection = connect;
                cmd3.CommandText = "delete from cart where Username='"+Session["username"].ToString()+"'";
                
                //Response.Write("Passed :command \n");
                connect.Open();
                //Response.Write("Passed :connection opened \n");
                
                cmd3.ExecuteNonQuery();
                //Response.Write("Passed :command executed \n");
                connect.Close();
                //Response.Write("Passed :conn closed \n");
            }

            ClientScript.RegisterClientScriptBlock(this.GetType(), "asldkfnsaf", "<script>alert('Your Order has been confirmed. Thanks for purchasing with us.');</script>");
            Response.Redirect("~/customer/BoughtProduct.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}