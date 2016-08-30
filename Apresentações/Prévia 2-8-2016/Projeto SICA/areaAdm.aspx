<%@ Page Title="Área Adm." Language="C#" MasterPageFile="masterPage/Administrador.master" AutoEventWireup="true" CodeFile="AreaAdm.aspx.cs" Inherits="areaAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%---------------------------------------------------------------- FILTROS ---------------------------------------------------------------%>
    <div class="container secundaria" style="border-radius: 5px">
        <div class="row">
            <div class="col-lg-4">
                <h3><b>Filtros:</b></h3>
            </div>
            <div class="col-lg-4">
                <h4 style="float: left; margin-right: 10px;margin-top:6%">Status:</h4>
                <br />
                <asp:CheckBoxList ID="cbl_status" runat="server" RepeatDirection="Horizontal" CellSpacing="-1">
                    <asp:ListItem>Ativado&nbsp; </asp:ListItem>
                    <asp:ListItem> Desativado</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="col-lg-4">
                <h4 style="float: left;margin-top:6%">Ordernar por:</h4>
                <br />
                <span style="margin: 8px 8px 8px 8px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Nome</asp:ListItem>
                        <asp:ListItem>Id</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </div>
          
        </div>
    </div>
    <br />

    <%----------------------------------------------------------- TABELA ------------------------------------------------------------------%>
    <div class="container" style="background-color: #ffffff; border-radius: 5px; overflow-x:scroll">
       <asp:GridView ID="gdv" runat="server" CssClass="table-responsive table-hover table" GridLines="None">
           <Columns>
               <asp:BoundField DataField="ID_TIPO_USUARIO" HeaderText="TIPO USUARIO	" />
           </Columns>
           
           <EditRowStyle BorderStyle="Dashed" />
           
        </asp:GridView>
        <asp:Label ID="lbl" runat="server"></asp:Label>


     <%--  <table class="table-hover table" style="text-align: left">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Id</th>
                    <th>Usuário</th>
                    <th>E-mail</th>
                    <th>Status</th>
                    <th>Editar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Diogo Torres Bianchi</td>
                    <td>1421012</td>
                    <td>Autonomo</td>
                    <td>diogo@gmail.com</td>
                    <td>
                        <div style="width: 15px; height: 15px; background-color: #4CAF50; border-radius: 50%" title="Ativado"></div>
                    </td>
                    <td><a href="#desativar" data-toggle="modal" style="white-space: nowrap"><i class="mdi mdi-pencil"></i></a></td>
                </tr>
            </tbody>
        </table>--%>
    </div>

    <%----------------------------------------------- MODALS -------------------------------------------------------------------- --%>
    <%------------------------------------------- MODAL ATIVAR -------------------------------%>
    <!-- Início do Conteúdo - Modal -->
    <div id="ativar" class="modal fade" role="dialog">
        <div class="modal-dialog ">

            <!-- Modal content-->
            <div class="modal-content" style="border: solid 2px #54217C">
                <div class="modal-header" style="background-color: #54217C">
                    <button type="button" class="close" data-dismiss="modal" style="color: white">&times;</button>
                    <h4 class="modal-title" style="color: white"><b>Editar status:</b></h4>
                </div>
                <div class="modal-body">
                    <div class="row" style="text-align: center">
                        <div class="col-lg-4">
                            <img src="img/vitor.jpg" style="width: 70%; border-radius: 100%; margin-top: 15px; padding-top: -10px" />
                        </div>
                        <div class="col-lg-8">
                            <h3>Vitor Barbosa Shimura</h3>
                            <h4>Id: 1421016</h4>
                            <h4>Email:vbs@gmail.com</h4>
                        </div>
                    </div>
                    <div class="row" style="margin: 5px">
                        <h4>Motivo:</h4>
                        <asp:TextBox ID="txt_motivo" runat="server" Height="100px" CssClass="form-control"></asp:TextBox>
                    </div>

                    <%-- Botões --%>
                    <div class="modal-footer">
                        <button type="button" class="btn-success btn" data-dismiss="modal">Ativar</button>
                        <button type="button" class="btn-danger btn" data-dismiss="modal" style="opacity: 0.6; cursor: not-allowed">Desativar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- --------------------------------- FIM MODAL ATIVAR ----------------------------------------------------------------- -->

    <%------------------------------------------- MODAL DESATIVAR -------------------------------%>
    <!-- Início do Conteúdo - Modal -->
    <div id="desativar" class="modal fade" role="dialog">
        <div class="modal-dialog ">

            <!-- Modal content-->
            <div class="modal-content" style="border: solid 2px #54217C">
                <div class="modal-header" style="background-color: #54217C">
                    <button type="button" class="close" data-dismiss="modal" style="color: white">&times;</button>
                    <h4 class="modal-title" style="color: white"><b>Editar status:</b></h4>
                </div>
                <div class="modal-body">
                    <div class="row" style="text-align: center">
                        <div class="col-lg-4">
                            <img src="img/diogo.jpg" style="width: 70%; border-radius: 100%; margin-top: 15px; padding-top: -10px" />
                        </div>
                        <div class="col-lg-8">
                            <h3>Diogo Torres Bianchi</h3>
                            <h4>Id: 1421015</h4>
                            <h4>Email:diogo@gmail.com</h4>
                        </div>
                    </div>
                    <div class="row" style="margin: 5px">
                        <h4>Motivo:</h4>
                        <asp:TextBox ID="TextBox1" runat="server" Height="100px" CssClass="form-control"></asp:TextBox>
                    </div>

                    <%-- Botões --%>
                    <div class="modal-footer">
                        <button type="button" class="btn-success btn" data-dismiss="modal" style="opacity: 0.6; cursor: not-allowed">Ativar</button>
                        <button type="button" class="btn-danger btn" data-dismiss="modal">Desativar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- --------------------------------- FIM MODAL DESATIVAR ----------------------------------------------------------------- -->
</asp:Content>
