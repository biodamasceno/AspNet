using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TaskSystem
{
    public partial class AlterarTarefas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void frmViewTarefa_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Tarefas.aspx");
        }
    }
}