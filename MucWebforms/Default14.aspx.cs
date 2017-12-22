using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using MucWebforms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
    // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
    public MucWebforms.Anforderung FormView1_GetItem([FriendlyUrlSegments(0)] int id)
    {
        var ef = new Model1();
        return ef.Anforderung.Find(id);
    }

    // Der Name des ID-Parameters sollte dem für das Steuerelement 
    //festgelegten DataKeyNames-Wert entsprechen.
    public void FormView1_UpdateItem(int id)
    {
        MucWebforms.Anforderung item = null;
        // Element hier laden, z. B. item = MyDataLayer.Find(id);
        var ef = new Model1();
        item = ef.Anforderung.Find(id);
        var datum = item.Datum;
        if (item == null)
        {
            // Das Element wurde nicht gefunden.
            ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", id));
            return;
        }
        TryUpdateModel(item);

        if (ModelState.IsValid & datum>item.Datum)
        {
            // Änderungen hier speichern, z. B. MyDataLayer.SaveChanges();
            ef.SaveChanges();
        }
    }

    public void FormView1_InsertItem()
    {
        var ef = new Model1();
        var item = new MucWebforms.Anforderung();
        item.Datum = DateTime.Now;

        TryUpdateModel(item);
        if (ModelState.IsValid)
        {
            ef.Anforderung.Add(item);
            ef.SaveChanges();
            Response.Redirect("/default14/" + item.Id.ToString());

        }
    }

    // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
    public void FormView1_DeleteItem(int id)
    {
        var ef = new Model1();
        var anf = ef.Anforderung.Find(id);
        ef.Anforderung.Remove(anf);
        ef.SaveChanges();
        //var max = ef.Anforderung.OrderByDescending(x => x.Id).FirstOrDefault().Id;
        // Response.Redirect("/default14/" + max.ToString());
        FormView1.ChangeMode(FormViewMode.Insert);
    }

    public List<MucWebforms.Treffpunkt> GetTreffpunkte()
    {
        var ef = new Model1();
        Trace.Warn(ef.Treffpunkt.Count().ToString());
        return ef.Treffpunkt.ToList();
    }


    //public IEnumerable<Treffpunkt> rptTreffpunkt_GetData()
    //{
    //    var ef = new Model1();
    //    return ef.Treffpunkt;
    //}
}
