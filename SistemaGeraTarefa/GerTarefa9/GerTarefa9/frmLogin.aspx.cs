using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace GerTarefa9
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConectar_Click(object sender, EventArgs e)
        {
            string database = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Fabio/Desktop/SistemaGeraTarefa/GerTarefa9/GerTarefa9.mdb;";
            
            OleDbConnection myConn = new OleDbConnection(database);
            myConn.Open();

            var dbCMD = new OleDbCommand("select * from Login where AlunoCPF = '" + txtCPF.Text + "' and UCASE(AlunoSenha) = '" + txtSenha.Text + "'  ", myConn);
            var dtr = dbCMD.ExecuteReader();
            var lach = false;

            while (dtr.Read())
            {
                lach = true;
            }

            if (lach)
            {
                Response.Redirect("~/frmListarAvisos.aspx");
            }
            else
            {
                var strMessage = "Usuário ou senha incorreto";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + strMessage + "');", true);
            }

            dtr.Close();
            myConn.Close();

        }

        protected void btnNovoLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmIncluirLogin.aspx");
        }

    }
}