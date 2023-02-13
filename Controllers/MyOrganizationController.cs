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
    public class MyOrganizationController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public MyOrganizationController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/MyOrganization
        [HttpGet]
        public async Task<ActionResult<IEnumerable<MyOrganization>>> GetMyOrganizations()
        {
            return await _context.MyOrganizations.ToListAsync();
        }

        // GET: api/MyOrganization/5
        [HttpGet("{id}")]
        public async Task<ActionResult<MyOrganization>> GetMyOrganization(string id)
        {
            var myOrganization = await _context.MyOrganizations.FindAsync(id);

            if (myOrganization == null)
            {
                return NotFound();
            }

            return myOrganization;
        }

        // PUT: api/MyOrganization/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutMyOrganization(string id, MyOrganization myOrganization)
        {
            if (id != myOrganization.Id)
            {
                return BadRequest();
            }

            _context.Entry(myOrganization).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MyOrganizationExists(id))
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

        // POST: api/MyOrganization
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<MyOrganization>> PostMyOrganization(MyOrganization myOrganization)
        {
            _context.MyOrganizations.Add(myOrganization);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (MyOrganizationExists(myOrganization.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetMyOrganization", new { id = myOrganization.Id }, myOrganization);
        }

        // DELETE: api/MyOrganization/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMyOrganization(string id)
        {
            var myOrganization = await _context.MyOrganizations.FindAsync(id);
            if (myOrganization == null)
            {
                return NotFound();
            }

            _context.MyOrganizations.Remove(myOrganization);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool MyOrganizationExists(string id)
        {
            return _context.MyOrganizations.Any(e => e.Id == id);
        }
    }
}
