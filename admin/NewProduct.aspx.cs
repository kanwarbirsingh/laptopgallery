using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_NewProduct : System.Web.UI.Page
{

    public void formreset()
    {
        company.Text = "";         model.Text = "";         ram.Text = "";         hdd.Text = "";
        display.Text = "";         gcard.Text = "";         processor.Text = "";         os.Text = "";
        webcam.Text = "";         btooth.Text = "";         wifi.Text = "";         dvdwr.Text = "";
        audio.Text = "";         additional.Text = "";         price.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string fileName = "No File";
        try
        {
            if (FileUpload1.HasFile)
            {
                fileName = FileUpload1.FileName;
                string k = Path.GetExtension(FileUpload1.FileName);
                if (k.Equals(".jpg") || k.Equals(".jpeg") || k.Equals(".png") || k.Equals(".bmp") || k.Equals(".gif"))
                {

                    FileUpload1.SaveAs(Server.MapPath("~/productImages/" + fileName));

                    string query = "insert into laptops(company,model,ram,hdd,display,graphiccard,processor,os,webcam,bluetooth,wifi,dvdwriter,audio,additional,imgpath,price) values(" +
                        "'" + company.Text + "','" + model.Text + "','" + ram.Text + "','" + hdd.Text + "','" + display.Text + "','" + gcard.Text + "','" + processor.Text + "','" + os.Text + "','" + webcam.Text + "','" + btooth.Text + "'," +
                    "'" + wifi.Text + "','" + dvdwr.Text + "','" + audio.Text + "','" + additional.Text + "','" + fileName + "','" + price.Text + "')";
                    SqlConnection connect = new SqlConnection();
                    connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    SqlCommand command = new SqlCommand();
                    command.Connection = connect;
                    command.CommandText = query;
                    connect.Open();
                    //Response.Write("Connection Opn\n");
                    command.ExecuteNonQuery();
                    //Response.Write("Command Executed");
                    connect.Close();
                    //Response.Write("Connect Close");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "eMessg", "<script>alert('Product has been added to database');</script>");
                    formreset();

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "eMsg", "<script>alert('You can only upload jpg|jpeg|bmp|gif|png files.');</script>");
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "eMsgg", "<script>alert('Please upload an image of the product');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        formreset();
    }
}