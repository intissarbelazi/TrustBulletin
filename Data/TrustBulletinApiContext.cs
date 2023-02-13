using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using TrustBulletinApi.Models;

namespace TrustBulletinApi.Data
{
    public partial class TrustBulletinApiContext : DbContext
    {
        public TrustBulletinApiContext()
        {
        }

        public TrustBulletinApiContext(DbContextOptions<TrustBulletinApiContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Admin> Admins { get; set; } = null!;
        public virtual DbSet<AnsiControl> AnsiControls { get; set; } = null!;
        public virtual DbSet<Asset> Assets { get; set; } = null!;
        public virtual DbSet<AssignControl> AssignControls { get; set; } = null!;
        public virtual DbSet<Audit> Audits { get; set; } = null!;
        public virtual DbSet<ControlsFr> ControlsFrs { get; set; } = null!;
        public virtual DbSet<Cve> Cves { get; set; } = null!;
        public virtual DbSet<Document> Documents { get; set; } = null!;
        public virtual DbSet<DocumentControl> DocumentControls { get; set; } = null!;
        public virtual DbSet<DocumentUpdate> DocumentUpdates { get; set; } = null!;
        public virtual DbSet<GapAnalysis> GapAnalyses { get; set; } = null!;
        public virtual DbSet<Incident> Incidents { get; set; } = null!;
        public virtual DbSet<MyOrganization> MyOrganizations { get; set; } = null!;
        public virtual DbSet<OrgContext> OrgContexts { get; set; } = null!;
        public virtual DbSet<Paragraph> Paragraphs { get; set; } = null!;
        public virtual DbSet<Projet> Projets { get; set; } = null!;
        public virtual DbSet<Risk> Risks { get; set; } = null!;
        public virtual DbSet<Standard> Standards { get; set; } = null!;
        public virtual DbSet<SuperAdmin> SuperAdmins { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("utf8mb4_general_ci")
                .HasCharSet("utf8mb4");

            modelBuilder.Entity<Admin>(entity =>
            {
                entity.ToTable("admin");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.DateExp)
                    .HasColumnType("text")
                    .HasColumnName("dateExp");

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .HasColumnName("email");

                entity.Property(e => e.Password)
                    .HasColumnType("text")
                    .HasColumnName("password");

                entity.Property(e => e.Phone)
                    .HasMaxLength(30)
                    .HasColumnName("phone");

                entity.Property(e => e.Username)
                    .HasMaxLength(20)
                    .HasColumnName("username");
            });

            modelBuilder.Entity<AnsiControl>(entity =>
            {
                entity.ToTable("ansiControls");

                entity.HasIndex(e => e.Id, "id")
                    .IsUnique();

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .HasColumnName("id");

                entity.Property(e => e.Description)
                    .HasColumnType("text")
                    .HasColumnName("description");

                entity.Property(e => e.Reference)
                    .HasMaxLength(10)
                    .HasColumnName("reference");

                entity.Property(e => e.Title)
                    .HasColumnType("text")
                    .HasColumnName("title");

                entity.Property(e => e.Type)
                    .HasColumnType("text")
                    .HasColumnName("type");
            });

            modelBuilder.Entity<Asset>(entity =>
            {
                entity.ToTable("asset");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.Availability)
                    .HasMaxLength(10)
                    .HasColumnName("availability");

                entity.Property(e => e.Category)
                    .HasColumnType("text")
                    .HasColumnName("category");

                entity.Property(e => e.Classification)
                    .HasMaxLength(20)
                    .HasColumnName("classification");

                entity.Property(e => e.Confidentiality)
                    .HasMaxLength(10)
                    .HasColumnName("confidentiality");

                entity.Property(e => e.Criticality)
                    .HasMaxLength(10)
                    .HasColumnName("criticality");

                entity.Property(e => e.Custodian)
                    .HasMaxLength(20)
                    .HasColumnName("custodian");

                entity.Property(e => e.Description)
                    .HasColumnType("text")
                    .HasColumnName("description");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.Integrity)
                    .HasMaxLength(10)
                    .HasColumnName("integrity");

                entity.Property(e => e.Location)
                    .HasMaxLength(30)
                    .HasColumnName("location");

                entity.Property(e => e.Name)
                    .HasColumnType("text")
                    .HasColumnName("name");

                entity.Property(e => e.Owner)
                    .HasMaxLength(20)
                    .HasColumnName("owner");

                entity.Property(e => e.Quantity)
                    .HasColumnType("int(11)")
                    .HasColumnName("quantity");

                entity.Property(e => e.Reviews)
                    .HasColumnType("int(11)")
                    .HasColumnName("reviews");

                entity.Property(e => e.Status)
                    .HasMaxLength(15)
                    .HasColumnName("status");

                entity.Property(e => e.Type)
                    .HasMaxLength(20)
                    .HasColumnName("type");

                entity.Property(e => e.User)
                    .HasMaxLength(20)
                    .HasColumnName("user");

                entity.Property(e => e.Vendor)
                    .HasColumnType("text")
                    .HasColumnName("vendor");
            });

