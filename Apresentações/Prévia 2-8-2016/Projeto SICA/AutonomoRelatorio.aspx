<%@ Page Title="Relatórios" Language="C#" MasterPageFile="masterPage/Autonomo.master" AutoEventWireup="true" CodeFile="AutonomoRelatorio.aspx.cs" Inherits="AutonomoRelatorio" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="js/canvasjs.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 secundaria">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%">
                            <h3>Visualizações do perfil:</h3>
                        </td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddlVisualizacaoPerfil" runat="server">
                                <asp:ListItem Value="0">Janeiro</asp:ListItem>
                                <asp:ListItem Value="1">Fevereiro</asp:ListItem>
                                <asp:ListItem Value="2">Mar&#231;o</asp:ListItem>
                                <asp:ListItem Value="3">Abril</asp:ListItem>
                                <asp:ListItem Value="4">Maio</asp:ListItem>
                                <asp:ListItem Value="5">Junho</asp:ListItem>
                                <asp:ListItem Value="6">Julho</asp:ListItem>
                                <asp:ListItem Value="7">Agosto</asp:ListItem>
                                <asp:ListItem Value="8">Setembro</asp:ListItem>
                                <asp:ListItem Value="9">Outubro</asp:ListItem>
                                <asp:ListItem Value="10">Novembro</asp:ListItem>
                                <asp:ListItem Value="11">Dezembro</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8" id="chartContainer" style="height: 300px;margin-left:-15px"></div>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2" style="background-color: #fff">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%">
                            <h3>Venda mensal:</h3>
                        </td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddlVendaMensal" runat="server">
                                <asp:ListItem Value="0">Janeiro</asp:ListItem>
                                <asp:ListItem Value="1">Fevereiro</asp:ListItem>
                                <asp:ListItem Value="2">Mar&#231;o</asp:ListItem>
                                <asp:ListItem Value="3">Abril</asp:ListItem>
                                <asp:ListItem Value="4">Maio</asp:ListItem>
                                <asp:ListItem Value="5">Junho</asp:ListItem>
                                <asp:ListItem Value="6">Julho</asp:ListItem>
                                <asp:ListItem Value="7">Agosto</asp:ListItem>
                                <asp:ListItem Value="8">Setembro</asp:ListItem>
                                <asp:ListItem Value="9">Outubro</asp:ListItem>
                                <asp:ListItem Value="10">Novembro</asp:ListItem>
                                <asp:ListItem Value="11">Dezembro</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>

                <br />
                <table class="table table-responsive table-hover">
                    <thead>
                        <tr>
                            <th>Dia</th>
                            <th>Título</th>
                            <th>Valor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>11/05/2016</td>
                            <td>Levantamento de requisitos</td>
                            <td>R$ 1.200,00</td>
                        </tr>
                        <tr>
                            <td>11/05/2016</td>
                            <td>Levantamento de requisitos</td>
                            <td>R$ 1.200,00</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <br />
    <%-- Total de vendas --%>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 secundaria">
                <table class="table table-responsive" style="width: 100%">
                    <thead>
                        <tr>
                            <th style="width: 50%">Total </th>
                            <th style="width: 17%">R$ 2400,00</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>

    <%-- Script do Gráfico--%>
    <script type="text/javascript">
        window.onload = function () {
            var chart = new CanvasJS.Chart("chartContainer",
            {
                height: 300,
                title: {
                    text: "Visualizações do perfil"
                },
                data: [
               {
                   type: "spline",
                   dataPoints: [
                   { x: new Date(2012, 00, 1), y: 1352 },
                   { x: new Date(2012, 01, 1), y: 1514 },
                   { x: new Date(2012, 02, 1), y: 1321 },
                   { x: new Date(2012, 03, 1), y: 1163 },
                   { x: new Date(2012, 04, 1), y: 950 },
                   { x: new Date(2012, 05, 1), y: 1201 },
                   { x: new Date(2012, 06, 1), y: 1186 },
                   { x: new Date(2012, 07, 1), y: 1281 },
                   { x: new Date(2012, 08, 1), y: 1438 },
                   { x: new Date(2012, 09, 1), y: 1305 },
                   { x: new Date(2012, 10, 1), y: 1480 },
                   { x: new Date(2012, 11, 1), y: 1291 }
                   ]
               }
                ]
            });
            chart.render();
        }
    </script>
</asp:Content>
