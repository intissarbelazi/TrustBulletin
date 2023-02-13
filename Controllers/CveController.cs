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
    public class CveController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public CveController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/Cve
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Cve>>> GetCves()
        {
          if (_context.Cves == null)
          {
              return NotFound();
          }
            return await _context.Cves.ToListAsync();
        }

        // GET: api/Cve/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Cve>> GetCve(string id)
        {
          if (_context.Cves == null)
          {
              return NotFound();
          }
            var cve = await _context.Cves.FindAsync(id);

            if (cve == null)
            {
                return NotFound();
            }

            return cve;
        }

        // PUT: api/Cve/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCve(string id, Cve cve)
        {
            if (id != cve.Id)
            {
                return BadRequest();
            }

            _context.Entry(cve).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CveExists(id))
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

        // POST: api/Cve
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Cve>> PostCve(Cve cve)
        {
          if (_context.Cves == null)
          {
              return Problem("Entity set 'TrustBulletinApiContext.Cves'  is null.");
          }
            _context.Cves.Add(cve);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CveExists(cve.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCve", new { id = cve.Id }, cve);
        }

        // DELETE: api/Cve/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCve(string id)
        {
            if (_context.Cves == null)
            {
                return NotFound();
            }
            var cve = await _context.Cves.FindAsync(id);
            if (cve == null)
            {
                return NotFound();
            }

            _context.Cves.Remove(cve);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CveExists(string id)
        {
            return (_context.Cves?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
