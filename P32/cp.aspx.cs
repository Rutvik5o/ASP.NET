using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class cp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\\ASP.NET\\P32\\Database2.accdb"))
        {
            con.Open();

            // Use parameters to avoid SQL injection
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM student WHERE pass = ?", con);
            cmd.Parameters.AddWithValue("@pass", TextBox1.Text);

            OleDbDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                if (TextBox2.Text == TextBox3.Text) // Use "==" for comparison
                {
                    Label1.Text = "Password Match!! Wait, changing password...";

                    // Use parameters for the update query
                    OleDbCommand cmd1 = new OleDbCommand("UPDATE student SET pass = ? WHERE pass = ?", con);
                    cmd1.Parameters.AddWithValue("@newpass", TextBox2.Text);
                    cmd1.Parameters.AddWithValue("@oldpass", TextBox1.Text);

                    cmd1.ExecuteNonQuery();

                    Label1.Text = "Password Changed Successfully";
                }
                else
                {
                    Label1.Text = "New and Retype Password do not match!";
                }
            }
            else
            {
                Label1.Text = "Password Incorrect! Please enter the correct password.";
            }
        }
    }
}
