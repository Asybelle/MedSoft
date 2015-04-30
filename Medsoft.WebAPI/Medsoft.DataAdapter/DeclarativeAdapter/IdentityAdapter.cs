using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Medsoft;

namespace Medsoft.DataAdapter.DeclarativeAdapter
{
    public class IdentityAdapter : IDeclarativeAdapter
    {
        public void InitMapping()
        {
            Mapper.CreateMap<Data.Identity, Models.Identity>()
              .ForMember(dest => dest.UserId, opt => opt.MapFrom(src => src.UserId))
              .ForMember(dest => dest.Username, opt => opt.MapFrom(src => src.Username))
              .ForMember(dest => dest.Role, opt => opt.MapFrom(src => src.Role))
              .ForMember(dest => dest.Password, opt => opt.MapFrom(src => src.Password));
        }
    }
}
