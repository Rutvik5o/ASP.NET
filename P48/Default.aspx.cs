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
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page 
{
    string s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\ASP.NET\P48\main.mdb";
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into student values(" + TextBox1.Text + ",'" + TextBox2.Text + "'," + TextBox3.Text + ")";

        cn = new OleDbConnection(s);
        cn.Open();
        cmd = new OleDbCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("Record Inserted");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry = "update student set stud_name='" + TextBox2.Text + "',stud_marks=" + TextBox3.Text + " where stud_id=" + TextBox1.Text + "";

        cn = new OleDbConnection(s);
        cn.Open();
        cmd = new OleDbCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("Record Updated");


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string qry = "delete from student where stud_id =" + TextBox1.Text + "";

        cn = new OleDbConnection(s);
        cn.Open();
        cmd = new OleDbCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("Record Deleted");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
    }
}
