using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var qry = Request.GetFriendlyUrlSegments();
        
       // var qry = Request.QueryString;
        if (qry.Count > 0)
        {
            Label1.Text = qry[0];
            if (qry[0]=="4")
            {
                var f = File.ReadAllText(Server.MapPath("~/app_data/textfile.txt"));
                Label2.Text = f;
                
                //Response.WriteFile(Server.MapPath("~/app_data/textfile.txt"));

            }
        }

    }
}