<%@ WebService Language="C#" Class="WebService" %>
using MucWebforms;
using System;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Services.Protocols;
using System.Collections.Generic;
using System.Linq;


[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
// Wenn der Aufruf dieses Webdiensts aus einem Skript zulässig sein soll, heben Sie mithilfe von ASP.NET AJAX die Kommentarmarkierung für die folgende Zeile auf. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }




    [WebMethod]
    [ScriptMethod]
    public List<Treffpunkt> LadeDaten(int anzahl)
    {
        var ef = new Model1();
        ef.Configuration.LazyLoadingEnabled = false;
        var liste = ef.Treffpunkt.Take(anzahl).ToList<Treffpunkt>();


        return liste;
    }
}