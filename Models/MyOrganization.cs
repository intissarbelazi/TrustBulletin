using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class MyOrganization
    {
        public string Id { get; set; } = null!;
        public string Name { get; set; } = null!;
        public string Sector { get; set; } = null!;
        public string Environment { get; set; } = null!;
        public string Phone { get; set; } = null!;
        public string? Website { get; set; }
        public string? Location { get; set; }
        public string? ModifType { get; set; }
        public string? ModifTime { get; set; }
        public string? ModifPerson { get; set; }
    }
}
