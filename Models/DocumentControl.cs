using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class DocumentControl
    {
        public int Id { get; set; }
        public string Requirement { get; set; } = null!;
        public string Interpretation { get; set; } = null!;
        public string? Status { get; set; }
    }
}
