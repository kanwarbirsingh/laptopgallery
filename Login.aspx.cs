using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlCommand command = new SqlCommand();
            command.Connection = connect;
            command.CommandText = "select username,password,role from loginDetails where username='" + username.Text + "'";
            SqlDataAdapter adp = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adp.Fill(ds, "login");
            if (ds.Tables["login"].Rows.Count > 0)
            {
                if (ds.Tables["login"].Rows[0][1].ToString().Equals(Password.Text))
                {
                    //Response.Write("Password Ok");
                    if (ds.Tables["login"].Rows[0][2].ToString().Equals("customer"))
                    {
                        //Response.Write("Entered First If");
                        Session["username"] = username.Text;
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "mkloi", "<script>alert('login successfull. Username: " + Session["username"].ToString() + "');</script>");
                        Response.Redirect("~/customer/Default.aspx");
                    }
                    if (ds.Tables["login"].Rows[0][2].ToString().Equals("admin"))
                    {
                        Session["username"] = username.Text;
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "mklofgi", "<script>alert('login successfull. Username: " + Session["username"].ToString() + "');</script>");
                        Response.Redirect("~/admin/Default.aspx");
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "mgt", "<script>alert('Invalid Password');</script>");
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "msggt", "<script>alert('Invalid Username');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}