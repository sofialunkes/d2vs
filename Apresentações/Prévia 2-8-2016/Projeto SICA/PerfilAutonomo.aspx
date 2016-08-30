<%@ Page Title="SICA" Language="C#" MasterPageFile="masterPage/Autonomo.master" AutoEventWireup="true" CodeFile="PerfilAutonomo.aspx.cs" Inherits="PerfilAutonomo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/piDE.css" rel="stylesheet" />
    <link href="css/cardVerde.css" rel="stylesheet" />
    <link href="cssEstrela/font-awesome.css" rel="stylesheet" />
    <link href="cssDepoimento/cssDepoimento.css" rel="stylesheet" />
    <link href="css/jquery.bxslider.css" rel="stylesheet" />
    <script src="jsEstrela/bootstrap-rating-input.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <%-- CARD DO USUÁRIO --%>
            <div class="col-lg-8    ">
                <div style="margin-top: 1%">
                    <div class="card-usuario-forma">
                        <div class="row">
                            <div class="col-lg-5" style="display: inline-block">
                                <img src="img/profissionalTI.jpg" style="width:142px; height:142px; border-radius: 100%; margin-top: 5%; margin-left: 10%" />
                            </div>
                            <div class="col-lg-7" style="padding-top: 2%; display: inline-block">
                                <h3>Rogério Marcondes</h3>
                                <h4>Programador Web</h4>
                                <%-- ESTRELAS --%>
                                <input style="font-size: 15px" type="number" name="avaliacao" id="some_id" class="rating" data-clearable=" " />
                                <br />
                                <a href="#contato" class="btn principal" data-toggle="modal" style="width: 70%; padding-bottom: 2%; margin-left: 6%; margin-bottom: 2%; color: white">Contato</a>
                                <br />
                                <button class="btn principal" style="width: 35%; margin-left: 5%; text-decoration: none; color: white">Recomendar</button>
                                <a href="#avaliacaoAutonomo" data-toggle="modal" class="btn principal" style="width: 35%; text-decoration: none; color: white">Avaliar</a>
                            </div>
                        </div>
                        <div class="card-usuario-legenda">
                            <h4>Descrição</h4>
                            <asp:Label ID="lblDescricao" runat="server" >Conhecimento avançado em HTML / CSS / JavaScript. Realizo teste de performance, implemento acessibilidade e desenvolvo aplicativo para android / iOS</asp:Label>
                        </div>
                    </div>
                </div>
                <%-- CARROSSEL DE FOTOS --%>
                <div class="cardPerfil">
                    <div class="headerAutonomo">
                        Fotos
                   
                    </div>
                    <div class="slider2">
                        <div class="slide">
                            <img src="img/free-web-page-templates-new-1.png" />      
                        </div>
                        <div class="slide ">
                            <img src="img/Free-Website-Template2.jpg" />
                        </div>
                    </div>
                </div>
                <%-- CARROSSEL DE VÍDEOS --%>
                <div class="cardPerfil">
                    <div class="headerAutonomo">
                        Vídeos
                   
                    </div>
                    <div class="slider2">
                        <div class="slide">
                            <iframe src="https://www.youtube.com/embed/watch?v=tE7y_agJuAA" style="height: 200px"></iframe>
                        </div>
                        <div class="slide">
                            <iframe src="https://www.youtube.com/embed/watch?v=tE7y_agJuAA" style="height: 200px"></iframe>
                        </div>
                        <div class="slide">
                            <iframe src="https://www.youtube.com/embed/watch?v=tE7y_agJuAA" style="height: 200px"></iframe>
                        </div>
                    </div>
                </div>
                <%-- ÁREA DE COMENTÁRIOS --%>
                <div class="cardPerfil" style="margin-top: 2%">
                    <div class="headerAutonomo">
                        Comentários:
                    </div>

                    <div class="testimonials" style="margin-top: 2%">
                        <div class="active item">
                            <div class="carousel-info">
                                <img alt="" src="img/img1-small.jpg" class="pull-left" />
                                <div class="pull-left">
                                    <span class="testimonials-name">Lina Mars</span>
                                    <span class="testimonials-post"></span>
                                </div>
                            </div>
                            <blockquote style="background-color:white">
                                <p>Denim you probably haven't heard of. Lorem ipsum dolor met consectetur adipisicing sit amet, consectetur adipisicing elit, of them jean shorts sed magna aliqua. Lorem ipsum dolor met.</p>
                            </blockquote>
                        </div>
                    </div>
                    <hr style="border-color: white" />
                    <div class="testimonials" style="margin-top: 2%">
                        <div class="active item">

                            <div class="carousel-info">
                                <img alt="" src="img/img1-small.jpg" class="pull-left" />
                                <div class="pull-left">
                                    <span class="testimonials-name">Lina Mars</span>
                                    <span class="testimonials-post"></span>
                                </div>
                            </div>
                            <blockquote style="background-color:white">
                                <p>Denim you probably haven't heard of. Lorem ipsum dolor met consectetur adipisicing sit amet, consectetur adipisicing elit, of them jean shorts sed magna aliqua. Lorem ipsum dolor met.</p>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-1" style="width:1%"></div>
            <div class="col-lg-3">
                <%-- ESPECIALIDADES --%>
                <div class="cardPerfil">
                    <div class="headerAutonomo">
                        Especialidades:
                   
                    </div>
                    <div style="padding: 5%">
                        <h4 class="especialidadeAutonomo">HTML</h4>
                        <%--  <h4 class="esp"></h4>--%>
                        <h4 class="especialidadeAutonomo">CSS</h4>
                        <%--<h4 class="esp"></h4>--%>
                        <h4 class="especialidadeAutonomo">JAVASCRIPT</h4>
                        <%--<h4 class="esp"></h4>--%>
                        <h4 class="especialidadeAutonomo">Node.js</h4>
                    </div>
                </div>
                <%-- RECOMENDADO POR --%>
                <div class="cardPerfil">
                    <div class="headerAutonomo">
                        Recomendado por:
                   
                    </div>
                    <div class="row" style="margin-left: 2%; margin-top: 2%">
                        <div class="col-lg-6" style="display: inline-block">
                            <img src="imgCards/1.jpg" style="width: 80px; border-radius: 50px" />
                        </div>
                        <div class="col-lg-6" style="display: inline-block">
                            <img src="imgCards/1.jpg" style="width: 80px; border-radius: 50px" />
                        </div>
                    </div>
                    <div class="row" style="margin-top: 5%; margin-left: 2%">
                        <div class="col-lg-6" style="display: inline-block">
                            <img src="imgCards/1.jpg" style="width: 80px; border-radius: 50px; display: inline-block" />
                        </div>
                        <div class="col-lg-6" style="display: inline-block">
                            <img src="imgCards/1.jpg" style="width: 80px; border-radius: 50px" />
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    </div>
    <!-- MODAL - CONTATO AUTÔNOMO -->
    <div id="contato" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content" style="border: solid 2px #54217c; border-radius: 1%">
                <div class="modal-header" style="background-color: #54217c">
                    <button type="button" class="close" data-dismiss="modal" style="color: white">&times;</button>
                    <h4 class="modal-title" style="color: white">Informações de contato:</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-3">
                            <img src="img/diogo.jpg" style="border-radius: 100%" />
                        </div>
                        <div class="col-lg-1"></div>
                        <div class="col-lg-8">
                            <h3>Diogo Torres Bianchi</h3>
                            <h4>Programador Web</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <h3>Contato:</h3>
                            <h4>Telefone: <small>(12) 3125-9764</small></h4>
                            <h4>Celular:<small> (12) 98432-8461</small></h4>
                            <h4>E-mail:<small> diogo@gmail.com</small></h4>
                        </div>
                        <div class="col-lg-6">
                            <h3>Endereço:</h3>
                            <h4>Rua:<small> João da Silva, 46</small></h4>
                            <h4>Bairro:<small> Nova Lorena</small></h4>
                            <h4>Cidade:<small> Lorena</small></h4>
                            <h4>CEP:<small> 12564-762</small></h4>
                        </div>
                    </div>
                    <h4>Localização:</h4>
                    <center>
                    <img src="img/maps.jpg" alt="Google Maps" title="Google Maps" />
                        </center>
                    <br />
                </div>
            </div>
        </div>
    </div>

     <!-- MODAL - AVALIAÇÃO AUTÔNOMO -->
    <div id="avaliacaoAutonomo" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content"  style="border:solid 2px #54217c;border-radius:1%" >
                <div class="modal-header" style="background-color:#54217c">
                    <button type="button" class="close" data-dismiss="modal" style="color:white">&times;</button>
                    <h4 class="modal-title" style="color:white">Avaliação de serviço</h4>
                </div>

                <div class="modal-body">
                    <div class="row container">
                        <%-- Foto do autônomo --%>
                        <div class="col-lg-2">
                            <img src="img/diogo.jpg" style="border-radius:100%" />
                        </div>
                        <br />
                        <%-- Nome e profissão --%>
                        <div class="col-lg-3" style="display: table-cell; vertical-align: middle">
                            <h3>Diogo Torres Bianchi</h3>
                            <p>Programador web</p>
                        </div>
                    </div>
                    <br />
                    <%-- Estrelas --%>
                    <div class="row container">
                        <div class="col-lg-4">
                            <ul style="list-style-type: none; padding-left: 0 !important">
                                <li style="float: left">Avaliação: &nbsp;&nbsp;</li>
                                <li style="float: left">
                                    <input style="font-size: 15px" type="number" name="avaliacao" id="some_id" class="rating" data-clearable=" " /></li>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <%-- Título da avaliação --%>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <asp:Label ID="lblTituloAvaliacao" runat="server" Text="Título da avaliação"></asp:Label>
                                <br />
                                <asp:TextBox Width="100%" ID="txtTituloAvaliacao" runat="server" placeholder="Exemplo: Serviço de qualidade" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                        <br />
                        <%-- Opinião --%>
                        <div class="row">
                            <div class="col-lg-5">
                                <asp:Label ID="lblOpiniao" runat="server" Text="Dê sua opinião"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtOpiniao" runat="server" Width="100%" Height="100" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%-- Botões --%>
                    <div class="modal-footer">
                         <button type="button" class="btn btn-success" data-dismiss="modal">Salvar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- Script da estrela --%>
    <script>
        $(function () {
            $('input').on('change', function () {
                alert("Changed: " + $(this).val())
            });
        });
    </script>

    <%-- Script Carrossel --%>
    <script>
        $(document).ready(function () {
            $('.slider2').bxSlider({
                slideWidth: 300,
                minSlides: 2,
                maxSlides: 2,
                slideMargin: 10
            });
        });
    </script>
    <script src="jsCarousel/jquery.bxslider.min.js"></script>
</asp:Content>
