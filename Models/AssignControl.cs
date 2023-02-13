using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class AssignControl
    {
        public string Id { get; set; } = null!;
        public string Reference { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string Type { get; set; } = null!;
        public string Description { get; set; } = null!;
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
