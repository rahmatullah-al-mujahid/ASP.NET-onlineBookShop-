using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Rahmatullah_1250255.Startup))]
namespace Rahmatullah_1250255
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
