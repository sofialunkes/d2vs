using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterPage_Cliente : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
             CarregarPerfil();
    }
    protected void btnSalvarEdit_Click(object sender, EventArgs e)
    {
        Usuario user= new Usuario();
        user.Nome = txtEditNome.Text;
        user.Email = txtEmailEdit.Text;
        user.Senha = txtSenhaEdit.Text;
        user.Id = 1;
        UsuarioBD.Update(user);

        CarregarPerfil();
    }

    protected void CarregarPerfil()
    {
        DataSet ds = UsuarioBD.SelectAll();

        txtEditNome.Text = ds.Tables[0].Rows[0]["NOME"].ToString();
        txtEmailEdit.Text = ds.Tables[0].Rows[0]["EMAIL"].ToString();
    }
    
}
