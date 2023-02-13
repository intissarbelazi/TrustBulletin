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
    public class AuditController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public AuditController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/Audit
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Audit>>> GetAudits(string idAdmin)
        {
            return await _context.Audits.Where(x => x.IdAdmin == idAdmin).ToListAsync();
        }

        // GET: api/Audit/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Audit>> GetAudit(string id)
        {
            var audit = await _context.Audits.FindAsync(id);

            if (audit == null)
            {
                return NotFound();
            }

            return audit;
        }

        // PUT: api/Audit/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAudit(string id, Audit audit)
        {
            if (id != audit.Id)
            {
                return BadRequest();
            }

            _context.Entry(audit).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AuditExists(id))
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

        // POST: api/Audit
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Audit>> PostAudit(Audit audit)
        {
            _context.Audits.Add(audit);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetAudit", new { id = audit.Id }, audit);
        }

        // DELETE: api/Audit/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAudit(string id)
        {
            var audit = await _context.Audits.FindAsync(id);
            if (audit == null)
            {
                return NotFound();
            }

            _context.Audits.Remove(audit);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool AuditExists(string id)
        {
            return _context.Audits.Any(e => e.Id == id);
        }

        [HttpGet("validatedControls")]
        public async Task<ActionResult<IEnumerable<Audit>>> validatedControls(string idAdmin)
        {
            return await _context.Audits.Where(x => x.IdAdmin == idAdmin && x.Status=="Validated").ToListAsync();
        }
        
        [HttpGet("underValidationControls")]
        public async Task<ActionResult<IEnumerable<Audit>>> technicalControls(string idAdmin)
        {
            return await _context.Audits.Where(x => x.IdAdmin == idAdmin && x.Status=="UnderValidation").ToListAsync();
        }
        [HttpGet("onGoingControls")]
        public async Task<ActionResult<IEnumerable<Audit>>> onGoingControls(string idAdmin)
        {
            return await _context.Audits.Where(x => x.IdAdmin == idAdmin && x.Status=="OnGoing").ToListAsync();
        }
        
    }
}
