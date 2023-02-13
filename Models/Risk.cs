using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Risk
    {
        public string Id { get; set; } = null!;
        public string ApplicableAsset { get; set; } = null!;
        public string RiskName { get; set; } = null!;
        public string RiskOwner { get; set; } = null!;
        public int? ImpactXlikelihood { get; set; }
        public string Level { get; set; } = null!;
        public string ControlTitle { get; set; } = null!;
        public string ControlDescription { get; set; } = null!;
        public string RisidualRisk { get; set; } = null!;
        public string ActionPlan { get; set; } = null!;
        public string Status { get; set; } = null!;
        public int Reviews { get; set; }
        public string ReviewDate { get; set; } = null!;
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
