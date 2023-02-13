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
    public class DocumentControlsController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public DocumentControlsController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/DocumentControls
        [HttpGet]
        public async Task<ActionResult<IEnumerable<DocumentControl>>> GetDocumentControls()
        {
            return await _context.DocumentControls.ToListAsync();
        }

        // GET: api/DocumentControls/5
        [HttpGet("{id}")]
        public async Task<ActionResult<DocumentControl>> GetDocumentControl(int id)
        {
            var documentControl = await _context.DocumentControls.FindAsync(id);

            if (documentControl == null)
            {
                return NotFound();
            }

            return documentControl;
        }

        // PUT: api/DocumentControls/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDocumentControl(int id, DocumentControl documentControl)
        {
            if (id != documentControl.Id)
            {
                return BadRequest();
            }

            _context.Entry(documentControl).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DocumentControlExists(id))
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

        // POST: api/DocumentControls
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<DocumentControl>> PostDocumentControl(DocumentControl documentControl)
        {
            _context.DocumentControls.Add(documentControl);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetDocumentControl", new { id = documentControl.Id }, documentControl);
        }

        // DELETE: api/DocumentControls/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteDocumentControl(int id)
        {
            var documentControl = await _context.DocumentControls.FindAsync(id);
            if (documentControl == null)
            {
                return NotFound();
            }

            _context.DocumentControls.Remove(documentControl);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool DocumentControlExists(int id)
        {
            return _context.DocumentControls.Any(e => e.Id == id);
        }
    }
}
