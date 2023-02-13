using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Incident
    {
        public int Id { get; set; }
        public string Criteria { get; set; } = null!;
        public string Category { get; set; } = null!;
        public string? Threat { get; set; }
        public string? Vulnerability { get; set; }
        public string? IncidentScenario { get; set; }
    }
}
