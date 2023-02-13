using System;
using System.Collections.Generic;

namespace TrustBulletinApi.Models
{
    public partial class Standard
    {
        public int Id { get; set; }
        public string Title { get; set; } = null!;
        public string Year { get; set; } = null!;
        public string Description { get; set; } = null!;
    }
}
