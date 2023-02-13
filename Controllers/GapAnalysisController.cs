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
    public class GapAnalysisController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public GapAnalysisController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/GapAnalysis
        [HttpGet]
        public async Task<ActionResult<IEnumerable<GapAnalysis>>> GetGapAnalyses()
        {
            return await _context.GapAnalyses.ToListAsync();
        }

        // GET: api/GapAnalysis/5
        [HttpGet("{id}")]
        public async Task<ActionResult<GapAnalysis>> GetGapAnalysis(string id)
        {
            var gapAnalysis = await _context.GapAnalyses.FindAsync(id);

            if (gapAnalysis == null)
            {
                return NotFound();
            }

            return gapAnalysis;
        }

        // PUT: api/GapAnalysis/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutGapAnalysis(string id, GapAnalysis gapAnalysis)
        {
            if (id != gapAnalysis.Id)
            {
                return BadRequest();
            }

            _context.Entry(gapAnalysis).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GapAnalysisExists(id))
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

        // POST: api/GapAnalysis
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<GapAnalysis>> PostGapAnalysis(GapAnalysis gapAnalysis)
        {
            _context.GapAnalyses.Add(gapAnalysis);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetGapAnalysis", new { id = gapAnalysis.Id }, gapAnalysis);
        }

        // DELETE: api/GapAnalysis/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteGapAnalysis(string id)
        {
            var gapAnalysis = await _context.GapAnalyses.FindAsync(id);
            if (gapAnalysis == null)
            {
                return NotFound();
            }

            _context.GapAnalyses.Remove(gapAnalysis);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool GapAnalysisExists(string id)
        {
            return _context.GapAnalyses.Any(e => e.Id == id);
        }
    }
}
