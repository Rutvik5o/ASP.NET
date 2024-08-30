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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["myval"] != null)
        {
            lblino.Text = "<b> Item No => <b>" + Request.Cookies["myval"]["I_No"];
            lbliname.Text = "<b> Item Name => <b>" + Request.Cookies["myval"]["I_Name"];
            lbliprice.Text = "<b> Item Price => <b>" + Request.Cookies["myval"]["I_Price"];
            lbliqty.Text = "<b> Item Qty => <b>" + Request.Cookies["myval"]["I_Qty"];


        }
    }
}
