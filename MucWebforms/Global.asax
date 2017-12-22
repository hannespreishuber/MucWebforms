<%@ Application Language="C#" %>
<%@ Import Namespace="MucWebforms" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        Application["anzahl"] = 0;
    }
    void Session_Start(object sender, EventArgs e)
    {
        Application["anzahl"]=(int) Application["anzahl"]+1;

    }


</script>
