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
    public class RiskController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public RiskController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/Risk
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Risk>>> GetRisks(string idAdmin)

        {
            if (_context.Risks == null)
            {
                return NotFound();
            }
            return await _context.Risks.Where(x => x.IdAdmin == idAdmin).ToListAsync();
        }

        // GET: api/Risk/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Risk>> GetRisk(string id)
        {
            if (_context.Risks == null)
            {
                return NotFound();
            }
            var risk = await _context.Risks.FindAsync(id);

            if (risk == null)
            {
                return NotFound();
            }

            return risk;
        }

        // PUT: api/Risk/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRisk(string id, Risk risk)
        {
            if (id != risk.Id)
            {
                return BadRequest();
            }

            _context.Entry(risk).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RiskExists(id))
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

        // POST: api/Risk
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Risk>> PostRisk(Risk risk)
        {
            if (_context.Risks == null)
            {
                return Problem("Entity set 'TrustBulletinApiContext.Risks'  is null.");
            }
            _context.Risks.Add(risk);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (RiskExists(risk.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetRisk", new { id = risk.Id }, risk);
        }

        // DELETE: api/Risk/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRisk(string id)
        {
            if (_context.Risks == null)
            {
                return NotFound();
            }
            var risk = await _context.Risks.FindAsync(id);
            if (risk == null)
            {
                return NotFound();
            }

            _context.Risks.Remove(risk);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RiskExists(string id)
        {
            return (_context.Risks?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
