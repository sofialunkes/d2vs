<%@ Page Title="Oferta Reversa" Language="C#" MasterPageFile="~/masterPage/Cliente.master" AutoEventWireup="true" CodeFile="OfertaServicoCliente.aspx.cs" Inherits="OfertaServicoCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container funndo fundoRoxo">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="titulo2">Oferta Reversa:</h2>
            </div>
        </div>
    </div>
    <div class="container funndo bordaa">
        <hr class="hr1" />
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <center><img src="img/imgOfertaServicoAutonomo1.jpg" class="img1" /></center>
            </div>
            <div class="col-lg-8">
                <h3 class="textos2"><b>Cliente:</b> Marcela dos Santos</h3>
                <h4 class="textos2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Data de Entrega:</b> 05/07/2016</h4>
                <h4 class="textos2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Descrição:</b> Preciso de Maquiagem e Penteado para um casamento que começará as 17:00.</h4>
            </div>
            <div class="col-lg-1"></div>
        </div>
        <hr class="hr1" />
    </div>

    <br />
    <div class="container funndo fundoRoxo">
        <h4 class="titulo2">Ofertas dos Autônomos:</h4>
    </div>
    <div class="container funndo bordaa">
        <hr class="hr1" />
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">

                <center><img src="img/imgOfertaServicoAutonomo2.jpg" class="img1" /></center>
            </div>
            <div class="col-lg-6">
                <h3 class="textos2"><b>Autônomo:</b> Fernanda Marcia</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 100,00 </h4>
                <h4 class="textos2"><b>Observações:</b>  Faço maquiagem profissional, já trabalhei com artistas.</h4>
            </div>
            <div class="col-lg-2">
                <center>
                <br />
                <asp:Button ID="btnAceitar" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/>
                <br /><br />
                <asp:Button ID="btnRecusar" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/>
                </center>
            </div>
        </div>
        <hr class="hr1" />
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">
                <center><img src="img/imgOfertaServicoAutonomo3.jpg" class="img1" /></center>
            </div>
            <div class="col-lg-6">
                <h3 class="textos2"><b>Autônomo:</b> Eduarda Souza Silva</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 150,00 </h4>
                <h4 class="textos2"><b>Observações:</b> Penteados Profissionais.</h4>
            </div>
            <div class="col-lg-2">
                <center>
                <br />
                <asp:Button ID="btnAceitar1" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/>
                <br /><br />
                <asp:Button ID="btnRecusar1" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/>
                </center>
            </div>
        </div>
        <hr class="hr1" />
        <div class="row">
            <div class="col-lg-2 col-lg-offset-1">

                <center><img src="img/imgOfertaServicoAutonomo4.jpg" class="img1"/></center>
            </div>
            <div class="col-lg-6">
                <h3 class="textos2"><b>Autônomo:</b> Lourdes Amarantes</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 200,00 </h4>
                <h4 class="textos2"><b>Observações:</b> Faço maquiagem, penteados e unha também.</h4>
            </div>
            <div class="col-lg-2">
                <center>
                <br />
                <asp:Button ID="btnAceitar2" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/>
                <br /><br />
                <asp:Button ID="btnRecusar2" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/>
                </center>
            </div>
        </div>
        <hr class="hr1" />
        <div class="row">
            <%--<div class="col-lg-1"></div>--%>
            <div class="col-lg-2 col-lg-offset-1">

                <center><img src="img/imgOfertaServicoCliente.jpg" class="img1"/></center>
            </div>
            <div class="col-lg-6">
                <h3 class="textos2"><b>Autônomo:</b> Gabriela Augustine</h3>
                <h4 class="textos2"><b>Oferta:</b> R$ 300,00 </h4>
                <h4 class="textos2"><b>Observações:</b> Faço Maquiagem e Penteados, trabalho com pessoas conhecidas e tenho muitos cursos de especialização em penteados e maquiagem.</h4>
            </div>
            <div class="col-lg-2">
                <center>
                <br />
                <asp:Button ID="btnAceitar3" runat="server" Text="Aceitar" CssClass="btn-success btn" Width="100px"/>
                <br /><br />
                <asp:Button ID="btnRecusar3" runat="server" Text="Recusar" CssClass="btn-danger btn" Width="100px"/>
                </center>
            </div>
        </div>
        <hr class="hr1" />
    </div>
</asp:Content>

