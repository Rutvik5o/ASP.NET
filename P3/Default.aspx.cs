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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Arithmetic Obj = new Arithmetic();

        int a = Convert.ToInt16(TextBox1.Text);

        int b = Convert.ToInt16(TextBox2.Text);

        Label4.Text = "Addition => " + Obj.sum(a, b).ToString();

        //int ans= a+b;

       // Response.Write("Sum is=> " + Convert.ToString(ans));

        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Arithmetic Obj = new Arithmetic();

        int ans;

        ans = Obj.mul(Convert.ToInt16(TextBox1.Text), Convert.ToInt16(TextBox2.Text));

        Response.Write("Multiplication=> " + Convert.ToString(ans));
    }
}
