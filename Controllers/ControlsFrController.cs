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
    public class ControlsFrController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public ControlsFrController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/ControlsFr
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ControlsFr>>> GetControlsFrs()
        {
          if (_context.ControlsFrs == null)
          {
              return NotFound();
          }
            return await _context.ControlsFrs.ToListAsync();
        }

        // GET: api/ControlsFr/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ControlsFr>> GetControlsFr(int id)
        {
          if (_context.ControlsFrs == null)
          {
              return NotFound();
          }
            var controlsFr = await _context.ControlsFrs.FindAsync(id);

            if (controlsFr == null)
            {
                return NotFound();
            }

            return controlsFr;
        }

        // PUT: api/ControlsFr/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutControlsFr(int id, ControlsFr controlsFr)
        {
            if (id != controlsFr.Id)
            {
                return BadRequest();
            }

            _context.Entry(controlsFr).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ControlsFrExists(id))
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

        // POST: api/ControlsFr
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<ControlsFr>> PostControlsFr(ControlsFr controlsFr)
        {
          if (_context.ControlsFrs == null)
          {
              return Problem("Entity set 'TrustBulletinApiContext.ControlsFrs'  is null.");
          }
            _context.ControlsFrs.Add(controlsFr);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetControlsFr", new { id = controlsFr.Id }, controlsFr);
        }

        // DELETE: api/ControlsFr/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteControlsFr(int id)
        {
            if (_context.ControlsFrs == null)
            {
                return NotFound();
            }
            var controlsFr = await _context.ControlsFrs.FindAsync(id);
            if (controlsFr == null)
            {
                return NotFound();
            }

            _context.ControlsFrs.Remove(controlsFr);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ControlsFrExists(int id)
        {
            return (_context.ControlsFrs?.Any(e => e.Id == id)).GetValueOrDefault();
        }

        [HttpGet("organisationalControls")]
        public async Task<ActionResult<IEnumerable<ControlsFr>>> organisationalControls()
        {
            return await _context.ControlsFrs.Where(c => c.Type == "Organisationnel").ToListAsync();
        }
        [HttpGet("technicalControls")]
        public async Task<ActionResult<IEnumerable<ControlsFr>>> technicalControls()
        {
            return await _context.ControlsFrs.Where(c => c.Type == "Technique").ToListAsync();
        }[HttpGet("physicalControls")]
        public async Task<ActionResult<IEnumerable<ControlsFr>>> physicalControls()
        {
            return await _context.ControlsFrs.Where(c => c.Type == "Physique").ToListAsync();
        }
    }
}
