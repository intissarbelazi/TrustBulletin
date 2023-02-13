using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class User
    {
        public string Id { get; set; } = null!;
        public string Username { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string Role { get; set; } = null!;
        public string DateRegistred { get; set; } = null!;
        public string Status { get; set; } = null!;
        public bool? IsSensitized { get; set; }
        public bool? IsOnline { get; set; }
        public string? IdAdmin { get; set; }
        public string? IdOrg { get; set; }
    }
}
