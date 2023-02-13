using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class AnsiControl
    {
        public int Id { get; set; }
        public string Reference { get; set; } = null!;
        public string Type { get; set; } = null!;
        public string Title { get; set; } = null!;
        public string Description { get; set; } = null!;
    }
}
