using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class OrgContext
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public int Description { get; set; }
        public string Owner { get; set; } = null!;
        public string Status { get; set; } = null!;
        public string Metric { get; set; } = null!;
        public string SuccessCriteria { get; set; } = null!;
        public string SecurityServices { get; set; } = null!;
        public string AssetRisks { get; set; } = null!;
        public string ThirdPartyRisks { get; set; } = null!;
        public string BusinessContinuities { get; set; } = null!;
        public string Projects { get; set; } = null!;
        public string SecurityPolicies { get; set; } = null!;
        public string ProgramIssues { get; set; } = null!;
    }
}
