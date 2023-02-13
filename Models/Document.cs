using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Document
    {
        public string Id { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string Reference { get; set; } = null!;
        public string? ShortDescription { get; set; }
        public string? AuthBy { get; set; }
        public string? Reviewer { get; set; }
        public string? ReviewDate { get; set; }
        public string? Classification { get; set; }
        public string? Type { get; set; }
        public string? Version { get; set; }
        public string IdAdmin { get; set; } = null!;
        public string IdUser { get; set; } = null!;
        public string IdOrg { get; set; } = null!;
    }
}
