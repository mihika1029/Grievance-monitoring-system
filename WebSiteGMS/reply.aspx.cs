using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class reply : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ESEBIS3\NEW1;Initial Catalog=db11;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
        con.Open();
     

        SqlCommand com = new SqlCommand(" SELECT * FROM GMS_GRIEVANCE WHERE gid="+Request.QueryString["id"], con);
        
        SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                name.Text = reader[0].ToString();
                email.Text = reader[1].ToString();
                number.Text = reader[2].ToString();
                grievance.Text = reader[3].ToString();
                date.Text = reader[4].ToString();
                
                
                
            }
            else
            {
                //return "1";
            }

            reader.Close();
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String reply = rep.Text;
        
        String date = DateTime.Now.Date.ToShortDateString();


        SqlCommand com = new SqlCommand("INSERT INTO REPLY(GID,DATE_OF_REPLY,REPLY,FROM1,TO1 ) values ('" + number.Text + "','" + date + "','" + rep.Text + "','" + Session["adminname"].ToString() + "','" + email.Text + "')", con);
        int x = com.ExecuteNonQuery();
        if(x>0)
        {
            rep.Text = " ";
            Response.Redirect("AdminIndex.aspx",false);
        }
        else
        {
            Response.Write("<script>alert('error')</script>");
        }
        
    }
}