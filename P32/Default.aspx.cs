using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String id = TextBox1.Text;
        String name = TextBox2.Text;
        String email = TextBox3.Text;
        String pass = TextBox4.Text;
        String answer = TextBox5.Text;


        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\\ASP.NET\\P32\\Database2.accdb");
        con.Open();

        String str = "insert into student values('" + id + "','" + name + "','" + email + "','" + pass  + "','" + answer + "')";

        OleDbCommand cm = new OleDbCommand(str, con);

        cm.ExecuteNonQuery();

        Response.Write("Data inserted");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
