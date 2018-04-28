using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Reaper\Documents\DB.mdf;Integrated Security=True;Connect Timeout=30");
        Label1.Text = Session["email"].ToString();
        Label2.Text = Session["password"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("delete from udata where id ='" + t.Text + "'", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Admin.aspx");
    }
    //protected void Button3_Click(object sender, EventArgs e)
    //{
    //    SqlCommand cm = new SqlCommand("insert into udata values('" + t.Text + "','" + t1.Text + "')", cn);
    //    cn.Open();
    //    cm.ExecuteNonQuery();
    //    cn.Close();
        
    //}
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("update udata set password ='"+t1.Text+"'where id='"+t.Text+"' ",cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Admin.aspx");
    }
}