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
    public partial class frmIncluirTarefa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmListarTarefas.aspx");
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            //Connection string for the datbase
            string database = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/Fabio/Desktop/SistemaGeraTarefa/GerTarefa9/GerTarefa9.mdb;";
            OleDbConnection myConn = new OleDbConnection(database);

            //Execute the query
            string queryStr = "Insert into Tarefas(TarefaNome,TarefaDetalhes,MateriaNome,MateriaSemestre,MateriaProfessor,DataLimiteTarefa,LembrarApartir,Status) values ('" + txtTarefa.Text + "','" + txtDetalhes.Text + "','" + txtMateria.Text + "','" + txtSemestre.Text + "','" + txtProfessor.Text + "','" + txtDataLimite.Text + "','" + txtApartir.Text + "','" + txtStatus.Text + "')";

            // Create a command object 
            OleDbCommand myCommand = new OleDbCommand(queryStr, myConn);
            // Open the connection 
            myCommand.Connection.Open();
            myCommand.ExecuteNonQuery();
            myCommand.Connection.Close();

            Response.Redirect("~/frmIncluirTarefa.aspx");

        }

    }
}