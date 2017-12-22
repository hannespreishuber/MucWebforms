using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MucWebforms.Startup))]
namespace MucWebforms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            //ConfigureAuth(app);
        }
    }
}
