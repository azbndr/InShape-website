using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sign_Up : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if(Session["s"].ToString()=="n" )
        //{
        //    Response.Redirect("Home.aspx");
        //}
        cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Reaper\Documents\DB.mdf;Integrated Security=True;Connect Timeout=30");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("insert into udata values('" + fname.Text + "','" + lname.Text + "','" + country.Text + "','" + email.Text + "','" + phone.Text + "','" + pass1.Text + "' )", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        Response.Redirect("Sign_in.aspx");
        cn.Close();
    }
}