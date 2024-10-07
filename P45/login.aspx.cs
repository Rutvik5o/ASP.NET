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
using System.Data;


public partial class login : System.Web.UI.Page
{

    string s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\ASP.NET\P452\main.mdb";
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        cn = new OleDbConnection(s);

        s = "select * from login where username='" + Login1.UserName + "'and userpass='" + Login1.Password + "'";

        cmd = new OleDbCommand(s, cn);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0][3].ToString() == "admin")
            {
                Response.Redirect("product.aspx");
            }
            else
            {
                Response.Redirect("sorry.aspx");
            }

        }
        else
        {
            Response.Redirect("sorry.aspx");
        }
    }
            
 }

