using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Audit
    {
        public string Id { get; set; } = null!;
        public string Status { get; set; } = null!;
        public string Risk { get; set; } = null!;
        public string ControlRef { get; set; } = null!;
        public string ControlTitle { get; set; } = null!;
        public string ControlDescription { get; set; } = null!;
        public string ControlLevel { get; set; } = null!;
        public string? ControlValue { get; set; }
        public string? ImpactXlikelihood { get; set; }
        public string? RecommendedActions { get; set; }
        public string? DateRecommAction { get; set; }
        public bool? IsValidated { get; set; }
        public string? DateValidation { get; set; }
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
