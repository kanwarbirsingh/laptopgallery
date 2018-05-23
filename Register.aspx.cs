using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
            string query = "insert into logindetails values('"+username.Text+"','"+password.Text+"','customer','"+Mobile.Text+"','null','active','"+ques.Text+"','"+ans.Text+"')";
            string query2 = "insert into personaldetails(membername,address,city,state,pincode,email,mobile) values(" +
                "'"+fullname.Text+"','"+Address.Text+"','"+City.Text+"','"+State.Text+"',"+pinCode.Text+",'"+username.Text+"','"+Mobile.Text+"')";
            SqlCommand command = new SqlCommand();
            command.CommandText = query;
            command.Connection = connection;
            SqlCommand command2 = new SqlCommand();
            command2.CommandText = query2;
            command2.Connection = connection;
            connection.Open();
            command.ExecuteNonQuery();
            command2.ExecuteNonQuery();
            connection.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "registr", "<script>alert('you have been successfully registered');</script>");
            Response.Redirect("~/Login.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}