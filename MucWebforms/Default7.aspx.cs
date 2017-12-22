using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var cookie = new HttpCookie("Christkindl", "24.12.2017");
        cookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(cookie);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var cookie = Request.Cookies["Christkindl"];
        Label1.Text = cookie.Value;
    }
}