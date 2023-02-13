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
    public class ParagraphController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public ParagraphController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/Paragraph
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Paragraph>>> GetParagraphs()
        {
            return await _context.Paragraphs.ToListAsync();
        }

        // GET: api/Paragraph/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Paragraph>> GetParagraph(string id)
        {
            var paragraph = await _context.Paragraphs.FindAsync(id);

            if (paragraph == null)
            {
                return NotFound();
            }

            return paragraph;
        }

        // PUT: api/Paragraph/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutParagraph(string id, Paragraph paragraph)
        {
            if (id != paragraph.Id)
            {
                return BadRequest();
            }

            _context.Entry(paragraph).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ParagraphExists(id))
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

        // POST: api/Paragraph
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Paragraph>> PostParagraph(Paragraph paragraph)
        {
            _context.Paragraphs.Add(paragraph);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ParagraphExists(paragraph.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetParagraph", new { id = paragraph.Id }, paragraph);
        }

        // DELETE: api/Paragraph/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteParagraph(string id)
        {
            var paragraph = await _context.Paragraphs.FindAsync(id);
            if (paragraph == null)
            {
                return NotFound();
            }

            _context.Paragraphs.Remove(paragraph);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ParagraphExists(string id)
        {
            return _context.Paragraphs.Any(e => e.Id == id);
        }
        [HttpGet("GetParagraphOfDocument")]
        public async Task<ActionResult<IEnumerable<Paragraph>>> GetParagraphOfDocument(string id_document)
        {
            var paragraph = await _context.Paragraphs.Where(p => p.IdDocument == id_document).ToListAsync();
            if (paragraph == null)
            {
                return NotFound();
            }
            return paragraph;
        }
       
    }
}
