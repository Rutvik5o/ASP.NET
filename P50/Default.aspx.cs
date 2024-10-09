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
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\ASP.NET\P502\main.mdb";

        OleDbConnection cn = new OleDbConnection(s);

        string qry = "select c.cname,p.pname,sd.UnitPrice*sd.qty as linetotal from cust c,product p,salesmaster sm,saledetails sd where sm.inumber = sd.inumber and sd.pcode =p.pcode and sm.ccode = c.ccode";

        OleDbCommand cmd = new OleDbCommand(qry, cn);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        FormView1.DataSource = ds.Tables[0];
        FormView1.DataBind();

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        FormView1.AllowPaging = true;
    }
}
