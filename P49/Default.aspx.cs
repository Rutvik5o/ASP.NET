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

    string s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\ASP.NET\P49\main.mdb";
    OleDbConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a1, a2;
        int a3 = 0; 
        string M;

   
        cn = new OleDbConnection(s);

      
        s = "SELECT MAX(e_code) FROM employee";
        OleDbCommand cmd = new OleDbCommand(s, cn);

        cn.Open();

       
        object result = cmd.ExecuteScalar();
        a1 = (result == DBNull.Value) ? "" : result.ToString(); 

        if (string.IsNullOrEmpty(a1))
        {
            a2 = "E001"; //
        }
        else
        {
            string numericPart = a1.Substring(1); 
            if (Int32.TryParse(numericPart, out a3)) 
            {
                
                a3 += 1;

                
                M = a3.ToString("D3");
                a2 = "E" + M; 
            }
            else
            {
             
                Response.Write("Error: Invalid format for e_code numeric part.");
                cn.Close();
                return; 
            }
        }

      
        s = "INSERT INTO employee VALUES ('" + a2 + "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', " +
            DropDownList1.SelectedValue + ", " + DropDownList2.SelectedValue + ", " +
            DropDownList3.SelectedValue + ")";


        OleDbCommand cmd1 = new OleDbCommand(s, cn);


        cmd1.ExecuteNonQuery(); 


        cn.Close();

   
        Response.Write("Record Inserted Successfully");



    }
}
    