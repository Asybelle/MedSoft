using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medsoft.Data.Repositories
{
    public class IdentityRepository
    {
        public Identity GetUserIdentityById(string id)
        {
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                Guid userId = Guid.Empty;
                Identity identity = null;
                if (Guid.TryParse(id, out userId))
                {
                    identity = context.Identities.Where(x => x.UserId == userId).FirstOrDefault();
                }
                return identity;
            }
        }

        public Identity GetUserIdentityByUsername(string username)
        {
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                Guid userId = Guid.Empty;
                Identity identity = null;
                identity = context.Identities.Where(x => x.Username == username).FirstOrDefault();

                return identity;
            }
        }

        public Identity CreateUserIdentity(Identity user)
        {
            user.UserId = Guid.NewGuid();
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Identities.Add(user);
                context.SaveChanges();
            }
            return user;
        }

        public List<Identity> GetAllUsers()
        {
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                return context.Identities.ToList();
            }
        }

        public Identity CheckUserIdentity(string username, string password)
        {
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                return context.Identities.Where(x => x.Username == username && x.Password == password).FirstOrDefault();
            }
        }

        public void DeleteUserIdentity(Identity userIdentity)
        {
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Identities.Attach(userIdentity);
                context.Identities.Remove(userIdentity);
                context.SaveChanges();
            }
        }

        public void UpdateUserIdentity(Identity userIdentity)
        {
            using (MedsoftEntities context = new MedsoftEntities())
            {
                context.Identities.Attach(userIdentity);
                context.Entry(userIdentity).State = EntityState.Modified;
                context.SaveChanges();
            }
        }

    }
}
