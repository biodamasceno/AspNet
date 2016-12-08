using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CadeMeuMedico.Models;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Data.Metadata;
using System.Runtime;
using System.Data.Entity.Validation;
using System.IO;
using System.ComponentModel.DataAnnotations;

namespace CadeMeuMedico.Controllers
{
    public class MedicosController : Controller
    {
        private EntidadesCadeMeuMedicoBD db =
                new EntidadesCadeMeuMedicoBD();

        public ActionResult Index()
        {
            var medicos = db.Medicos.Include(m => m.Cidades)
                        .Include(m => m.Especialidades).ToList();
            return View(medicos);
        }

        public ActionResult Adicionar()
        {
            ViewBag.IDCidade = new SelectList(db.Cidades, "IDCidade", "Nome");
            ViewBag.IDEspecialidade = new SelectList(db.Especialidades,
            "IDEspecialidade",
            "Nome");
            return View();
        }

        [HttpPost]
        public ActionResult Adicionar(Medicos medico)
        {
            if (ModelState.IsValid)
            {
                db.Medicos.Add(medico);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IDCidade = new SelectList(db.Cidades, "IDCidade",
                                                          "Nome",
                                                          medico.IDCidade);
            ViewBag.IDEspecialidade = new SelectList(db.Especialidades, "IDEspecialidade",
                                                                        "Nome",
                                                                        medico.IDEspecialidade);
            return View(medico);
        }
    }
}
