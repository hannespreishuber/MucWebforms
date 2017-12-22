using MucWebforms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default12 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var ef = new Model1();
        var liste=ef.Treffpunkt.ToList<Treffpunkt>();
        //LINQ
        Repeater1.DataSource = liste.Where(
            (x) => x.Ort.Contains(txtSuche.Text)
            );
        Repeater1.DataBind();
    }
}