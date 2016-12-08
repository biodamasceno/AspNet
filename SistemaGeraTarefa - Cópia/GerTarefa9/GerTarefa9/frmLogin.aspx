<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="GerTarefa9.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCabec" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphCorpo" runat="server">
    <br><br><br>
 <div>

     </div>
    <center class="container" >
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="black" class="form-group">
                <tr>
                    <td height="25" width="150" align="right">
                        <br />
                        <asp:Label ID="lblCPF" runat="server" Text="CPF:"></asp:Label>&nbsp;
                    </td>
                    <td height="25" width="150">
                        <br />
                        <asp:TextBox ID="txtCPF" runat="server" Text="" Width="154px" CssClass="form-control"></asp:TextBox>
                        <br />
                    </td>
                    <td height="25" width="150">
                        &nbsp;&nbsp;<br />
                        &nbsp;<asp:RequiredFieldValidator ID="reqCPF" runat="server" ControlToValidate="txtCPF" ErrorMessage="Informe o CPF" Font-Bold="false" ForeColor="Maroon" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td height="25" width="150" align="right">
                        <br />
                        <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>&nbsp;&nbsp;&nbsp;
                    </td>
                    <td height="25" width="30">
  
                        <br />
  
                        <asp:TextBox ID="txtSenha" runat="server" Text="" Width="150px" CssClass="form-control"></asp:TextBox>
                        <br />
                    </td>
                    <td height="25" width="150">
                        &nbsp;&nbsp;<br />
                        &nbsp;<asp:RequiredFieldValidator ID="reqSenha" runat="server" ControlToValidate="txtSenha" ErrorMessage="Informe a Senha" Font-Bold="false" ForeColor="Maroon" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <br />
                <tr>
                    <td height="25" width="150" align="center" colspan="3">
                        <br />
                        <asp:Button ID="btnNovoLogin" runat="server" Text="Cadastrar" onClick="btnNovoLogin_Click" CausesValidation="False" CssClass="btn btn-primary" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnConectar" runat="server" Text="Login" onClick="btnConectar_Click" CssClass="btn btn-info " />
                        <br><br>
                        <br />
                    </td>
                </tr>
        </table>
    </center>
</asp:Content>
