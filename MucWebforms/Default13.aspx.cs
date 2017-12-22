using MucWebforms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public List<Treffpunkt> rptTreffpunkt_GetData()
    {
        var ef = new Model1();
        if (Cache["daten"] == null)
        {
            Cache["daten"] = ef.Treffpunkt.ToList<Treffpunkt>();
        }


        var ret = (List<Treffpunkt>) Cache["daten"];

        return ret;
    }
}