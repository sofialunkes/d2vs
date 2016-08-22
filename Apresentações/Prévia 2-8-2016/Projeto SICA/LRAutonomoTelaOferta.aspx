<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/Autonomo.master" AutoEventWireup="true" CodeFile="LRAutonomoTelaOferta.aspx.cs" Inherits="LRAutonomoTelaOferta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row" style="background-color: white">
            <h3 style="text-align: center">Leilão Reverso</h3>
        </div>

        <br />
        <div class="row" style="background-color: white; padding: 5px">
            <div class="col-lg-2">
                <img src="img/cards/8.jpg" style="border-radius: 100%" />
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <h3>Cliente A</h3>
                </div>
                <div class="row">
                    <p>
                        Procura por: Pintar quadro<br />
                        Data de entrega: 15/07/ 2016
                    </p>
                </div>
            </div>
            <div class="col-lg-2">
                <a href="#fazerOferta" data-toggle="modal" style="text-decoration: none;">
                    <asp:Button ID="btnOferta" runat="server" CssClass="btn btn-success" Text="Fazer Oferta" />
                </a>
            </div>
        </div>
    </div>

    <%--MODAL DA EDIÇAÕ--%>
    <div id="fazerOferta" class="modal fade" role="dialog">
        <div class="modal-dialog ">
            <!-- Modal content-->
            <div class="modal-content modal2">
                <div class="modal-header modalCor">
                    <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                    <h4 class="modal-title titulo">Leilão Reverso:</h4>
                    <%--titulo do modal--%>
                </div>

                <div class="modal-body">
                    <%--CONTEUDO MODAL--%>
                    <%--ESCOLHER O SERVIÇO REQUERIDO--%>
                    <div class="row">
                        <div class="col-lg-4">
                            <img src="img/cards/8.jpg" style="border-radius: 100%" />
                        </div>
                        <div class="col-lg-8">
                            <div class="row">
                                <h3>Cliente A</h3>
                            </div>
                            <div class="row">
                                <p>
                                    Procura por: Pintar quadro<br />
                                    Data de entrega: 15/07/ 2016
                                </p>
                            </div>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-4">
                            <asp:Label ID="lblFacaSuaOferta" runat="server" Text="Faça sua oferta" Font-Bold="True" Font-Size="Medium">
                            </asp:Label><asp:TextBox ID="txtFacaSuaOferta" runat="server" autofocus placeholder="R$ 000,00"></asp:TextBox>
                        </div>
                    </div>

                    <%--row2--%>
                    <%-- Botão --%>
                    <div class="modal-footer">
                        <asp:Button ID="btnSalvarEdicao" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px" />
                        <asp:Button ID="btnCancelarEdicao" runat="server" Text="Enviar" CssClass="btn-success btn" Width="100px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

