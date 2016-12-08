<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmListarTarefas.aspx.cs" Inherits="GerTarefa9.frmListarTarefas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphCabec" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCorpo" runat="server">

<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
    <tr width="100%" height="25" align="right">
        <td>
            <asp:Button ID="btnListar" runat="server" Text="Alertas" onClick="btnListar_Click" Width="100" CssClass="btn btn-warning" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnIncluir" runat="server" Text="Incluir " onClick="btnIncluir_Click" Width="100" CssClass="btn btn-primary"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogof" runat="server" Text="Sair" onClick="btnLogof_Click" Width="100" CssClass="btn btn-danger"/>
            &nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr width="100%" height="50" align="right">
        <td align="center">
            <h3>LISTA DE TAREFAS</h3>
        </td>
    </tr>
    <tr width="100%" height="100%">
        <td valign="top" id="gridtexto">
        <center>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GetTarefasConnectionString %>" ProviderName="<%$ ConnectionStrings:GetTarefasConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Tarefas]"></asp:SqlDataSource>
            <asp:GridView ID="grdTarefas" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                    <asp:BoundField DataField="TarefaNome" HeaderText="Tarefa" SortExpression="Tarefa" />
                    <asp:BoundField DataField="TarefaDetalhes" HeaderText="Detalhes" SortExpression="Detalhes" />
                    <asp:BoundField DataField="MateriaNome" HeaderText="Matéria" SortExpression="Matéria" />
                    <asp:BoundField DataField="MateriaSemestre" HeaderText="Semestre" SortExpression="Semestre" />
                    <asp:BoundField DataField="MateriaProfessor" HeaderText="Professor" SortExpression="Professor" />
                    <asp:BoundField DataField="LembrarApartir" HeaderText="Lembrar a Partir" SortExpression="Lembrar a Partir" />
                    <asp:BoundField DataField="DataLimiteTarefa" HeaderText="Data Limite" SortExpression="Data Limite" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:HyperLinkField NavigateUrl='~/frmAlterarTarefa.aspx' Text="Alterar/Excluir" DataNavigateUrlFields="Codigo" DataNavigateUrlFormatString="frmAlterarTarefa.aspx?id={0}" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" /> 
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </center>
        </td>
    </tr>
</table>

</asp:Content>
