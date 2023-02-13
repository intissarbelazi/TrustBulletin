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
    public class AssetController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;

        public AssetController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/Asset
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Asset>>> GetAssets(string idAdmin)
        {
          if (_context.Assets == null)
          {
              return NotFound();
          }
            return await _context.Assets.Where(x => x.IdAdmin == idAdmin).ToListAsync();
        }

        // GET: api/Asset/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Asset>> GetAsset(string id)
        {
          if (_context.Assets == null)
          {
              return NotFound();
          }
            var asset = await _context.Assets.FindAsync(id);

            if (asset == null)
            {
                return NotFound();
            }

            return asset;
        }

        // PUT: api/Asset/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAsset(string id, Asset asset)
        {
            if (id != asset.Id)
            {
                return BadRequest();
            }

            _context.Entry(asset).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AssetExists(id))
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

        // POST: api/Asset
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Asset>> PostAsset(Asset asset)
        {
          if (_context.Assets == null)
          {
              return Problem("Entity set 'TrustBulletinApiContext.Assets'  is null.");
          }
            _context.Assets.Add(asset);
           // string[] lines = { "--", asset.Availability, asset.Confidentiality, asset.Integrity, "farouk" };
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (AssetExists(asset.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }
        

            return CreatedAtAction("GetAsset", new { id = asset.Id }, asset);
        }

        // DELETE: api/Asset/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsset(string id)
        {
            if (_context.Assets == null)
            {
                return NotFound();
            }
            var asset = await _context.Assets.FindAsync(id);
            if (asset == null)
            {
                return NotFound();
            }

            _context.Assets.Remove(asset);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool AssetExists(string id)
        {
            return _context.Assets.Any(e => e.Id == id);
        }

        [HttpGet("veryHighLevelAssets")]
        public async Task<ActionResult<IEnumerable<Asset>>> veryHighLevelAssets(string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Criticality == "Very High" ).ToListAsync();
        }
        [HttpGet("highLevelAssets")]
        public async Task<ActionResult<IEnumerable<Asset>>> highLevelAssets(string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Criticality == "High").ToListAsync();
        }
        [HttpGet("moderateLevelAssets")]
        public async Task<ActionResult<IEnumerable<Asset>>> moderateLevelAssets(string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Criticality == "Moderate").ToListAsync();
        }
        [HttpGet("lowLevelAssets")]
        public async Task<ActionResult<IEnumerable<Asset>>> lowLevelAssets(string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Criticality == "Low").ToListAsync();
        }
        [HttpGet("negligibleLevelAssets")]
        public async Task<ActionResult<IEnumerable<Asset>>> criticalAssets(string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Criticality == "Negligible").ToListAsync();
        }


        [HttpGet("nbrOfAssetsByLevel")]
        public async Task<int> nbrOfAssetsByLevel(string level,string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Criticality == level).CountAsync();
        }
        
        [HttpGet("nbrOfAssets")]
        public async Task<int> nbrOfAssets(string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin).CountAsync();
        }
        [HttpGet("nbrOfAssetsByType")]
        public async Task<int> nbrOfAssetsByType(string type,string idAdmin)
        {
            return await _context.Assets.Where(x => x.IdAdmin==idAdmin && x.Type == type).CountAsync();
        }
        

    }

}
