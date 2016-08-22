<%@ Page Title="SICA" Language="C#" MasterPageFile="masterPage/Padrao.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/carouselDE.css" rel="stylesheet" />
    <link href="css/piDE.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="w3-content w3-display-container funndo caro">
        <div class="mySlides w3-animate-fading row">
            <div class="col-lg-4">
                <h4 class="especialidadeAutonomo">Cabeamento Estruturado</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Gerenciamento de Rede</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Projeto de Rede</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Manutenção de Rede</h4>
            </div>
            <div class="col-lg-4">
                <center><img src="img/profissionalTI.jpg" class="fotosAutonomos" /></center>
                <h3 class="nomeAutonomos">João da Silva</h3>
                <h4 class="profissaoAutonomos">Técnico em Redes</h4>
                <center><img src="img/EstrelasAvaliacao.PNG" /></center> 
            </div>
            <div class="col-lg-4" style="margin-left:-50px">
                <img src="img/servidorTI.jpg"/>
            </div>
        </div>
        <div class="mySlides w3-animate-fading row">
            <div class="col-lg-4">
                <h4 class="especialidadeAutonomo">Cozinhar</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Limpar</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Baby Sitter</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Lavo e Passo Roupas</h4>
            </div>
            <div class="col-lg-4">
                <center><img src="img/profissionalDom.jpg" class="fotosAutonomos" /></center>
                <h3 class="nomeAutonomos">Maria Conceição</h3>
                <h4 class="profissaoAutonomos">Empregada Doméstica</h4>
                <center><img src="img/EstrelasAvaliacao.PNG" /></center> 
            </div>
            <div class="col-lg-4" style="margin-left:-50px">
                <img src="img/serviçoDom.jpg"/>
            </div>
        </div>

        <%-- Especialidades --%>
        <div class="mySlides w3-animate-fading row">
            <div class="col-lg-4">
                <h4 class="especialidadeAutonomo">Troca de Oléo</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Troca de Motor</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Alinhamento</h4>
                <h4 class="esp"> </h4>
                <h4 class="especialidadeAutonomo">Balanceamento</h4>
            </div>

            <div class="col-lg-4">
                <center><img src="img/profissionalMec.jpg" class="fotosAutonomos" /></center>
                <h3 class="nomeAutonomos">Augusto Pires</h3>
                <h4 class="profissaoAutonomos">Mecânico de Automovéis</h4>
                <center><img src="img/EstrelasAvaliacao.PNG" /></center> 
            </div>
            <div class="col-lg-4" style="margin-left:-50px">
                <img src="img/serviçoMec.jpg"/>
            </div>
        </div>

        <div class="w3-center w3-section w3-large w3-text-#54217C w3-display-bottomleft" style="width: 100%">
            <div class="w3-left w3-padding-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
            <div class="w3-right w3-padding-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
        </div>
    </div>
    <br />

    <%--areas de atuação--%>
    <div class="container-fluid funndo">
        <div class="row">
            <center>
            <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <a href="#primeira"><i class="mdi mdi-monitor menuOP1" style="font-size:100px"><h4 class="menuOP2">Tecnologia da Informação</h4></i></a>
            </div>
            <div class="col-lg-2">
                <a href="#segunda"><i class="mdi mdi-broom menuOP1" style="font-size:100px"><h4 class="menuOP2">Domésticas</h4></i></a>
            </div>
            <div class="col-lg-2">
                <a href="#terceira"><i class="mdi mdi-silverware-variant menuOP1" style="font-size:100px"><h4 class="menuOP2">Gastronomia</h4></i></a>
            </div>
            <div class="col-lg-2">
                <a href="#quarta"><i class="mdi mdi-book-open-variant menuOP1" style="font-size:100px"><h4 class="menuOP2">Educação</h4></i></a>
            </div>
            <div class="col-lg-2">
                <a href="#quinta"><i class="mdi mdi-worker menuOP1" style="font-size:100px"><h4 class="menuOP2">Construção</h4></i></a>
            </div>
            <div class="col-lg-1"></div>
            </center>
        </div>
    </div>
    <br />

    <%--onde mostra o acordeon, depois de clicar no icone acima--%>
    <div class="container-fluid funndo" id="acordeon">
        <div class="row" id="primeira">
            <div class="col-lg-12" style="height: auto;">
                <center>
                <table class="tabela">
                    <tr>
                        <td class="celula">
                            <center>
                                <img src="imgCards/diogo.jpg" class="img"/>               
                                <h4><b>Diogo Bianchi</b></h4>
                                <h4>Programador Web</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/1.jpg" class="img"/>               
                                <h4><b>Marcelo Augusto</b></h4>
                                <h4>Programador Java</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/8.jpg" class="img"/>               
                                <h4><b>Renata Amarante</b></h4>
                                <h4>Técnico em Redes</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/5.jpg" class="img"/>               
                                <h4><b>Américo de Souza</b></h4>
                                <h4>Técnico em BD</h4>
                            </center>
                        </td>
                    </tr>
                </table>
                </center>
            </div>
        </div>

    <div class="row" id="segunda">
        <div class="col-lg-12" style="height: auto;">
                <center>
                <table class="tabela">
                    <tr>
                        <td class="celula">
                            <center>
                                <img src="imgCards/6.jpg" class="img"/>               
                                <h4><b>Roberta Maria</b></h4>
                                <h4>Cozinheira</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/8.jpg" class="img"/>               
                                <h4><b>Maria Josefina</b></h4>
                                <h4>Cuidadora de Idosos</h4>
                            </center>
                        </td>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/9.jpg" class="img"/>               
                                <h4><b>Alessandra Vital</b></h4>
                                <h4>Empregada</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/7.jpg" class="img"/>               
                                <h4><b>Célia Rodrigues</b></h4>
                                <h4>Baby Sitter</h4>
                            </center>
                        </td>
                    </tr>
                </table>
                </center>
        </div>
    </div>


    <div class="row" id="terceira">
        <div class="col-lg-12" style="height: auto;">
            <center>
                <table class="tabela">
                    <tr>
                        <td class="celula">
                            <center>
                                <img src="imgCards/diogo.jpg" class="img"/>               
                                <h4><b>Diogo Bianchi</b></h4>
                                <h4>Cozinheiro Gourmet</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/1.jpg" class="img"/>               
                                <h4><b>Almeida Vasconcellos</b></h4>
                                <h4>Churrasqueiro</h4>
                            </center>
                        </td>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/6.jpg" class="img"/>               
                                <h4><b>Maria Antonieta</b></h4>
                                <h4>Boleira</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/7.jpg" class="img"/>               
                                <h4><b>Giselle Rodrigues</b></h4>
                                <h4>Cozinheira</h4>
                            </center>
                        </td>
                    </tr>
                </table>
                </center>
        </div>
    </div>
    <div class="row" id="quarta">
        <div class="col-lg-12" style="height: auto;">
            <center>
                <table class="tabela">
                    <tr>
                        <td class="celula">
                            <center>
                                <img src="imgCards/8.jpg" class="img"/>               
                                <h4><b>Roberta Antunes</b></h4>
                                <h4>Professora Mátematica</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/5.jpg" class="img"/>               
                                <h4><b>Vitor Shimura</b></h4>
                                <h4>Professor Infantil</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/7.jpg" class="img"/>               
                                <h4><b>Helena Versalles</b></h4>
                                <h4>Professora Português</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/1.jpg" class="img"/>               
                                <h4><b>Vitor Benedito</b></h4>
                                <h4>Professor Inglês</h4>
                            </center>
                        </td>
                    </tr>
                </table>
                </center>
        </div>
    </div>

    <div class="row" id="quinta">
        <div class="col-lg-12" style="height: auto;">
            <center>
                <table class="tabela">
                    <tr>
                        <td class="celula">
                            <center>
                                <img src="imgCards/diogo.jpg" class="img"/>               
                                <h4><b>Julio Brás</b></h4>
                                <h4>Pedreiro</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/1.jpg" class="img"/>               
                                <h4><b>Renato Espindola</b></h4>
                                <h4>Marceneiro</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/8.jpg" class="img"/>               
                                <h4><b>Ana Beatriz</b></h4>
                                <h4>Arquiteta</h4>
                            </center>
                        </td>
                        <td class="celula">
                            <center>
                                <img src="imgCards/4.jpg" class="img"/>               
                                <h4><b>Francisco Gutemberg</b></h4>
                                <h4>Ajudante de Pedreiro</h4>
                            </center>
                        </td>
                    </tr>
                </table>
                </center>
            </div>
        </div>
    </div>

    <script>
        var slideIndex = 1;

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }
        function currentDiv(n) {
            showDivs(slideIndex = n);
        }
        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length };
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-white", "");
            }
            x[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " w3-white";
        }
        function plusOne() {
            plusDivs(1);
        }
        showDivs(slideIndex);
        setInterval(plusOne, 15000);
    </script>
</asp:Content>

