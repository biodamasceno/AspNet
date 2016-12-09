using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using System.Data;
using System.Web;
using CadeMeuMedico.Models;
using System.Web.Mvc;


namespace CadeMeuMedico.Controllers
{
    class TEntity
    {
        private EntidadesCadeMeuMedicoBD db =
        new EntidadesCadeMeuMedicoBD();

        public void Add(TEntity obj)
        {
            try
            {
                
                db.Set<TEntity>().Add(obj);
                db.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                        validationErrors.Entry.Entity.ToString(),
                        validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }
        }
    }
}
