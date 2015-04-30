using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Medsoft.Data;

namespace Medsoft.WebAPI.Controllers
{
    public class IdentitiesController : ApiController
    {
        private MedsoftEntities db = new MedsoftEntities();

        // GET: api/Identities
        public IQueryable<Identity> GetIdentities()
        {
            return db.Identities;
        }

        // GET: api/Identities/5
        [ResponseType(typeof(Identity))]
        public IHttpActionResult GetIdentity(Guid id)
        {
            Identity identity = db.Identities.Find(id);
            if (identity == null)
            {
                return NotFound();
            }

            return Ok(identity);
        }

        // PUT: api/Identities/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutIdentity(Guid id, Identity identity)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != identity.UserId)
            {
                return BadRequest();
            }

            db.Entry(identity).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!IdentityExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Identities
        [ResponseType(typeof(Identity))]
        public IHttpActionResult PostIdentity(Identity identity)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Identities.Add(identity);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (IdentityExists(identity.UserId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = identity.UserId }, identity);
        }

        // DELETE: api/Identities/5
        [ResponseType(typeof(Identity))]
        public IHttpActionResult DeleteIdentity(Guid id)
        {
            Identity identity = db.Identities.Find(id);
            if (identity == null)
            {
                return NotFound();
            }

            db.Identities.Remove(identity);
            db.SaveChanges();

            return Ok(identity);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool IdentityExists(Guid id)
        {
            return db.Identities.Count(e => e.UserId == id) > 0;
        }
    }
}