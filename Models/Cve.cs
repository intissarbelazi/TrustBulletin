using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Cve
    {
        public string Id { get; set; } = null!;
        public string IdAsset { get; set; } = null!;
        public string AssetName { get; set; } = null!;
        public string? Assigner { get; set; }
        public string? ReferenceData { get; set; }
        public string? Description { get; set; }
        public string? SeverityV2 { get; set; }
        public string? SeverityV3 { get; set; }
        public string? PublishedDate { get; set; }
        public string? LastModifiedDate { get; set; }
        public bool? IsPatched { get; set; }
        public bool? IsPatchVerified { get; set; }
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
        public string IdAdmin { get; set; } = null!;
    }
}
