<%@ Page Title="Agenda" Language="C#" MasterPageFile="masterPage/Autonomo.master" AutoEventWireup="true" CodeFile="agendaAutonomoDE.aspx.cs" Inherits="agendaAutonomoDE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container funndo">
        <h2 class="titulo1">Agenda</h2>
    </div>

    <br />
    <div class="container funndo">
        <div class="row">
            <br />
            <div class="col-lg-7">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#54217c" CellPadding="4" DayNameFormat="Shortest"
                    Font-Names="Calibri" Font-Size="16pt" ForeColor="black" Height="450px" Width="600px" SelectionMode="Day" TitleFormat="Month">
                    <DayHeaderStyle BackColor="#B0D137" Font-Bold="True" Font-Size="14pt" ForeColor="Black" />
                    <NextPrevStyle VerticalAlign="Bottom" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#B0D137" Font-Bold="True" ForeColor="#54217C" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#54217c" BorderColor="red" Font-Bold="True" ForeColor="white" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="black" />
                    <WeekendDayStyle BackColor="#eeeeee" />
                </asp:Calendar>
            </div>
            
            <div class="col-lg-5">
                <asp:Panel ID="Panel1" runat="server" CssClass="pVertical1" ScrollBars="vertical">

                    <table class="table-responsive table">
                        <thead class="cabecalho1">
                            <tr class="tr1">
                                <th style="vertical-align: middle">Início</th>
                                <th style="vertical-align: middle">Término</th>
                                <th style="vertical-align: middle">Título</th>
                                <th style="vertical-align: middle">Cliente</th>
                                <th style="vertical-align: middle">Editar</th>
                                <th style="vertical-align: middle">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="tr1">
                                <td>08:00</td>
                                <td>12:00</td>
                                <td>Aula de Portugues</td>
                                <td>Ana Clara</td>
                                <td>Editar</td>
                                <td>Concluído</td>
                            </tr>

                            <tr class="tr1">
                                <td>13:00</td>
                                <td>14:00</td>
                                <td>Aula Inglês</td>
                                <td>Diego Antunes</td>
                                <td>Editar</td>
                                <td>- </td>
                            </tr>
                            <tr class="tr1">
                                <td>18:00</td>
                                <td>20:00</td>
                                <td>Aula de Português</td>
                                <td>Victor Andrade</td>
                                <td>Editar</td>
                                <td>- </td>
                            </tr>
                        </tbody>
                    </table>

                    <asp:Label ID="lblCalendar" runat="server"></asp:Label>
                </asp:Panel>
            </div>
        </div>
        <%--fechar o row--%>
    </div>
    <%--fechar containeir--%>

    <a href="#agenda" data-toggle="modal" style="text-decoration: none">
        <h2 class="opcao entrarCadastrar">Entrar</h2>
    </a>
    <%--MODAL PARA ADICIONAR EVENTO A AGENDA--%>
    <div id="agenda" class="modal fade" role="dialog">
        <div class="modal-dialog ">
            <!-- Modal content-->
            <div class="modal-content modal2">
                <div class="modal-header modalCor">
                    <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                    <h4 class="modal-title titulo">Adicionar Evento a Agenda:</h4>
                    <%--titulo do modal--%>
                </div>

                <div class="modal-body">
                    <%--CONTEUDO MODAL--%>
                    <h4 class="textos">Título do Evento:</h4>
                    <asp:TextBox ID="txtTituloEvento" runat="server" placeholder="Título do Evento" CssClass="form-control"></asp:TextBox>
                    <h4 class="textos">Cliente:</h4>
                    <asp:TextBox ID="txtClienteEvento" runat="server" CssClass="form-control" placeholder="Cliente"></asp:TextBox>
                    <h4 class="textos">Local:</h4>
                    <asp:TextBox ID="txtLocalEvento" runat="server" CssClass="form-control" placeholder="Local do Evento"></asp:TextBox>
                    <h4 class="textos">Descrição:</h4>
                    <asp:TextBox ID="txtDescricaoEvento" runat="server" CssClass="form-control" placeholder="Descrição do Evento"></asp:TextBox>
                    <div class="row">
                        <div class="col-lg-4">
                            <h4 class="textos">Início:</h4>
                            <asp:TextBox ID="txtInicioEvento" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-lg-4">
                            <h4 class="textos">Término:</h4>
                            <asp:TextBox ID="txtTermininoEvento" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-lg-4">
                            <h4 class="textos">Valor do Serviço:</h4>
                            <asp:TextBox ID="txtValorEvento" runat="server" TextMode="Number" CssClass="form-control" placeholder="Valor do Serviço"></asp:TextBox>
                        </div>
                    </div>
                    <%-- Botão --%>
                    <div class="modal-footer">
                        <asp:Button ID="btnAdicionarEvento" runat="server" Text="Adicionar Evento" CssClass="btn-success btn" />
                        <asp:Button ID="btnCancelarEvento" runat="server" Text="Cancelar Evento" CssClass="btn-danger btn" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--FIM DO MODAL PARA ADICIONAR EVENTO A AGENDA--%>
</asp:Content>

