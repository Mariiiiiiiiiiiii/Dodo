﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DodoPizza.AppServises
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DodoPizzaEntities1 : DbContext
    {
        public DodoPizzaEntities1()
            : base("name=DodoPizzaEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AddProducts> AddProducts { get; set; }
        public virtual DbSet<Dessert> Dessert { get; set; }
        public virtual DbSet<Deverages> Deverages { get; set; }
        public virtual DbSet<Dough> Dough { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Pizza> Pizza { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<Size> Size { get; set; }
        public virtual DbSet<Snacks> Snacks { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    }
}