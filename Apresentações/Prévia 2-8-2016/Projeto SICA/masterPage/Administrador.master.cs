using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterPage_Administrador : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnCadastrarAdm_Click(object sender, EventArgs e)
    {
        Usuario user = new Usuario();
        user.Nome = txtNomeAdm.Text;
        user.Email = txtEmailAdm.Text;
        user.Senha = txtSenhaAdm.Text;

        user.Cpf = null;
        user.Rg = null;
        user.Ativo = 1;
        user.Rg = null;
        user.Telefone = null;
        user.Celular = null;
        user.Sexo = null;
        user.DtNascimento = null;
        user.Cep = null;
        user.Estado = null;
        user.Bairro = null;
        user.Complemento = null;
        user.PagaPremium = 0;

        TipoUsuario t_user = new TipoUsuario();
        t_user.Id = 3; //id do adm.
        user.IdTipoUsuario = t_user;
        UsuarioBD.Insert(user);

        txtNomeAdm.Text = "";
        txtEmailAdm.Text = "";
        txtSenhaAdm.Text = "";

        Response.Redirect("AreaAdm.aspx");

    }
}
