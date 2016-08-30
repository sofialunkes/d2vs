<%@ Page Title="SICA" Language="C#" MasterPageFile="~/masterPage/Cliente.master" AutoEventWireup="true" CodeFile="BuscaDeProfissional.aspx.cs" Inherits="BuscaDeProfissional" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/card.css" rel="stylesheet" />
    <link href="cssEstrela/font-awesome.css" rel="stylesheet" />
    <script src="jsEstrela/bootstrap-rating-input.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="background-color: white; padding-left: 1px">
        <div class="row" style="background-color:white">
            <div class="col-lg-3 col-md-3 col-sm-6">
                <h3 style="float:left">Ordenar Por:</h3>
                <asp:DropDownList ID="ddlOrdenacao" runat="server" CssClass="form-control">
                    <asp:ListItem>Mais Buscados</asp:ListItem>
                    <asp:ListItem>Melhor Avaliado</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <a href="PerfilAutonomo.aspx" style="text-decoration:none;color:black">
                    <div class="card-usuario-forma">
                        <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                        <div class="card-usuario-legenda">
                            <h4><strong>Diogo Torres Bianchi</strong></h4>
                            <h5>Desenvolvedor Web</h5>
                            <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card-usuario-forma">
                    <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                    <div class="card-usuario-legenda">
                        <h4><strong>Diogo Torres Bianchi</strong></h4>
                        <h5>Desenvolvedor Web</h5>
                        <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card-usuario-forma">
                    <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                    <div class="card-usuario-legenda">
                        <h4><strong>Diogo Torres Bianchi</strong></h4>
                        <h5>Desenvolvedor Web</h5>
                        <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card-usuario-forma">
                    <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                    <div class="card-usuario-legenda">
                        <h4><strong>Diogo Torres Bianchi</strong></h4>
                        <h5>Desenvolvedor Web</h5>
                        <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                    </div>
                </div>
            </div>

            <div class="container" style="background-color: white; padding-left: 8px">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="card-usuario-forma">
                            <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                            <div class="card-usuario-legenda">
                                <h4><strong>Diogo Torres Bianchi</strong></h4>
                                <h5>Desenvolvedor Web</h5>
                                <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="card-usuario-forma">
                            <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                            <div class="card-usuario-legenda">
                                <h4><strong>Diogo Torres Bianchi</strong></h4>
                                <h5>Desenvolvedor Web</h5>
                                <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="card-usuario-forma">
                            <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                            <div class="card-usuario-legenda">
                                <h4><strong>Diogo Torres Bianchi</strong></h4>
                                <h5>Desenvolvedor Web</h5>
                                <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="card-usuario-forma">
                            <center> <img src="img/diogo.jpg" style="width:50% ;border-radius:100% ; margin-top:15px"/>  </center>
                            <div class="card-usuario-legenda">
                                <h4><strong>Diogo Torres Bianchi</strong></h4>
                                <h5>Desenvolvedor Web</h5>
                                <input style="font-size: 15px" type="number" name="avaliacao" id="" class="rating" data-clearable=" " />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

