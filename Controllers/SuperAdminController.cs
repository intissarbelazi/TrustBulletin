#nullable disable
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using TrustBulletinApi.Data;
using TrustBulletinApi.Models;

namespace TrustBulletinApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SuperAdminController : ControllerBase
    {
        private readonly TrustBulletinApiContext _context;
        private readonly ILogger<AdminController> _logger;


        public SuperAdminController(TrustBulletinApiContext context)
        {
            _context = context;
        }

        // GET: api/SuperAdmin
        [HttpGet]
        public async Task<ActionResult<IEnumerable<SuperAdmin>>> GetSuperAdmins()
        {
            return await _context.SuperAdmins.ToListAsync();
        }

        // GET: api/SuperAdmin/5
        [HttpGet("{id}")]
        public async Task<ActionResult<SuperAdmin>> GetSuperAdmin(string id)
        {
            var superAdmin = await _context.SuperAdmins.FindAsync(id);

            if (superAdmin == null)
            {
                return NotFound();
            }

            return superAdmin;
        }

        // PUT: api/SuperAdmin/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutSuperAdmin(string id, SuperAdmin superAdmin)
        {
            if (id != superAdmin.Id)
            {
                return BadRequest();
            }

            _context.Entry(superAdmin).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SuperAdminExists(id))
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

        // POST: api/SuperAdmin
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<SuperAdmin>> PostSuperAdmin(SuperAdmin superAdmin)
        {
            _context.SuperAdmins.Add(superAdmin);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (SuperAdminExists(superAdmin.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetSuperAdmin", new { id = superAdmin.Id }, superAdmin);
        }

        // DELETE: api/SuperAdmin/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteSuperAdmin(string id)
        {
            var superAdmin = await _context.SuperAdmins.FindAsync(id);
            if (superAdmin == null)
            {
                return NotFound();
            }

            _context.SuperAdmins.Remove(superAdmin);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool SuperAdminExists(string id)
        {
            return _context.SuperAdmins.Any(e => e.Id == id);
        }


        //--------Auth with JWT

        // GET api/values
        [HttpPost, Route("login")]
        public async Task<IActionResult> LoginAsync([FromBody] SuperAdmin superAdmin)
        {
            var list = await _context.SuperAdmins.ToListAsync();
            bool trueCreds = false;
            if (superAdmin == null)
            {
                return BadRequest("Invalid client request");
            }
            for (int i = 0; i < list.Count; i++)
            {
                Console.WriteLine(list[i].Id);
                if (superAdmin.Name == list.ElementAt(i).Name && list.ElementAt(i).Password == superAdmin.Password)
                {
                    Console.WriteLine(superAdmin.Name);
                    trueCreds = true;
                    break;
                }


            }
            if (trueCreds)
            {
                var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("superSecretKey@345"));
                var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);
                var claims = new List<Claim> { };
                var tokeOptions = new JwtSecurityToken(
                    issuer: "http://localhost:7086",
                    audience: "http://localhost:7086",
                    claims: claims,
                    expires: DateTime.Now.AddMinutes(5),
                    signingCredentials: signinCredentials
                );

                var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
              //  _logger.LogInformation("Super Admin logged in..............................................: Username:" + superAdmin.Name + " Password:" );
                return Ok(new { Token = tokenString });
            }
            else
            {
               // _logger.LogInformation("Unauthorized User tried to log in with these Creds-----------------------> Username: " + superAdmin.Name + " Password: " + superAdmin.Password);

                return Unauthorized();
            }
        }
    }
}
