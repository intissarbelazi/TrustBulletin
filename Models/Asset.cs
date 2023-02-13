using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Asset
    {
        public string Id { get; set; } = null!;
        public string Name { get; set; } = null!;
        public string? Status { get; set; }
        public int? Reviews { get; set; }
        public string? Type { get; set; }
        public string? Vendor { get; set; }
        public int? Quantity { get; set; }
        public string? Description { get; set; }
        public string? Location { get; set; }
        public string? Owner { get; set; }
        public string? Custodian { get; set; }
        public string? User { get; set; }
        public string? Confidentiality { get; set; }
        public string? Integrity { get; set; }
        public string? Availability { get; set; }
        public string? Criticality { get; set; }
        public string? Classification { get; set; }
        public string? Category { get; set; }
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
