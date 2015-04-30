using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Medsoft.Data.Repositories;
using Newtonsoft.Json;
using Medsoft.Data;

namespace Medsoft.API.Controllers
{
    public class IdentitiesController : ApiController
    {
        private IdentityRepository repository = null;
        public IdentitiesController()
        {
            repository = new IdentityRepository();
        }

        [HttpGet]
        public Identity GetUserIdentityById(string id)
        {
            return repository.GetUserIdentityById(id);
        }
        [HttpGet]
        public Identity GetUserIdentityByUsername(string username)
        {
            return repository.GetUserIdentityByUsername(username);
        }
        [HttpPost]
        public Identity CreateUserIdentity([FromBody]Identity user)
        {
            return repository.CreateUserIdentity(user);
        }
        [HttpGet]
        public List<Identity> GetAllUsersIdentities()
        {
            return repository.GetAllUsers();
        }
        [HttpGet]
        public Identity CheckCredentials(string username, string password)
        {
            return repository.CheckUserIdentity(username, password);
        }
        [HttpPost]
        public void DeleteUserIdentity([FromBody]Identity userIdentity)
        {
            repository.DeleteUserIdentity(userIdentity);
        }
        [HttpPost]
        public void UpdateUserIdentity([FromBody]Identity userIdentity)
        {
            repository.UpdateUserIdentity(userIdentity);
        }
    }
}