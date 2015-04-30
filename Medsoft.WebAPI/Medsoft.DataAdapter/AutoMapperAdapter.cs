using AutoMapper;
using Medsoft.DataAdapter.DeclarativeAdapter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medsoft.DataAdapter
{
    public static class AutoMapperAdapter
    {
        public static void Init()
        {
            IDeclarativeAdapter identityAdapter = new IdentityAdapter();
            identityAdapter.InitMapping();
        }
     
        public static Models.Identity GetIdentity(this Data.Identity source)
        {
            return Mapper.Map<Data.Identity, Models.Identity>(source);
        }
    }
}
