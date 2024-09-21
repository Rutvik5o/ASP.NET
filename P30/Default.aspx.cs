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
        Calendar1.Caption = "calender";

        Calendar1.FirstDayOfWeek = FirstDayOfWeek.Monday;

        Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;

        Calendar1.DayStyle.Height = new Unit(50);

        Calendar1.DayStyle.Width = new Unit(50);

        String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\ASP.NET\P301\Main1.mdb";

        OleDbConnection cn = new OleDbConnection(s);

        s = "select * from Table1 where Student_Bday = #" + Calendar1.SelectedDate.ToString() + "#";

        OleDbCommand cmd = new OleDbCommand(s, cn);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);


    }
}
