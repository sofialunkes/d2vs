using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterPage_Padrao : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrarCA_Click(object sender, EventArgs e)
    {
        Usuario user = new Usuario();
        user.Nome = txtNomeCadastro.Text;
        user.Email = txtEmailCadastro.Text;
        user.Senha = txtSenhaCadastro.Text;

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
        //t_user.Id = 3;
        //user.IdTipoUsuario = t_user;
        //UsuarioBD.Insert(user);

        txtNomeCadastro.Text = "";
        txtEmailCadastro.Text = "";
        txtSenhaCadastro.Text = "";

        if (rblOpcaoCA.Items[0].Selected)
        {
            t_user.Id = 2; //opção 2 = cliente
            user.IdTipoUsuario = t_user;
            UsuarioBD.Insert(user);
            Response.Redirect("Index.aspx");
        }
        else
        {
            t_user.Id = 1; //opção 1 = autônomo
            user.IdTipoUsuario = t_user;
            UsuarioBD.Insert(user);
            Response.Redirect("EdicaoAutonomo.aspx");
        }
           
    }

}
