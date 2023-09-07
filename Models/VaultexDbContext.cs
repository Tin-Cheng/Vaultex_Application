using System;
using System.Configuration;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Vaultex_Application.Models;

public partial class VaultexDbContext : DbContext
{
    public VaultexDbContext()
    {
    }

    public VaultexDbContext(DbContextOptions<VaultexDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<Organisation> Organisations { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer("Data Source=localhost;Initial Catalog=Vaultex_Db;User ID=sa;Password=P@ssw0rd;TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Employee>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("Employee");

            entity.Property(e => e.FirstName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.LastName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.OrganisationNumber)
                .HasMaxLength(20)
                .IsUnicode(false);

            entity.HasOne(d => d.OrganisationNumberNavigation).WithMany()
                .HasForeignKey(d => d.OrganisationNumber)
                .HasConstraintName("FK__Employee__Organi__38996AB5");
        });

        modelBuilder.Entity<Organisation>(entity =>
        {
            entity.HasKey(e => e.OrganisationNumber).HasName("PK__Organisa__FAD8E0071E3124DA");

            entity.ToTable("Organisation");

            entity.Property(e => e.OrganisationNumber)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.AddressLine1)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.AddressLine2)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.AddressLine3)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.AddressLine4)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.OrganisationName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Postcode)
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.Town)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
