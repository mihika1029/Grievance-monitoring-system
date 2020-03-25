using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ESEBIS3\NEW1;Initial Catalog=db11;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
   
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            String username = email.Text;
            String password = pwd.Text;
            SqlCommand com = new SqlCommand("SELECT * FROM GMS_USER WHERE EMAIL_ID = @email AND PASSWORD = @pwd", con);
            com.Parameters.AddWithValue("email", username);
            com.Parameters.AddWithValue("pwd", password);
            con.Open();
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
               
                    Session["username"] = Convert.ToString(reader["EMAIL_ID"]);
                    Session["name"] = Convert.ToString(reader["NAME"]);
                    Session["contact"] = Convert.ToString(reader["CONTACT_NO"]);
                    
                    Response.Redirect("UserIndex.aspx", false);

                }
            

            else
                Response.Write("<script>alert('Invalid username or password')</script>");

            
    }
    protected void pwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        email.Text = "";
        pwd.Text = "";
    }
}
