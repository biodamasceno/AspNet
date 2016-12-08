<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AlterarTarefas.aspx.cs" Inherits="TaskSystem.AlterarTarefas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphCorpo" runat="server">
    <center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GerTarefa9ConnectionString %>" ProviderName="<%$ ConnectionStrings:GerTarefa9ConnectionString.ProviderName %>" 
    SelectCommand="SELECT * FROM [Tarefas] WHERE Codigo = xCodigo" 
    UpdateCommand="UPDATE Tarefas SET TarefaNome = @TarefaNome, TarefaDetalhes = @TarefaDetalhes, MateriaNome = @MateriaNome, MateriaSemestre = @MateriaSemestre, MateriaProfessor = @MateriaProfessor, DataLimiteTarefa = @DataLimiteTarefa, LembrarApartir = @LembrarApartir, Status = @Status WHERE Codigo = @Codigo" 
    DeleteCommand="DELETE FROM Tarefas WHERE Codigo = @Codigo">
    <SelectParameters>
        <asp:QueryStringParameter Name="xCodigo" QueryStringField="id" />
    </SelectParameters>
    
    </asp:SqlDataSource>
        <asp:FormView   ID="frmViewTarefa" runat="server" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" 
                         DefaultMode="Edit" OnPageIndexChanging="frmViewTarefa_PageIndexChanging" Width="100%">
        <EditItemTemplate>
            <table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
                <tr width="100%" height="25" align="right">
                    <td colspan="3"  align="right">
                        <asp:Button ID="btnListar" runat="server" Text="Listar Tudo" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/Tarefas.aspx" Width="100" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CausesValidation="True" CommandName="Update" Width="100" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CausesValidation="True" CommandName="Delete" Width="100" />
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr width="100%" height="50" align="right">
                    <td align="center" colspan="3">
                        <h3>ALTERAR / EXCLUIR</h3>
                    </td>
            </tr>

            <tr>
                <td height="25" width="50%" align="right">
                    <br>
                    <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <br>
                    <asp:Label ID="CodigoLabel1" runat="server" Text='<%# Eval("Codigo") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    <br>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblTarefa" runat="server" Text="Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="TarefaNomeTextBox" runat="server" Text='<%# Bind("TarefaNome") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqTarefa" runat="server" ControlToValidate="TarefaNomeTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblDetalhes" runat="server" Text="Detalhes:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="TarefaDetalhesTextBox" runat="server" Text='<%# Bind("TarefaDetalhes") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDetalhes" runat="server" ControlToValidate="TarefaDetalhesTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblMateria" runat="server" Text="Matéria:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaNomeTextBox" runat="server" Text='<%# Bind("MateriaNome") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqMateria" runat="server" ControlToValidate="MateriaNomeTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblSemestre" runat="server" Text="Semestre:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaSemestreTextBox" runat="server" Text='<%# Bind("MateriaSemestre") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqSemestre" runat="server" ControlToValidate="MateriaSemestreTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblProfessor" runat="server" Text="Professor:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaProfessorTextBox" runat="server" Text='<%# Bind("MateriaProfessor") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqProfessor" runat="server" ControlToValidate="MateriaProfessorTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblDataLimite" runat="server" Text="Data Limite da Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="DataLimiteTarefaTextBox" runat="server" Text='<%# Bind("DataLimiteTarefa") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDataLimite" runat="server" ControlToValidate="DataLimiteTarefaTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblLembrarApartir" runat="server" Text="Lembrar a partir:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="LembrarApartirTextBox" runat="server" Text='<%# Bind("LembrarApartir") %>' />
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqLembrarApartir" runat="server" ControlToValidate="LembrarApartirTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="50%" align="right">
                    <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <br><br>
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    <br><br>
                </td>
                <td height="25" width="50%" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqStatus" runat="server" ControlToValidate="StatusTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    <br><br>
                </td>
            </tr>
    </table>

    </EditItemTemplate>


    <InsertItemTemplate>
 
    <table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">

            <tr width="100%" height="25" align="right">
                <td colspan="3"  align="right">
                    <asp:Button ID="btnListar" runat="server" Text="Listar Tudo" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/frmListarTarefas.aspx" Width="100" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CausesValidation="True" CommandName="Update" Width="100" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CausesValidation="True" CommandName="Delete" Width="100" />
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr width="100%" height="50" align="right">
                <td align="center" colspan="3">
                    <h3>ALTERAR / EXCLUIR</h3>
                </td>
            </tr>

            <tr>
                <td height="25" width="150" align="right">
                    <br>
                    <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <br>
                    <asp:Label ID="CodigoLabel1" runat="server" Text='<%# Eval("Codigo") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    <br>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblTarefa" runat="server" Text="Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="TarefaNomeTextBox" runat="server" Text='<%# Bind("TarefaNome") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqTarefa" runat="server" ControlToValidate="TarefaNomeTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblDetalhes" runat="server" Text="Detalhes:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="TarefaDetalhesTextBox" runat="server" Text='<%# Bind("TarefaDetalhes") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDetalhes" runat="server" ControlToValidate="TarefaDetalhesTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblMateria" runat="server" Text="Matéria:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaNomeTextBox" runat="server" Text='<%# Bind("MateriaNome") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqMateria" runat="server" ControlToValidate="MateriaNomeTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblSemestre" runat="server" Text="Semestre:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaSemestreTextBox" runat="server" Text='<%# Bind("MateriaSemestre") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqSemestre" runat="server" ControlToValidate="MateriaSemestreTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblProfessor" runat="server" Text="Professor:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaProfessorTextBox" runat="server" Text='<%# Bind("MateriaProfessor") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqProfessor" runat="server" ControlToValidate="MateriaProfessorTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblDataLimite" runat="server" Text="Data Limite da Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="DataLimiteTarefaTextBox" runat="server" Text='<%# Bind("DataLimiteTarefa") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDataLimite" runat="server" ControlToValidate="DataLimiteTarefaTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblLembrarApartir" runat="server" Text="Lembrar a partir:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="LembrarApartirTextBox" runat="server" Text='<%# Bind("LembrarApartir") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqLembrarApartir" runat="server" ControlToValidate="LembrarApartirTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <br><br>
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    <br><br>
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqStatus" runat="server" ControlToValidate="StatusTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    <br><br>
                </td>
            </tr>
    </table>

    </InsertItemTemplate>


    <ItemTemplate>

    <table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">

            <tr width="100%" height="25" align="right">
                <td colspan="3"  align="right">
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr width="100%" height="50" align="right">
                <td align="center" colspan="3">
                    <h3>ALTERAR / EXCLUIR</h3>
                </td>
            </tr>

            <tr>
                <td height="25" width="150" align="right">
                    <br>
                    <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <br>
                    <asp:Label ID="CodigoLabel1" runat="server" Text='<%# Eval("Codigo") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    <br>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblTarefa" runat="server" Text="Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="TarefaNomeTextBox" runat="server" Text='<%# Bind("TarefaNome") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqTarefa" runat="server" ControlToValidate="TarefaNomeTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblDetalhes" runat="server" Text="Detalhes:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="TarefaDetalhesTextBox" runat="server" Text='<%# Bind("TarefaDetalhes") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDetalhes" runat="server" ControlToValidate="TarefaDetalhesTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblMateria" runat="server" Text="Matéria:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaNomeTextBox" runat="server" Text='<%# Bind("MateriaNome") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqMateria" runat="server" ControlToValidate="MateriaNomeTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblSemestre" runat="server" Text="Semestre:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaSemestreTextBox" runat="server" Text='<%# Bind("MateriaSemestre") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqSemestre" runat="server" ControlToValidate="MateriaSemestreTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblProfessor" runat="server" Text="Professor:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="MateriaProfessorTextBox" runat="server" Text='<%# Bind("MateriaProfessor") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqProfessor" runat="server" ControlToValidate="MateriaProfessorTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblDataLimite" runat="server" Text="Data Limite da Tarefa:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="DataLimiteTarefaTextBox" runat="server" Text='<%# Bind("DataLimiteTarefa") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqDataLimite" runat="server" ControlToValidate="DataLimiteTarefaTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblLembrarApartir" runat="server" Text="Lembrar a partir:"></asp:Label>&nbsp;&nbsp;&nbsp;
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="LembrarApartirTextBox" runat="server" Text='<%# Bind("LembrarApartir") %>' />
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqLembrarApartir" runat="server" ControlToValidate="LembrarApartirTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td height="25" width="150" align="right">
                    <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <br><br>
                </td>
                <td height="25" width="150">
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    <br><br>
                </td>
                <td height="25" width="150" bgcolor="F3F1EB">
                    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="reqStatus" runat="server" ControlToValidate="StatusTextBox" ErrorMessage="(*) Campo Obrigatório" Font-Bold="false" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    <br><br>
                </td>
            </tr>
    </table>

    </ItemTemplate>
</asp:FormView>

</center>

</asp:Content>

