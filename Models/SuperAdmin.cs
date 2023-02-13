using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class SuperAdmin
    {
        public string Id { get; set; } = null!;
        public string Name { get; set; } = null!;
        public string Password { get; set; } = null!;
    }
}
