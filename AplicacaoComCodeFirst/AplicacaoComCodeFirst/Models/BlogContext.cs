using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Metadata;
using System.Data.SqlClient;

namespace AplicacaoComCodeFirst.Models
{
    public class BlogContext : DbContext
    {
        public BlogContext() : base ("name=BlogContext")
        {
            Database.Connection.ConnectionString =
                       @"data source=FABIO-NOTEBOOK\SQLEXPRESS;
                    initial catalog=BlogBDLivro; Integrated Security=true";
        }
        public DbSet<Posts> Posts { get; set; }
        public DbSet<Categorias> Categorias { get; set; }
    }
}