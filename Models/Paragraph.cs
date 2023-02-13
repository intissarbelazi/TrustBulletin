using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Paragraph
    {
        public string Id { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string? Subtitle { get; set; }
        public string? Control { get; set; }
        public string IdDocument { get; set; } = null!;
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
