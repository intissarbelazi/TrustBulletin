using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class GapAnalysis
    {
        public string Id { get; set; } = null!;
        public string IsmsStage { get; set; } = null!;
        public string RequiredTargetState { get; set; } = null!;
        public string IsoClause { get; set; } = null!;
        public string Statement { get; set; } = null!;
        public string Conformity { get; set; } = null!;
        public string Observations { get; set; } = null!;
        public string Recommendations { get; set; } = null!;
        public string InformalComment { get; set; } = null!;
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
