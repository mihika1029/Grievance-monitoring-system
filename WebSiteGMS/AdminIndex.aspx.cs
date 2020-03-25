using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminIndex : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ESEBIS3\NEW1;Initial Catalog=db11;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
        con.Open();
        //SqlCommand com = new SqlCommand("select * from gms_grievance", con);
        //SqlDataReader dr = com.ExecuteReader();
        //GridView1.DataSource = dr;
        //GridView1.DataBind();
        //dr.Close();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "rep")
        {
            Response.Redirect("reply.aspx?id=" + e.CommandArgument);
        }
    }
}