            modelBuilder.Entity<AssignControl>(entity =>
            {
                entity.ToTable("assignControl");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.Description)
                    .HasColumnType("text")
                    .HasColumnName("description");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.Reference)
                    .HasMaxLength(10)
                    .HasColumnName("reference");

                entity.Property(e => e.Title)
                    .HasColumnType("text")
                    .HasColumnName("title");

                entity.Property(e => e.Type)
                    .HasMaxLength(15)
                    .HasColumnName("type");
            });

            modelBuilder.Entity<Audit>(entity =>
            {
                entity.ToTable("audit");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.ControlDescription)
                    .HasColumnType("text")
                    .HasColumnName("controlDescription");

                entity.Property(e => e.ControlLevel)
                    .HasColumnType("text")
                    .HasColumnName("controlLevel");

                entity.Property(e => e.ControlRef)
                    .HasMaxLength(10)
                    .HasColumnName("controlRef");

                entity.Property(e => e.ControlTitle)
                    .HasColumnType("text")
                    .HasColumnName("controlTitle");

                entity.Property(e => e.ControlValue)
                    .HasMaxLength(11)
                    .HasColumnName("controlValue");

                entity.Property(e => e.DateRecommAction)
                    .HasColumnType("text")
                    .HasColumnName("dateRecommAction");

                entity.Property(e => e.DateValidation)
                    .HasColumnType("text")
                    .HasColumnName("dateValidation");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.ImpactXlikelihood)
                    .HasMaxLength(11)
                    .HasColumnName("impactXlikelihood");

                entity.Property(e => e.IsValidated).HasColumnName("isValidated");

                entity.Property(e => e.RecommendedActions)
                    .HasColumnType("text")
                    .HasColumnName("recommendedActions");

                entity.Property(e => e.Risk)
                    .HasColumnType("text")
                    .HasColumnName("risk");

                entity.Property(e => e.Status)
                    .HasMaxLength(20)
                    .HasColumnName("status");
            });

            modelBuilder.Entity<ControlsFr>(entity =>
            {
                entity.ToTable("controlsFR");

                entity.HasIndex(e => e.Id, "id")
                    .IsUnique();

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .HasColumnName("id");

                entity.Property(e => e.Description)
                    .HasColumnType("text")
                    .HasColumnName("description");

                entity.Property(e => e.Reference)
                    .HasMaxLength(10)
                    .HasColumnName("reference");

                entity.Property(e => e.Title)
                    .HasColumnType("text")
                    .HasColumnName("title");

                entity.Property(e => e.Type)
                    .HasColumnType("text")
                    .HasColumnName("type");
            });

            modelBuilder.Entity<Cve>(entity =>
            {
                entity.ToTable("CVE");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.AssetName)
                    .HasColumnType("text")
                    .HasColumnName("assetName");

                entity.Property(e => e.Assigner)
                    .HasColumnType("text")
                    .HasColumnName("assigner");

                entity.Property(e => e.Description)
                    .HasColumnType("text")
                    .HasColumnName("description");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdAsset)
                    .HasMaxLength(20)
                    .HasColumnName("idAsset");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.IsPatchVerified).HasColumnName("isPatchVerified");

                entity.Property(e => e.IsPatched).HasColumnName("isPatched");

                entity.Property(e => e.LastModifiedDate)
                    .HasColumnType("text")
                    .HasColumnName("lastModifiedDate");

                entity.Property(e => e.PublishedDate)
                    .HasColumnType("text")
                    .HasColumnName("publishedDate");

                entity.Property(e => e.ReferenceData)
                    .HasColumnType("text")
                    .HasColumnName("reference_data");

                entity.Property(e => e.SeverityV2)
                    .HasMaxLength(15)
                    .HasColumnName("severityV2");

                entity.Property(e => e.SeverityV3)
                    .HasMaxLength(15)
                    .HasColumnName("severityV3");
            });

            modelBuilder.Entity<Document>(entity =>
            {
                entity.ToTable("document");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.AuthBy)
                    .HasColumnType("text")
                    .HasColumnName("authBy");

                entity.Property(e => e.Classification)
                    .HasColumnType("text")
                    .HasColumnName("classification");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.Reference)
                    .HasColumnType("text")
                    .HasColumnName("reference");

                entity.Property(e => e.ReviewDate)
                    .HasColumnType("text")
                    .HasColumnName("reviewDate");

                entity.Property(e => e.Reviewer)
                    .HasColumnType("text")
                    .HasColumnName("reviewer");

                entity.Property(e => e.ShortDescription)
                    .HasColumnType("text")
                    .HasColumnName("shortDescription");

                entity.Property(e => e.Title)
                    .HasColumnType("text")
                    .HasColumnName("title");

                entity.Property(e => e.Type)
                    .HasColumnType("text")
                    .HasColumnName("type");

                entity.Property(e => e.Version)
                    .HasColumnType("text")
                    .HasColumnName("version");
            });

            modelBuilder.Entity<DocumentControl>(entity =>
            {
                entity.ToTable("documentControls");

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .HasColumnName("id");

                entity.Property(e => e.Interpretation)
                    .HasColumnType("text")
                    .HasColumnName("interpretation");

                entity.Property(e => e.Requirement)
                    .HasColumnType("text")
                    .HasColumnName("requirement");

                entity.Property(e => e.Status)
                    .HasColumnType("text")
                    .HasColumnName("status");
            });

            modelBuilder.Entity<DocumentUpdate>(entity =>
            {
                entity.ToTable("documentUpdate");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.ApprovedBy)
                    .HasColumnType("text")
                    .HasColumnName("approvedBy");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdDocument)
                    .HasMaxLength(20)
                    .HasColumnName("idDocument");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.ReviewedBy)
                    .HasColumnType("text")
                    .HasColumnName("reviewedBy");

                entity.Property(e => e.UpdateDate)
                    .HasColumnType("text")
                    .HasColumnName("updateDate");

                entity.Property(e => e.UpdateLevel)
                    .HasMaxLength(10)
                    .HasColumnName("updateLevel");

                entity.Property(e => e.UpdateNotes)
                    .HasColumnType("text")
                    .HasColumnName("updateNotes");

                entity.Property(e => e.UpdatedBy)
                    .HasColumnType("text")
                    .HasColumnName("updatedBy");

                entity.Property(e => e.Version)
                    .HasMaxLength(10)
                    .HasColumnName("version");
            });

            modelBuilder.Entity<GapAnalysis>(entity =>
            {
                entity.ToTable("gapAnalysis");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.Conformity)
                    .HasColumnType("text")
                    .HasColumnName("conformity");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.InformalComment)
                    .HasColumnType("text")
                    .HasColumnName("informalComment");

                entity.Property(e => e.IsmsStage)
                    .HasColumnType("text")
                    .HasColumnName("ismsStage");

                entity.Property(e => e.IsoClause)
                    .HasColumnType("text")
                    .HasColumnName("isoClause");

                entity.Property(e => e.Observations)
                    .HasColumnType("text")
                    .HasColumnName("observations");

                entity.Property(e => e.Recommendations)
                    .HasColumnType("text")
                    .HasColumnName("recommendations");

                entity.Property(e => e.RequiredTargetState)
                    .HasColumnType("text")
                    .HasColumnName("requiredTargetState");

                entity.Property(e => e.Statement)
                    .HasColumnType("text")
                    .HasColumnName("statement");
            });

            modelBuilder.Entity<Incident>(entity =>
            {
                entity.ToTable("incident");

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .HasColumnName("id");

                entity.Property(e => e.Category)
                    .HasMaxLength(20)
                    .HasColumnName("category");

                entity.Property(e => e.Criteria)
                    .HasMaxLength(20)
                    .HasColumnName("criteria");

                entity.Property(e => e.IncidentScenario)
                    .HasColumnType("text")
                    .HasColumnName("incidentScenario");

                entity.Property(e => e.Threat)
                    .HasColumnType("text")
                    .HasColumnName("threat");

                entity.Property(e => e.Vulnerability)
                    .HasColumnType("text")
                    .HasColumnName("vulnerability");
            });

            modelBuilder.Entity<MyOrganization>(entity =>
            {
                entity.ToTable("myOrganization");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.Environment)
                    .HasColumnType("text")
                    .HasColumnName("environment");

                entity.Property(e => e.Location)
                    .HasMaxLength(20)
                    .HasColumnName("location");

                entity.Property(e => e.ModifPerson)
                    .HasColumnType("text")
                    .HasColumnName("modifPerson");

                entity.Property(e => e.ModifTime)
                    .HasColumnType("text")
                    .HasColumnName("modifTime");

                entity.Property(e => e.ModifType)
                    .HasColumnType("text")
                    .HasColumnName("modifType");

                entity.Property(e => e.Name)
                    .HasColumnType("text")
                    .HasColumnName("name");

                entity.Property(e => e.Phone)
                    .HasMaxLength(20)
                    .HasColumnName("phone");

                entity.Property(e => e.Sector)
                    .HasColumnType("text")
                    .HasColumnName("sector");

                entity.Property(e => e.Website)
                    .HasColumnType("text")
                    .HasColumnName("website");
            });

            modelBuilder.Entity<OrgContext>(entity =>
            {
                entity.ToTable("orgContext");

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.AssetRisks)
                    .HasColumnType("text")
                    .HasColumnName("assetRisks");

                entity.Property(e => e.BusinessContinuities)
                    .HasColumnType("text")
                    .HasColumnName("businessContinuities");

                entity.Property(e => e.Description)
                    .HasColumnType("int(11)")
                    .HasColumnName("description");

                entity.Property(e => e.Metric)
                    .HasColumnType("text")
                    .HasColumnName("metric");

                entity.Property(e => e.Name)
                    .HasColumnType("text")
                    .HasColumnName("name");

                entity.Property(e => e.Owner)
                    .HasColumnType("text")
                    .HasColumnName("owner");

                entity.Property(e => e.ProgramIssues)
                    .HasColumnType("text")
                    .HasColumnName("programIssues");

                entity.Property(e => e.Projects)
                    .HasColumnType("text")
                    .HasColumnName("projects");

                entity.Property(e => e.SecurityPolicies)
                    .HasColumnType("text")
                    .HasColumnName("securityPolicies");

                entity.Property(e => e.SecurityServices)
                    .HasColumnType("text")
                    .HasColumnName("securityServices");

                entity.Property(e => e.Status)
                    .HasMaxLength(10)
                    .HasColumnName("status");

                entity.Property(e => e.SuccessCriteria)
                    .HasColumnType("text")
                    .HasColumnName("successCriteria");

                entity.Property(e => e.ThirdPartyRisks)
                    .HasColumnType("text")
                    .HasColumnName("thirdPartyRisks");
            });

            modelBuilder.Entity<Paragraph>(entity =>
            {
                entity.ToTable("paragraph");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.Control)
                    .HasColumnType("text")
                    .HasColumnName("control");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdDocument)
                    .HasMaxLength(20)
                    .HasColumnName("idDocument");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.Subtitle)
                    .HasColumnType("text")
                    .HasColumnName("subtitle");

                entity.Property(e => e.Title)
                    .HasColumnType("text")
                    .HasColumnName("title");
            });

            modelBuilder.Entity<Projet>(entity =>
            {
                entity.ToTable("projet");

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.Age)
                    .HasColumnType("int(11)")
                    .HasColumnName("age");

                entity.Property(e => e.Nom)
                    .HasColumnType("int(11)")
                    .HasColumnName("nom");

                entity.Property(e => e.Prenom)
                    .HasColumnType("int(11)")
                    .HasColumnName("prenom");
            });

            modelBuilder.Entity<Risk>(entity =>
            {
                entity.ToTable("risk");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.ActionPlan)
                    .HasColumnType("text")
                    .HasColumnName("actionPlan");

                entity.Property(e => e.ApplicableAsset)
                    .HasColumnType("text")
                    .HasColumnName("applicableAsset");

                entity.Property(e => e.ControlDescription)
                    .HasColumnType("text")
                    .HasColumnName("controlDescription");

                entity.Property(e => e.ControlTitle)
                    .HasColumnType("text")
                    .HasColumnName("controlTitle");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IdUser)
                    .HasMaxLength(20)
                    .HasColumnName("idUser");

                entity.Property(e => e.ImpactXlikelihood)
                    .HasColumnType("int(11)")
                    .HasColumnName("impactXlikelihood");

                entity.Property(e => e.Level)
                    .HasMaxLength(10)
                    .HasColumnName("level");

                entity.Property(e => e.ReviewDate)
                    .HasColumnType("text")
                    .HasColumnName("reviewDate");

                entity.Property(e => e.Reviews)
                    .HasColumnType("int(11)")
                    .HasColumnName("reviews");

                entity.Property(e => e.RisidualRisk)
                    .HasColumnType("text")
                    .HasColumnName("risidualRisk");

                entity.Property(e => e.RiskName)
                    .HasColumnType("text")
                    .HasColumnName("riskName");

                entity.Property(e => e.RiskOwner)
                    .HasColumnType("text")
                    .HasColumnName("riskOwner");

                entity.Property(e => e.Status)
                    .HasMaxLength(30)
                    .HasColumnName("status");
            });

            modelBuilder.Entity<Standard>(entity =>
            {
                entity.ToTable("standard");

                entity.Property(e => e.Id)
                    .HasColumnType("int(11)")
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.Description)
                    .HasColumnType("text")
                    .HasColumnName("description");

                entity.Property(e => e.Title)
                    .HasMaxLength(20)
                    .HasColumnName("title");

                entity.Property(e => e.Year)
                    .HasMaxLength(4)
                    .HasColumnName("year");
            });

            modelBuilder.Entity<SuperAdmin>(entity =>
            {
                entity.ToTable("superAdmin");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.Name)
                    .HasColumnType("text")
                    .HasColumnName("name");

                entity.Property(e => e.Password)
                    .HasColumnType("text")
                    .HasColumnName("password");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("user");

                entity.Property(e => e.Id)
                    .HasMaxLength(20)
                    .HasColumnName("id");

                entity.Property(e => e.DateRegistred)
                    .HasColumnType("text")
                    .HasColumnName("dateRegistred");

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .HasColumnName("email");

                entity.Property(e => e.IdAdmin)
                    .HasMaxLength(20)
                    .HasColumnName("idAdmin");

                entity.Property(e => e.IdOrg)
                    .HasMaxLength(20)
                    .HasColumnName("idOrg");

                entity.Property(e => e.IsOnline).HasColumnName("isOnline");

                entity.Property(e => e.IsSensitized).HasColumnName("isSensitized");

                entity.Property(e => e.Password)
                    .HasColumnType("text")
                    .HasColumnName("password");

                entity.Property(e => e.Role)
                    .HasColumnType("text")
                    .HasColumnName("role");

                entity.Property(e => e.Status)
                    .HasMaxLength(10)
                    .HasColumnName("status");

                entity.Property(e => e.Username)
                    .HasMaxLength(20)
                    .HasColumnName("username");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
