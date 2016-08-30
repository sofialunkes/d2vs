using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    
    protected void btnUpload_Click1(object sender, EventArgs e)
    {
        if (FileUploadfoto.PostedFile != null)
        {
            try
            {
                string FileName = Path.GetFileName(FileUploadfoto.PostedFile.FileName);
                FileUploadfoto.SaveAs(Server.MapPath("img/")+FileName);
                this.imgDemo.ImageUrl = "img/" + FileName;
            }
            catch (Exception evento)
            {
                Console.Write("evento: " + evento);
            }
        }
    }
    protected void btnCadastrarDados_Click(object sender, EventArgs e)
    {
        Usuario user = new Usuario();
        int validacao = 0;

        if (txtCEP.Text != "")
            user.Cpf = txtCEP.Text;
        else { 
            validacao++;
            //label
        }

        if (txtRG.Text != "")
            user.Rg = txtRG .Text;
        else
        {
            validacao++;
            //label
        }

        if (txtTelefone.Text != "")
            user.Telefone = txtTelefone.Text;
        else
        {
            validacao++;
            //label
        }
        user.Celular = txtCel.Text;
        user.Sexo = rblSexo.SelectedValue;
        user.DtNascimento = txtDataInicio.Text;
        user.Cep = txtCEP.Text;
        user.Estado = ddlEstado.SelectedValue ;
        user.Bairro = txtBairro.Text;
        user.Complemento = txtComplemento.Text;

        txtCEP.Text = "";
        txtRG .Text = "";
        txtTelefone.Text = "";
        txtCel.Text = "";
        //rblSexo.SelectedItem ;
        txtDataInicio.Text = "";
        txtCEP.Text = "";
        //ddlEstado.SelectedValue ;
        txtBairro.Text = "";
        txtComplemento.Text = "";

       
            UsuarioBD.Insert(user);
       
 
    }
    protected void btnCancelarDados_Click(object sender, EventArgs e)
    {

    }
}