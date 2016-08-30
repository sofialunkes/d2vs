<%@ Page Title="Menu" Language="C#" MasterPageFile="masterPage/Autonomo.master" AutoEventWireup="true" CodeFile="MenuAutonomo.aspx.cs" Inherits="menuAutonomoDE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container funndo">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="titulo1">Área do Autônomo</h2>
            </div>
        </div>
    </div>
    <br />

    <div class="container funndo">
        <%--MENU AUTÔNOMO--%>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">
                <center><i class="mdi mdi-wrench menuOP1" style="font-size:100px"><br /><p class="menuOP">SERVIÇOS</p></i></center>
            </div>
            <div class="col-lg-3">
                <center><a href="agendaAutonomoDE.aspx"><i class="mdi mdi-calendar-multiple-check menuOP1" style="font-size:100px"><br /><p class="menuOP">AGENDA</p></i></a></center>
            </div>
            <div class="col-lg-3"></div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-3">
                <center><a href="agendaAutonomoDE.aspx"><i class="mdi mdi-clipboard-text menuOP1"style="font-size:100px"><br /><p class="menuOP">RELATÓRIO</p></i></a></center>
            </div>
            <div class="col-lg-3">
                <center><i class="mdi mdi-pencil menuOP1"style="font-size:100px"><br /><p class="menuOP">PERFIL</p></i></center>
            </div>
            <div class="col-lg-3"></div>
        </div>        
        <br />
        <br />
        <br />

        <div class="row">
            <center>
                <asp:Panel ID="Panel3" runat="server" class="panel">
                    <a href="#clientePremium1" data-toggle="modal" style="text-decoration:none;">
                        <h2 class="clientePremium">Seja um Cliente Premium,<br />Adquira já este plano!</h2>
                    </a>
                </asp:Panel>                
            </center>
        </div>

        <%-- MODAL - SEJA UM CLIENTE PREMIUM --%>
        <div id="clientePremium1" class="modal fade" role="dialog">
            <div class="modal-dialog ">
                <!-- Modal content-->
                <div class="modal-content modal2">
                    <div class="modal-header modalCor">
                        <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                        <h4 class="modal-title titulo">Conheça as vantagens de se tornar um Cliente Premium:</h4>
                        <%--titulo do modal--%>
                    </div>

                    <div class="modal-body">
                        <%--CONTEUDO MODAL--%>
                            <asp:Panel ID="Panel1" runat="server" CssClass="pVertical" ScrollBars="Vertical" >
                            </asp:Panel>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                <asp:ListItem Value="aceitar">Eu li e concordo em me tornar Cliente Premium SICA.</asp:ListItem>
                            </asp:CheckBoxList>               

                             
                            <%-- Botão --%>
                        <div class="modal-footer">
                            <asp:Button ID="btnClientePremium" runat="server" Text="Adquirir Premium" CssClass="btn-success btn" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>

