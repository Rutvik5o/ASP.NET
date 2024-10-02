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
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.Items[0].Selected == true)
        {
            TextBox4.Enabled = true; ;
        }
        else
        {
            TextBox4.Enabled = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "Arrival Date: " + TextBox1.Text;

        TextBox5.Text += "\nNo Of Days: " + TextBox2.Text;

        TextBox5.Text += "\nRoom Type: " + DropDownList1.SelectedItem;

        TextBox5.Text += "\nRook Price:" + TextBox6.Text;

        TextBox5.Text += "\nNo Of Persons:" + TextBox3.Text;

        TextBox5.Text += "\nTotal Payment:" + (Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox6.Text)).ToString();

        TextBox5.Text += "\nAdvance Payment:" + TextBox4.Text;

        TextBox5.Text += "\nPayment Remaining=> " + (Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox6.Text) - Convert.ToInt32(TextBox4.Text)).ToString();


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox6.Text = DropDownList1.SelectedValue;
    }
}