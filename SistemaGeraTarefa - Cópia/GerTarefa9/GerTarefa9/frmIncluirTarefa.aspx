<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmIncluirTarefa.aspx.cs" Inherits="GerTarefa9.frmIncluirTarefa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphCabec" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCorpo" runat="server">

<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
    <tr width="100%" height="25" align="right">
        <td>
            <asp:Button ID="btnGravar" runat="server" Text="Gravar " onClick="btnGravar_Click" Width="100" CssClass="btn btn-success"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnVoltar" runat="server" Text="Listar Tudo" onClick="btnVoltar_Click" Width="100"  CausesValidation="False" CssClass="btn btn-warning" />
            &nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr width="100%" height="50" align="right">
        <td align="center">
            <h3>NOVA TAREFA</h3>
        </td>
    </tr>
    <tr width="100%" height="100%">
        <td valign="top">
        <center>
            <table border="0" cellpadding="0" cellspacing="0" bgcolor="FCFAF3">
                    <tr>
                        <td height="25" width="150" align="right">
                            <br>
                            <asp:Label cssClass="form-control"  ID="lblTarefa" runat="server" Text="Nome da Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <br>
                            <asp:TextBox cssClass="form-control" ID="txtTarefa" runat="server" Text="" Width="300" ></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            <br>
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqTarefa" runat="server" ControlToValidate="txtTarefa" ErrorMessage="Informe a Tarefa" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblDetalhes" runat="server" Text="Detalhes da Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control" ID="txtDetalhes" runat="server" Text="" Width="300"></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDetalhes" runat="server" ControlToValidate="txtDetalhes" ErrorMessage="Informe Detalhes" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblMateria" runat="server" Text="Nome da Matéria:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control"  ID="txtMateria" runat="server" Text="" Width="300"></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqMateria" runat="server" ControlToValidate="txtMateria" ErrorMessage="Informe a Matéria" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblSemestre" runat="server" Text="Semestre:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control" ID="txtSemestre" runat="server" Text="" Width="300"></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqSemetre" runat="server" ControlToValidate="txtSemestre" ErrorMessage="Informe o Semestre" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblProfessor" runat="server" Text="Professor:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control" ID="txtProfessor" runat="server" Text="" Width="300"></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqProfessor" runat="server" ControlToValidate="txtProfessor" ErrorMessage="Informe o Professor" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblDataLimite" runat="server" Text="Data Limite da Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control" ID="txtDataLimite" runat="server" Text="" Width="300"></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDataLimite" runat="server" ControlToValidate="txtDataLimite" ErrorMessage="Informe a Data" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblApartir" runat="server" Text="Lembrar a partir de:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control" ID="txtApartir" runat="server" Text="" Width="300"></asp:TextBox>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqApartir" runat="server" ControlToValidate="txtApartir" ErrorMessage="Informe a Data" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label cssClass="form-control"  ID="lblStatus" runat="server" Text="Status:"></asp:Label>&nbsp;&nbsp;&nbsp;
                            <br><br>
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox cssClass="form-control" ID="txtStatus" runat="server" Text="" Width="300"></asp:TextBox>
                            <br><br>
                        </td>
                        <td height="25" width="150" >
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqStatus" runat="server" ControlToValidate="txtStatus" ErrorMessage="Informe o Status" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>  
                            <br><br>
                        </td>
                    </tr>
            </table>
        </center>
        </td>
    </tr>
</table>

</asp:Content>
