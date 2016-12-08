<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaskSystem.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphCorpo" runat="server">

    <div class="container" runat="server">
        <form class="form-signin">
        
        <label for="txtCpf" class="sr-only">CPF</label>
        <input type="text" id="txtCPF" class="form-control" placeholder="CPF" width="100px" aria-valuemax="11" aria-valuemin="11">
        <label for="txtSenha" class="sr-only">Senha</label>
        <input type="password" id="txtSenha" class="form-control" placeholder="Senha" width="200px">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Lembrar Senha
          </label>
        </div>
        <button class="btn btn-lg btn-primary" type="submit" style="width: 100px; top: auto; right: auto; bottom: auto; left: auto;">Login</button>
        <as
        <button class="btn btn-lg btn-success" type="submit" style="width: 100px; top: auto; right: auto; bottom: auto; left: auto;">Cadastrar</button>
      </form>

    </div>

</asp:Content>

