<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/Cliente.master" AutoEventWireup="true" CodeFile="LRClienteCadastroLeilao.aspx.cs" Inherits="LRClienteCadastroLeilao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container funndo fundoRoxo">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="titulo2">Leilão Reverso:</h2>
            </div>
        </div>
    </div>
    <div class="container funndo bordaa"><%--container1--%>
        <hr class="hr1" />
        <div class="row"><%--row1--%>
            <%--ESCOLHER O SERVIÇO REQUERIDO--%>
                <div class="col-lg-6 col-lg-offset-1">
                    <h4 class="textos">Serviço Requerido:</h4>
                    <asp:TextBox ID="txtServicoRequerido" runat="server" placeholder="Serviço Requerido" CssClass="form-control"></asp:TextBox>
                    <button type="button" class="btn btn-default" style="margin-top: -55px; margin-left: 515px;">
                        <span class="mdi mdi-magnify" aria-hidden="true"></span>
                    </button>

                </div>
                <%--ESCOLHER O PRAZO FINAL--%>
                <div class="col-lg-4">
                    <h4 class="textos">Prazo Final:</h4>
                    <asp:TextBox ID="txtTituloEvento" runat="server" placeholder="##/##/####" CssClass="form-control"></asp:TextBox>
                </div>
            <div class="col-lg-1" <%--style="border:15px black solid"--%>></div>
        </div><%--row1--%>
        <div class="row"><%--row2--%>
            <div class="col-lg-10 col-lg-offset-1">
                <h4 class="textos">Descrição Completa:</h4>
                <asp:TextBox ID="txtDescricaoCompleta" runat="server" placeholder="Faça aqui uma descrição completa do serviço requerido" CssClass="form-control" Height="100px"></asp:TextBox>
                <br />
            </div>
        </div><%--row2--%>

        <div class="row">
            <div class="col-lg-7 col-lg-offset-1"></div>
            <div class="col-lg-3">
                <center>
                    <asp:Button ID="btnCancelarLeilao" runat="server" Text="Cancelar" CssClass="btn-danger btn" Width="100px" />
                    <a href="LRClienteTelaOferta.aspx" class="btn-success btn" Width="100px" >Iniciar Leilão</a>
                </center>
            </div>
        </div>
        <hr class="hr1" />
    </div><%--container1--%>
</asp:Content>

