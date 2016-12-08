<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmIncluirLogin.aspx.cs" Inherits="GerTarefa9.frmNovoLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphCabec" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCorpo" runat="server">

<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0" class="form-group">
    <tr width="100%" height="25" align="right">
        <td>
            <asp:Button ID="btnLoginGravar" runat="server" Text="Gravar" onClick="btnLoginGravar_Click" Width="100" CssClass="btn btn-primary" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLoginLogof" runat="server" Text="Sair" onClick="btnLoginLogof_Click" Width="100" CausesValidation="False" CssClass="btn btn-danger" />
            &nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr width="100%" height="50" align="right">
        <td align="center">
            <h3>NOVO LOGIN</h3>
        </td>
    </tr>
    <tr width="100%" height="100%" class="form-horizontal">
        <td valign="top">
        <center>
            <table border="0" cellpadding="0" cellspacing="0" bgcolor="FCFAF3">
                    <tr>
                        <td height="25" width="150" align="right">

                            <asp:Label ID="lblFaculdade" runat="server" Text="Nome da Faculdade:" CssClass="form-control"></asp:Label>
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox ID="txtFaculdade" runat="server" Text="" Width="200" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td height="25" class="auto-style1">
                            <br>
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqFaculdade" runat="server" ControlToValidate="txtFaculdade" ErrorMessage="Informe a Faculdade" Font-Bold="false" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label ID="lblCurso" runat="server" Text="Nome do Curso:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox ID="txtCurso" runat="server" Text="" Width="200" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td height="25"  class="auto-style1">
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqCurso" runat="server" ControlToValidate="txtCurso" ErrorMessage="Informe a Curso" Font-Bold="false" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label ID="lblAluno" runat="server" Text="Nome do Aluno:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox ID="txtAluno" runat="server" Text="" Width="200" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td height="25"  class="auto-style1">
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqAluno" runat="server" ControlToValidate="txtAluno" ErrorMessage="Informe o Aluno" Font-Bold="false" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox ID="txtEmail" runat="server" Text="" Width="200" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td height="25"  class="auto-style1">
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Informe o E-mail" Font-Bold="false" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label ID="lblCPF" runat="server" Text="CPF:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox ID="txtCPF" runat="server" Text="" Width="200" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td height="25"  class="auto-style1">
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqCPF" runat="server" ControlToValidate="txtCPF" ErrorMessage="Informe o CPF" Font-Bold="false" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="150" align="right">
                            <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>&nbsp;&nbsp;
                            <br><br>
                        </td>
                        <td height="25" width="150">
                            <asp:TextBox ID="txtSenha" runat="server" Text="" Width="200" CssClass="form-control"></asp:TextBox>
                            <br>
                        </td>
                        <td height="25"  class="auto-style1">
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqSenha" runat="server" ControlToValidate="txtSenha" ErrorMessage="Informe a Senha" Font-Bold="false" ></asp:RequiredFieldValidator>
                            <br><br>
                        </td>
                    </tr>
            </table>
        </center>
        </td>
    </tr>
</table>

</asp:Content>
