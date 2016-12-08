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
    public partial class frmNovoLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginLogof_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmLogin.aspx");
        }

        protected void btnLoginGravar_Click(object sender, EventArgs e)
        {
            //Connection string for the datbase
            string database = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Fabio/Desktop/SistemaGeraTarefa/GerTarefa9/GerTarefa9.mdb;";
            OleDbConnection myConn = new OleDbConnection(database);
            myConn.Open();

            var dbCMD = new OleDbCommand("select * from Login where AlunoCPF = '" + txtCPF.Text + "' ", myConn);
            var dtr = dbCMD.ExecuteReader();
            var lach = true;

            while (dtr.Read())
            {
                lach = false;
            }

            dtr.Close();
            myConn.Close();

            if (lach)
            {
                //Execute the query
                string queryStr = "Insert into Login(FaculdadeNome,CursoNome,AlunoNome,AlunoEmail,AlunoCPF,AlunoSenha) values ('" + txtFaculdade.Text + "','" + txtCurso.Text + "','" + txtAluno.Text + "','" + txtEmail.Text + "','" + txtCPF.Text + "','" + txtSenha.Text + "')";

                // Create a command object 
                OleDbCommand myCommand = new OleDbCommand(queryStr, myConn);
                // Open the connection 
                myCommand.Connection.Open();
                myCommand.ExecuteNonQuery();
                myCommand.Connection.Close();

                Response.Redirect("frmLogin.aspx");
            }
            else
            {
                var strMessage = "CPF Já cadastrado";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + strMessage + "');", true);
            }

        }

    }
}