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
    public class DocumentUpdateController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public DocumentUpdateController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/DocumentUpdate
        [HttpGet]
        public async Task<ActionResult<IEnumerable<DocumentUpdate>>> GetDocumentUpdates(string idAdmin)
        {
          if (_context.DocumentUpdates == null)
          {
              return NotFound();
          }
            return await _context.DocumentUpdates.Where(x => x.IdAdmin == idAdmin).ToListAsync();
        }
       

        // GET: api/DocumentUpdate/5
        [HttpGet("{id}")]
        public async Task<ActionResult<DocumentUpdate>> GetDocumentUpdate(string id)
        {
            var documentUpdate = await _context.DocumentUpdates.FindAsync(id);

            if (documentUpdate == null)
            {
                return NotFound();
            }

            return documentUpdate;
        }

        // PUT: api/DocumentUpdate/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDocumentUpdate(string id, DocumentUpdate documentUpdate)
        {
            if (id != documentUpdate.Id)
            {
                return BadRequest();
            }

            _context.Entry(documentUpdate).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DocumentUpdateExists(id))
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

        // POST: api/DocumentUpdate
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<DocumentUpdate>> PostDocumentUpdate(DocumentUpdate documentUpdate)
        {
            _context.DocumentUpdates.Add(documentUpdate);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (DocumentUpdateExists(documentUpdate.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetDocumentUpdate", new { id = documentUpdate.Id }, documentUpdate);
        }

        // DELETE: api/DocumentUpdate/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteDocumentUpdate(string id)
        {
            var documentUpdate = await _context.DocumentUpdates.FindAsync(id);
            if (documentUpdate == null)
            {
                return NotFound();
            }

            _context.DocumentUpdates.Remove(documentUpdate);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool DocumentUpdateExists(string id)
        {
            return _context.DocumentUpdates.Any(e => e.Id == id);
        }

        [HttpGet("GetUpdatesOfDocument")]
        public async Task<ActionResult<IEnumerable<DocumentUpdate>>> GetUpdatesOfDocument(string id_document,string idAdmin)
        {
            var documentUpdates = await _context.DocumentUpdates.Where(x => x.IdDocument == id_document && x.IdAdmin == idAdmin).ToListAsync();
            if (documentUpdates == null)
            {
                return NotFound();
            }
            return documentUpdates;
        }
    }
}
