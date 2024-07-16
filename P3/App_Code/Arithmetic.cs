using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Arithmetic
/// </summary>
public class Arithmetic
{
	public Arithmetic()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int sum(int num1, int num2)
    {
        return (num1 + num2);
    }

    public int mul(int num1, int num2)
    {
        return (num1 * num2);
    }




}
