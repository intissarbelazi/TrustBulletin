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
    public class AnsiControlController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public AnsiControlController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/AnsiControl
        [HttpGet]
        public async Task<ActionResult<IEnumerable<AnsiControl>>> GetAnsiControls()
        {
            return await _context.AnsiControls.ToListAsync();
        }

        // GET: api/AnsiControl/5
        [HttpGet("{id}")]
        public async Task<ActionResult<AnsiControl>> GetAnsiControl(string id)
        {
            var ansiControl = await _context.AnsiControls.FindAsync(id);

            if (ansiControl == null)
            {
                return NotFound();
            }

            return ansiControl;
        }

        // PUT: api/AnsiControl/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAnsiControl(string id, AnsiControl ansiControl)
        {
            if (id != ansiControl.Reference)
            {
                return BadRequest();
            }

            _context.Entry(ansiControl).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AnsiControlExists(id))
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

        // POST: api/AnsiControl
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<AnsiControl>> PostAnsiControl(AnsiControl ansiControl)
        {
            _context.AnsiControls.Add(ansiControl);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (AnsiControlExists(ansiControl.Reference))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetAnsiControl", new { id = ansiControl.Reference }, ansiControl);
        }

        // DELETE: api/AnsiControl/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAnsiControl(string id)
        {
            var ansiControl = await _context.AnsiControls.FindAsync(id);
            if (ansiControl == null)
            {
                return NotFound();
            }

            _context.AnsiControls.Remove(ansiControl);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool AnsiControlExists(string id)
        {
            return _context.AnsiControls.Any(e => e.Reference == id);
        }

        [HttpGet("organisationalControls")]
        public async Task<ActionResult<IEnumerable<AnsiControl>>> organisationalControls()
        {
            return await _context.AnsiControls.Where(c => c.Type == "Organisationnel").ToListAsync();
        }
        [HttpGet("technicalControls")]
        public async Task<ActionResult<IEnumerable<AnsiControl>>> technicalControls()
        {
            return await _context.AnsiControls.Where(c => c.Type == "Technique").ToListAsync();
        }[HttpGet("physicalControls")]
        public async Task<ActionResult<IEnumerable<AnsiControl>>> physicalControls()
        {
            return await _context.AnsiControls.Where(c => c.Type == "Physique").ToListAsync();
        }

        
    }
}
