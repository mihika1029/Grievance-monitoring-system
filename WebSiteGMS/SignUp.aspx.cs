using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ESEBIS3\NEW1;Initial Catalog=db11;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
   
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand com = new SqlCommand("insert into gms_user values('" + name.Text + "','" + email.Text + "','" + pwd.Text + "','" + cn.Text + "','" + addr.Text + "')", con);
        int x = com.ExecuteNonQuery();
        if (x > 0)
        {
            Response.Write("<script>alert('data registred')</script>");

            name.Text = "";
            email.Text = "";
            pwd.Text = "";
            cn.Text = "";
            addr.Text = "";
            Response.Redirect("Login.aspx", false);
        }
        else
            Response.Write("<script>alert('data not registred')</script>");


    }
}