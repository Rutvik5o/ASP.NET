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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\\ASP.NET\\P32\\Database2.accdb");

        con.Open();

        String str = "select * from student where name = '" + TextBox1.Text + "' and pass = '" + TextBox2.Text + "'";

        OleDbCommand cm = new OleDbCommand(str,con);

        OleDbDataReader dr = cm.ExecuteReader();

        if(dr.Read())
        {
            Label1.Text = "Login Succesfully";
        }
        else
        {
            Label1.Text = "Login Failed";
        }



    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cp.aspx");
    }
}
