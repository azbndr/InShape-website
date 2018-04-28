using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Sign_in : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Reaper\Documents\DB.mdf;Integrated Security=True;Connect Timeout=30");
    }
    protected void login_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("select * from udata where email = '"+loginId.Text+"'and password = '"+loginPass.Text+"' ",cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        if(dr.HasRows)
        {
            Session.Add("email",loginId.Text);
            Session.Add("password", loginPass.Text);
            Session["s"] = loginId.Text;
            Response.Redirect("Admin.aspx");
        }
        else
        { Response.Redirect("Sign_Up.aspx"); }
        cn.Close();
    }
}