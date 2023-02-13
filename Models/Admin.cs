using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Admin
    {
        public string Id { get; set; } = null!;
        public string Username { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string Phone { get; set; } = null!;
        public string DateExp { get; set; } = null!;
    }
}
