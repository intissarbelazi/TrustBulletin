using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class DocumentUpdate
    {
        public string Id { get; set; } = null!;
        public string UpdateLevel { get; set; } = null!;
        public string Version { get; set; } = null!;
        public string? UpdatedBy { get; set; }
        public string? UpdateDate { get; set; }
        public string? UpdateNotes { get; set; }
        public string? ReviewedBy { get; set; }
        public string? ApprovedBy { get; set; }
        public string? IdDocument { get; set; }
        public string? IdUser { get; set; }
        public string? IdOrg { get; set; }
        public string? IdAdmin { get; set; }
    }
}
