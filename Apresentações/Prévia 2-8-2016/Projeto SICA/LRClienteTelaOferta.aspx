<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/Cliente.master" AutoEventWireup="true" CodeFile="LRClienteTelaOferta.aspx.cs" Inherits="LRClienteTelaOferta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container funndo fundoRoxo">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="titulo2">Leilão Reverso:</h2>
            </div>
        </div>
    </div>
    <div class="container funndo bordaa">
        <hr class="hr1" />
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">
                <center><img src="img/imgOfertaServicoCliente.jpg" class="img1"/></center>
            </div>
            <div class="col-lg-8">
                <br />
                <h3 class="textos2"><b>Cliente:</b> Marcela dos Santos</h3>
                <h4 class="textos2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Data de Entrega:</b> 05/07/2016</h4>
                <h4 class="textos2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Descrição:</b> Preciso de Maquiagem e Penteado para um casamento que começará às 17:00.</h4>
            </div>
            <div class="col-lg-1"></div>
        </div>

        <%--BOTAO PARA INICIAR UM MODAL DE EDIÇÃO DA OFERTA DO LEILAO--%>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-1"></div>
            <div class="col-lg-2">
                     <a href="#editarOfertaLeilao" data-toggle="modal" style="text-decoration:none;">
                        <center><asp:Button ID="Button3" runat="server" Text="Editar Oferta" CssClass="btn-success btn" /></center>
                    </a>               
            </div>
        </div>
        <%--MODAL DA EDIÇAÕ--%> 
        <div id="editarOfertaLeilao" class="modal fade" role="dialog">
            <div class="modal-dialog ">
                <!-- Modal content-->
                <div class="modal-content modal2">
                    <div class="modal-header modalCor">
                        <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                        <h4 class="modal-title titulo">Editar Oferta do Leilão Reverso:</h4>
                        <%--titulo do modal--%>
                    </div>

                    <div class="modal-body">
                        <%--CONTEUDO MODAL--%>
                        <div class="row"><%--row1--%>
                            <%--ESCOLHER O SERVIÇO REQUERIDO--%>
                                <div class="col-lg-7">
                                    <h4 class="textos">Serviço Requerido:</h4>
                                    <asp:TextBox ID="txtEditarServicoRequerido" runat="server" placeholder="Serviço Requerido" CssClass="form-control"></asp:TextBox>
                                    <button type="button" class="btn btn-default" style="margin-top: -55px; margin-left: 278px;">
                                        <span class="mdi mdi-magnify" aria-hidden="true"></span>
                                    </button>

                                </div>
                                <%--ESCOLHER O PRAZO FINAL--%>
                                <div class="col-lg-5">
                                    <h4 class="textos">Prazo Final:</h4>
                                    <asp:TextBox ID="txtEditarTituloEvento" runat="server" placeholder="##/##/####" CssClass="form-control"></asp:TextBox>
                                </div>
                        </div><%--row1--%>
                        <div class="row"><%--row2--%>
                            <div class="col-lg-12">
                                <h4 class="textos">Descrição Completa:</h4>
                                <asp:TextBox ID="txtEditarDescricaoCompleta" runat="server" placeholder="Faça aqui uma descrição completa do serviço requerido" CssClass="form-control" Height="100px"></asp:TextBox>
                                <br />
                            </div>
                        </div><%--row2--%>                               
                         <%-- Botão --%>
                        <div class="modal-footer">
                            <asp:Button ID="btnSalvarEdicao" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px"/>
                            <asp:Button ID="btnCancelarEdicao" runat="server" Text="Salvar" CssClass="btn-success btn" Width="100px"/>
                        </div>                    
                    </div>
                </div>
            </div>
        </div>
        <%--FIM DA MODAL DE EDIÇÃO--%>
        <hr class="hr1" />
    </div>

    <br />
    <%--AUTONOMOS OFERTANTES--%>
    <div class="container funndo fundoRoxo">
        <h4 class="titulo2">Ofertas dos Autônomos:</h4>
    </div>
    <div class="container funndo bordaa">
        <hr class="hr1" />
        <%--AUTONOMO 1--%>
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">
                <center><img src="img/imgOfertaServicoAutonomo1.jpg" class="img1" /></center>
            </div>
            <div class="col-lg-6">
                <br /><br />
                <h3 class="textos2"><b>Autônomo:</b> Fernanda Marcia</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 100,00 </h4>
            </div>
            <div class="col-lg-2">
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE ACEITAR OFERTA DO LEILAO--%>
                <a href="#aceitarOfertaLeilao1" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnAceitar1" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/></center>
                </a> 

                <%--MODAL E ACEITACAO DE OFERTA--%> 
                <div id="aceitarOfertaLeilao1" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Confirma a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo1.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Fernanda Marcia</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 100,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnNaoAceitar1" runat="server" Text="Não" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnAceitaar1" runat="server" Text="Sim" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL DE ACEITACAO--%>                
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE RECUSAR OFERTA DO LEILAO--%>
                <a href="#recusarOfertaLeilao1" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnRecusar1" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/></center>
                </a> 

                <%--MODAL E RECUSAR DE OFERTA--%> 
                <div id="recusarOfertaLeilao1" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Recusar a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo1.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Fernanda Marcia</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 100,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnCancelarRecusar1" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnRecusaar1" runat="server" Text="Recusar" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL RECUSAR OFERTA--%>
            </div>
        </div>
        <hr class="hr1" />


        <%--AUTONOMO 2--%>
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">
                <center><img src="img/imgOfertaServicoAutonomo2.jpg" class="img1"/></center>
            </div>
            <div class="col-lg-6">
                <br /><br />
                <h3 class="textos2"><b>Autônomo:</b> Eduarda Souza Silva</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 150,00 </h4>
            </div>
            <div class="col-lg-2">
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE ACEITAR OFERTA DO LEILAO--%>
                <a href="#aceitarOfertaLeilao2" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnAceitar2" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/></center>
                </a> 

                <%--MODAL E ACEITACAO DE OFERTA--%> 
                <div id="aceitarOfertaLeilao2" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Confirma a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo2.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Eduarda Souza Silva</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 150,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnNaoAceitar2" runat="server" Text="Não" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnAceitaar2" runat="server" Text="Sim" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL DE ACEITACAO--%>                
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE RECUSAR OFERTA DO LEILAO--%>
                <a href="#recusarOfertaLeilao2" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnRecusar2" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/></center>
                </a> 

                <%--MODAL E RECUSAR DE OFERTA--%> 
                <div id="recusarOfertaLeilao2" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Recusar a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo2.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Eduarda Souza Silva</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 150,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnCancelarRecusar2" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnRecusaar2" runat="server" Text="Recusar" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL RECUSAR OFERTA--%>
            </div>
        </div>
        <hr class="hr1" />


        <%--AUTONOMO 3--%>
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">
                <center><img src="img/imgOfertaServicoAutonomo3.jpg" class="img1"/></center>
            </div>
            <div class="col-lg-6">
                <br /><br />
                <h3 class="textos2"><b>Autônomo:</b> Lourdes Amarantes</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 200,00 </h4>
            </div>
            <div class="col-lg-2">
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE ACEITAR OFERTA DO LEILAO--%>
                <a href="#aceitarOfertaLeilao3" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnAceitar3" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/></center>
                </a> 

                <%--MODAL E ACEITACAO DE OFERTA--%> 
                <div id="aceitarOfertaLeilao3" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Confirma a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo3.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Lourdes Amarantes</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 200,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnNaoAceitar3" runat="server" Text="Não" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnAceitaar3" runat="server" Text="Sim" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL DE ACEITACAO--%>
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE RECUSAR OFERTA DO LEILAO--%>
                <a href="#recusarOfertaLeilao3" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnRecusar3" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/></center>
                </a> 

                <%--MODAL E RECUSAR DE OFERTA--%> 
                <div id="recusarOfertaLeilao3" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Recusar a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo3.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Lourdes Amarantes</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 200,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnCancelarRecusar3" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnRecusaar3" runat="server" Text="Recusar" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL RECUSAR OFERTA--%>
            </div>
        </div>
        <hr class="hr1" />


        <%--AUTONOMO 4--%>
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">
                <center><img src="img/imgOfertaServicoAutonomo4.jpg" class="img1"/></center>
            </div>
            <div class="col-lg-6">
                <br /><br />
                <h3 class="textos2"><b>Autônomo:</b> Gabriela Augustine</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 300,00 </h4>
            </div>
            <div class="col-lg-2">
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE ACEITAR OFERTA DO LEILAO--%>
                <a href="#aceitarOfertaLeilao4" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnAceitar4" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/></center>
                </a> 

                <%--MODAL E ACEITACAO DE OFERTA--%> 
                <div id="aceitarOfertaLeilao4" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Confirma a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo4.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Gabriela Augustine</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 300,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnNaoAceitar4" runat="server" Text="Não" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnAceitaar4" runat="server" Text="Sim" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL DE ACEITACAO--%>
                <br />
                <%--BOTAO PARA INICIAR UM MODAL DE RECUSAR OFERTA DO LEILAO--%>
                <a href="#recusarOfertaLeilao4" data-toggle="modal" style="text-decoration:none;">
                    <center><asp:Button ID="btnRecusar4" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/></center>
                </a> 

                <%--MODAL E RECUSAR DE OFERTA--%> 
                <div id="recusarOfertaLeilao4" class="modal fade" role="dialog">
                    <div class="modal-dialog ">
                        <!-- Modal content-->
                        <div class="modal-content modal2">
                            <div class="modal-header modalCor">
                                <button type="button" class="close titulo" data-dismiss="modal">&times;</button><%--botao de fechar--%>
                                <h4 class="modal-title titulo">Recusar a Oferta?</h4>
                        <%--titulo do modal--%>
                            </div>
                            <div class="modal-body">
                            <%--CONTEUDO MODAL--%>
                                <div class="col-lg-3">
                                    <center><img src="img/imgOfertaServicoAutonomo4.jpg" class="img1"/></center>
                                </div>
                                <div class="col-lg-9">
                                    <br /><br />
                                    <h3 class="textos2"><b>Autônomo:</b> Gabriela Augustine</h3>
                                    <h4 class="textos2"><b>Oferta:</b> R$ 300,00 </h4>
                                </div>
                            <%--FIM DO CONTEUDO MODAL--%> 
                            <br /><br /><br />      
                            <%-- Botão --%>
                                <div class="modal-footer">
                                    <asp:Button ID="btnCancelarRecusar4" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px"/>
                                    <asp:Button ID="btnRecusaar4" runat="server" Text="Recusar" CssClass="btn-success btn" Width="100px"/>
                                </div>                    
                            </div>
                        </div>
                    </div>
                </div>
                <%--FIM DA MODAL RECUSAR OFERTA--%>                
            </div>
        </div>
        <hr class="hr1" />
        <div class="row">
            <div class="col-lg-8 col-lg-offset-1"></div>
            <div class="col-lg-2">
                <center><asp:Button ID="btnVoltarMenu" runat="server" Text="Voltar" CssClass="btn-danger btn" Width="100px" /></center>
            </div>
        </div>
        <hr class="hr1" />
    </div>
</asp:Content>

