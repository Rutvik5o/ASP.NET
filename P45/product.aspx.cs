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

public partial class product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("productlist.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\ASP.NET\P452\main.mdb";

        OleDbConnection cn = new OleDbConnection(s);

        s = "insert into product values("+TextBox1.Text + ",'"+TextBox2.Text + "','" + TextBox3.Text+"','" + TextBox4.Text+"','"+DropDownList1.SelectedItem+"','" + FileUpload1.FileName+"')";

        OleDbCommand cmd = new OleDbCommand(s,cn);

        cn.Open();

        cmd.ExecuteNonQuery();

        Response.Write("Product Inserted");

        cn.Close();

        if(FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\imgs\\" + FileUpload1.FileName));
        }
        else
        {
            Response.Write("File Not Found");
        }
    }
}
