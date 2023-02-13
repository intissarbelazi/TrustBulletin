#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TrustBulletinApi.Data;
using TrustBulletinApi.Models;

namespace TrustBulletinApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrgContextController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public OrgContextController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/OrgContext
        [HttpGet]
        public async Task<ActionResult<IEnumerable<OrgContext>>> GetOrgContexts()
        {
            return await _context.OrgContexts.ToListAsync();
        }

        // GET: api/OrgContext/5
        [HttpGet("{id}")]
        public async Task<ActionResult<OrgContext>> GetOrgContext(int id)
        {
            var orgContext = await _context.OrgContexts.FindAsync(id);

            if (orgContext == null)
            {
                return NotFound();
            }

            return orgContext;
        }

        // PUT: api/OrgContext/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutOrgContext(int id, OrgContext orgContext)
        {
            if (id != orgContext.Id)
            {
                return BadRequest();
            }

            _context.Entry(orgContext).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!OrgContextExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/OrgContext
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<OrgContext>> PostOrgContext(OrgContext orgContext)
        {
            _context.OrgContexts.Add(orgContext);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (OrgContextExists(orgContext.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetOrgContext", new { id = orgContext.Id }, orgContext);
        }

        // DELETE: api/OrgContext/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteOrgContext(int id)
        {
            var orgContext = await _context.OrgContexts.FindAsync(id);
            if (orgContext == null)
            {
                return NotFound();
            }

            _context.OrgContexts.Remove(orgContext);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool OrgContextExists(int id)
        {
            return _context.OrgContexts.Any(e => e.Id == id);
        }
    }
}
