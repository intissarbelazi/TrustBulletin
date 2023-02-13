using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TrustBulletinApi.Data;
using TrustBulletinApi.Models;
//just for test
namespace TrustBulletinApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjetController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public ProjetController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/Projet
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Projet>>> GetProjets()
        {
          if (_context.Projets == null)
          {
              return NotFound();
          }
            return await _context.Projets.ToListAsync();
        }

        // GET: api/Projet/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Projet>> GetProjet(int id)
        {
          if (_context.Projets == null)
          {
              return NotFound();
          }
            var projet = await _context.Projets.FindAsync(id);

            if (projet == null)
            {
                return NotFound();
            }

            return projet;
        }

        // PUT: api/Projet/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutProjet(int id, Projet projet)
        {
            if (id != projet.Id)
            {
                return BadRequest();
            }

            _context.Entry(projet).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProjetExists(id))
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

        // POST: api/Projet
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Projet>> PostProjet(Projet projet)
        {
          if (_context.Projets == null)
          {
              return Problem("Entity set 'TrustBulletinApiContext.Projets'  is null.");
          }
            _context.Projets.Add(projet);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ProjetExists(projet.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetProjet", new { id = projet.Id }, projet);
        }

        // DELETE: api/Projet/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteProjet(int id)
        {
            if (_context.Projets == null)
            {
                return NotFound();
            }
            var projet = await _context.Projets.FindAsync(id);
            if (projet == null)
            {
                return NotFound();
            }

            _context.Projets.Remove(projet);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ProjetExists(int id)
        {
            return (_context.Projets?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
