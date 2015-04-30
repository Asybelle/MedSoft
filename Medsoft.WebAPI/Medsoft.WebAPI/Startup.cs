using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Medsoft.WebAPI.Startup))]
namespace Medsoft.WebAPI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
        }
    }
}
