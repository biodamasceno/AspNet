using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GerTarefa9
{
    public partial class frmListarTarefas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogof_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmLogin.aspx");
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmListarAvisos.aspx");
        }

        protected void btnIncluir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmIncluirTarefa.aspx");
        }
    }
}