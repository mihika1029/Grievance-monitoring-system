using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RegisterForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ESEBIS3\NEW1;Initial Catalog=db11;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

        con.Open();
        try
        {

            email.Text = Session["username"].ToString();
            name.Text = Session["name"].ToString();
            cn.Text = Session["contact"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("Login.aspx");
        }

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        String grievance = suggestions.Text;
        Session["username"] = (string)Session["EMAIL_ID"];
        String dt = DateTime.Now.Date.ToShortDateString();
        

        SqlCommand com = new SqlCommand("INSERT INTO GMS_GRIEVANCE(NAME,EMAIL_ID,GRIEVANCE,DATE_OF_GRIEVANCE ) values ('" + name.Text + "','" + email.Text + "','" + suggestions.Text + "','" + dt + "')", con);
            int x= com.ExecuteNonQuery();
            if (x > 0)
            {
                suggestions.Text = " ";
                Response.Redirect("Blank.aspx");
            }
            else
            {
                Response.Write("<script>alert('error')</script>");
            }
           
            

            
        
    }
   
}