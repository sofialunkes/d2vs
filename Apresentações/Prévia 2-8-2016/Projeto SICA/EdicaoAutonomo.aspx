<%@ Page Title="Editar cadastro" Language="C#" MasterPageFile="masterPage/Autonomo.master" AutoEventWireup="true" CodeFile="EdicaoAutonomo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function AplicarMascaraCpfCnpj(objTextBox) {
            var pComponente = objTextBox;
            var campoMask, noTexto, noTextoMascara = '', nonNumbers = /\D/;

            noTexto = pComponente.value.toString();

            while (noTexto != noTexto.replace('.', '')) {
                noTexto = noTexto.replace('.', '');
            }
            while (noTexto != noTexto.replace('-', '')) {
                noTexto = noTexto.replace('-', '');
            }
            while (noTexto != noTexto.replace('/', '')) {
                noTexto = noTexto.replace('/', '');
            }

            if (nonNumbers.test(noTexto)) {
                return;
            }

            if (noTexto.length <= 11) {
                while (noTexto.length != 11) {
                    noTexto = '0' + noTexto;
                }
                for (var intContador = 0; intContador < noTexto.length; intContador++) {
                    noTextoMascara += noTexto.charAt(intContador);
                    if (intContador == 2 || intContador == 5) {
                        noTextoMascara += '.';
                    }
                    else if (intContador == 8) {
                        noTextoMascara += '-';
                    }
                }
            }
            else {
                if (noTexto.length > 14) {
                    noTexto = noTexto.substr(0, 14);
                }
                while (noTexto.length != 14) {
                    noTexto = '0' + noTexto;
                }
                for (var intContador = 0 ; intContador < noTexto.length; intContador++) {
                    noTextoMascara += noTexto.charAt(intContador);
                    if (intContador == 1 || intContador == 4) {
                        noTextoMascara += '.';
                    }
                    else if (intContador == 7) {
                        noTextoMascara += '/';
                    }
                    else if (intContador == 11) {
                        noTextoMascara += '-';
                    }
                }
            }
            pComponente.value = noTextoMascara;
        };
        function AplicarMascaraCep(objTextBox1) {
            if (mascaraInteiro(objTextBox1) == false) {
                event.returnValue = false;
            }
            return formataCampo(objTextBox1, '00.000-000', event);
        }
        function ValidaCep(objTextBox2) {
            exp = /\d{2}\.\d{3}\-\d{3}/
            if (!exp.test(objTextBox2.value))
                alert('Numero de Cep Invalido!');
        }
        function formataCampo(campo, Mascara, evento) {
            var boleanoMascara;

            var Digitato = evento.keyCode;
            exp = /\-|\.|\/|\(|\)| /g
            campoSoNumeros = campo.value.toString().replace(exp, "");

            var posicaoCampo = 0;
            var NovoValorCampo = "";
            var TamanhoMascara = campoSoNumeros.length;;

            if (Digitato != 8) { // backspace 
                for (i = 0; i <= TamanhoMascara; i++) {
                    boleanoMascara = ((Mascara.charAt(i) == "-") || (Mascara.charAt(i) == ".")
                                                            || (Mascara.charAt(i) == "/"))
                    boleanoMascara = boleanoMascara || ((Mascara.charAt(i) == "(")
                                                            || (Mascara.charAt(i) == ")") || (Mascara.charAt(i) == " "))
                    if (boleanoMascara) {
                        NovoValorCampo += Mascara.charAt(i);
                        TamanhoMascara++;
                    } else {
                        NovoValorCampo += campoSoNumeros.charAt(posicaoCampo);
                        posicaoCampo++;
                    }
                }
                campo.value = NovoValorCampo;
                return true;
            } else {
                return true;
            }
        }
    </script>
    <link href="css/estiloSofia.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Inserção dos Accordions para facilitar preenchimento dos formularios e etapas de inscrição como autonomo-->
    <div class="panel-group container" id="accordion" role="tablist" aria-multiselectable="true">
        <!--Formulário dos Dados Cadastrais -->
        <div class="panel panel-default customSofia ">
            <div class="panel-heading" role="tab" id="dadosCadastraisCollapse">
                <div class="panel-title">
                    <h4 class="col-md-10">Dados Cadastrais</h4>

                    <button class="btn btn-default" type="button" data-toggle="collapse" data-target="#dadosCadastrais" aria-expanded="false" aria-controls="collapseExample">
                        Cadastrar
                    </button>
                </div>
            </div>
            <div id="dadosCadastrais" class="panel-collapse collapse" role="tabpanel" aria-labelledby="dadosCadastraisCollapse">
                <div class="panel-body">
                    <!-- Linha com CPF e RG-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <%--<h4>CPF:</h4>--%>
                                    <h4><asp:Label ID="lblCpf" runat="server" Text="CPF:" ></asp:Label></h4>
                                    <asp:Label ID="lblCpf1" runat="server" CssClass="glyphicon-alert glyphicon" ></asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtCPF" OnChange="AplicarMascaraCpfCnpj(this)" placeholder="00000000000" ToolTip="Digite seu nome"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>RG:</h4>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtRG"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com Telefone, Sexo e Perfil-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>Telefone:</h4>
                                    <asp:TextBox placeholder="(000)0000-0000" TextMode="Phone" runat="server" CssClass="form-control" ID="txtTelefone"></asp:TextBox>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <h4>Celular:</h4>
                                            <asp:TextBox runat="server" ID="txtCel" TextMode="Phone" placeholder="000 00000-0000" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <h4>Data de Nascimento:</h4>
                                            <asp:TextBox ID="txtDataInicio" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <h4>Sexo</h4>
                                    <div class="col-lg-1">
                                        <asp:RadioButtonList runat="server" CssClass="radio" ID="rblSexo">
                                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <h4>Foto de Perfil</h4>
                                <asp:Image ID="imgDemo" runat="server" CssClass="img-rounded" />
                                <asp:FileUpload ID="FileUploadfoto" runat="server" CssClass="form-control" />
                                <br />
                                <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-default" OnClick="btnUpload_Click1" />
                                <br />
                            </div>
                        </div>
                    </div>
                    <!-- Linha com CEP, Estados e Cidade-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <h4>CEP:</h4>
                                    <asp:TextBox runat="server" ID="txtCEP" CssClass="form-control" OnKeyPress="AplicarMascaraCep(txtCEP)"
                                        onBlur="ValidaCep(this)" placeholder="00.000-000"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <h4>Estado:</h4>
                                    <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control">
                                        <asp:ListItem>SP</asp:ListItem>
                                        <asp:ListItem>RJ</asp:ListItem>
                                        <asp:ListItem>GO</asp:ListItem>
                                        <asp:ListItem>RS</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <h4>Cidade:</h4>
                                    <asp:TextBox runat="server" ID="txtCidade" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com Endereço e Numero-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-9">
                                <div class="form-group">
                                    <h4>Endereço:</h4>
                                    <asp:TextBox runat="server" ID="txtEndereco" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <h4>Número:</h4>
                                    <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com Bairro e Complemento-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>Bairro:</h4>
                                    <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>Complemento:</h4>
                                    <asp:TextBox ID="txtComplemento" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com botões de Cancelar e Salvar-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-5 col-lg-offset-7">
                                <div class="col-lg-6">
                                    <asp:Button ID="btnCadastrarDados" runat="server" Text="Cadastrar" CssClass="btn btn-success col-lg-12" OnClick="btnCadastrarDados_Click"/>
                                    <%--<button class="btn btn-danger col-lg-12">Cancelar</button>--%>
                                </div>
                                <div class="col-lg-6">
                                    <asp:Button ID="btnCancelarDados" runat="server" Text="Cancelar" CssClass="btn btn-danger col-lg-12" OnClick="btnCancelarDados_Click" />
                                    <%--<button class="btn btn-success col-lg-12">Salvar</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Formulário das Informações Profissionais-->
        <div class="panel panel-default customSofia">
            <div class="panel-heading" role="tab" id="informacoesProfissionaisCollapse">
                <div class="panel-title">
                    <h4 class="col-md-10">Informações Profissionais</h4>
                    <button class="btn btn-default" type="button" data-toggle="collapse" data-target="#informacoesProfissionais" aria-expanded="false" aria-controls="collapseExample">
                        Cadastrar
                    </button>
                </div>
            </div>
            <div id="informacoesProfissionais" class="panel-collapse collapse" role="tabpanel" aria-labelledby="informacoesProfissionaisCollapse">
                <div class="panel-body">
                    <!-- Linha com Área de Atuação e Profissão-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>Área de Atuação:</h4>
                                    <asp:TextBox runat="server" ID="txtAreaAtuacao" CssClass="form-control" placeholder="Ex: Padeiro"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>Profissão:</h4>
                                    <asp:TextBox ID="txtProfissaoAutonomo" runat="server" CssClass="form-control" placeholder="Ex: Gastronomia"></asp:TextBox><br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com Descrição-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <h4>Descrição:</h4>
                                    <textarea class="form-control" rows="3" placeholder="Breve descrição sobre a profissão que exercita"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com tags de Especialidade-->
                    <div class="row">
                        <div class="col-lg-10 col-md-offset-1">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <h4>Escolher Especialidades:</h4>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" ID="txtEscolherEspecialidade" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Button runat="server" ID="btnSalvarEspecialidade" CssClass="btn btn-default" Text="Adicionar" />
                                        </div>
                                    </div>
                                    <!-- Exemplo Tags de Especialidade -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <h4>Exemplo:</h4>
                                                <div class="col-lg-4">
                                                    Especialidade Y
                                                </div>
                                                <div class="col-lg-4">
                                                    Especialidade X
                                                </div>
                                                <div class="col-lg-4">
                                                    Especialidade Z
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 borda-esquerda">
                                <div class="form-group">
                                    <h4>Especialidades Escolhidas:</h4>
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <span class="tagEspecialidade">Especialidade V</span>
                                        </div>
                                        <div class="col-lg-4">
                                            <span class="tagEspecialidade">Especialidade M</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com Profissões Cadastradas-->
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <h4>Profissões Cadastradas: (1/3)</h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <div class="col-lg-8">
                                            <h4>Adicionar Nova Profissão</h4>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Button runat="server" ID="btnNovaProfissao" Text="+" CssClass="btn btn-default col-lg-6" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table">
                                        <tr>
                                            <th>Área de Atuação</th>
                                            <th>Profissão</th>
                                            <th>Especialidade</th>
                                            <th></th>
                                        </tr>
                                        <tr>
                                            <td>Area X</td>
                                            <td>Profissão X</td>
                                            <td>Especialidade X</td>
                                            <td>
                                                <button class="btn btn-default">Editar</button>
                                                <button class="btn btn-default">Excluir</button>
                                            </td>
                                        </tr>
                                    </table>

                                    <!-- <ul class="pager">
                                        <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span></a></li>
                                        <li class="next"><a href="#"><span aria-hidden="true">&rarr;</span></a></li>
                                    </ul>-->

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Linha com Botões de Salvar e Cancelar-->

                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="col-lg-5 col-lg-offset-7">
                                <div class="col-lg-6">
                                    <button class="btn btn-alert col-lg-12">Cancelar</button>
                                </div>
                                <div class="col-lg-6">
                                    <button class="btn btn-success col-lg-12">Salvar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Formulário com Fotos e Videos Autonomo -->
        <div class="panel panel-default customSofia">
            <div class="panel-heading " role="tab" id="fotosServicosCollapse">
                <div class="panel-title">
                    <h4 class="col-md-10">Adicionar Fotos e Videos de Serviço</h4>
                    <button class="btn btn-default" type="button" data-toggle="collapse" data-target="#midiaServicos" aria-expanded="false" aria-controls="collapseExample">
                        Cadastrar
                    </button>
                </div>
            </div>
            <div id="midiaServicos" class="panel-collapse collapse" role="tabpanel" aria-labelledby="fotosServicosCollapse">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4>Fotos Adicionadas: (1/9)</h4>
                                    <div class="row quadro-profissao">
                                        <div class="col-lg-4 ">
                                            <img src="img/cliente.png" class="img-rounded col-sm-offset-1" />
                                            <div class="row">
                                                <div class="col-lg-12 ">
                                                    <br />
                                                    <asp:Button runat="server" ID="btnEditarImagemProfissao" CssClass="btn btn-default col-lg-6 col-lg-offset-1" Text="Editar" />
                                                    <asp:Button runat="server" ID="btnExcluirImagemProfissao" CssClass="btn btn-default col-lg-6 col-lg-offset-1" Text="Excluir" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <br />
                                            <br />
                                            <br />
                                            <button class="btn btn-default btn-lg col-lg-4">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <br />
                                        <textarea class="form-control" rows="2" placeholder="Digite sua legenda aqui;"></textarea>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <h4>Adicionar Videos de Serviço</h4>
                                        <div class="row quadro-profissao">
                                            <div class="col-lg-4">
                                                <div class="embed-responsive embed-responsive-4by3">
                                                    <%--<iframe class="embed-responsive-item" src="youtu.be/Sagg08DrO5U"></iframe>--%>
                                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/Sagg08DrO5U" frameborder="0" allowfullscreen></iframe>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12 ">
                                                        <br />
                                                        <asp:Button runat="server" ID="Button1" CssClass="btn btn-default col-lg-6 col-lg-offset-1" Text="Editar" />
                                                        <asp:Button runat="server" ID="Button2" CssClass="btn btn-default col-lg-6 col-lg-offset-1" Text="Excluir" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <br />
                                                <br />
                                                <br />
                                                <button class="btn btn-default btn-lg col-lg-4">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <br />
                                        <textarea class="form-control" rows="2" placeholder="Digite sua legenda aqui;"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row classeFooterSofia">

        <div class="col-lg-4 col-lg-offset-8">
            <div class="col-lg-6">
                <a href="menuAutonomo.aspx" class="btn btn-default col-lg-12">Voltar</a>
            </div>
            <div class="col-lg-6">
                <a href="menuAutonomo.aspx" class="btn btn-success col-lg-12">Finalizar Cadastro</a>
            </div>

        </div>
    </div>
</asp:Content>

