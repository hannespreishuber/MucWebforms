using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default20 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (true)
        {

         //   FormsAuthentication.SetAuthCookie("Franz",true);
            FormsAuthentication.RedirectFromLoginPage("hannes", true);


        }


    }
}