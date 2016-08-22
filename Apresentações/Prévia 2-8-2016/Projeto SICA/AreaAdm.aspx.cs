using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class areaAdm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CarregarGrid();
        
    }
    public void CarregarGrid()
    {
        //DataSet ds = new DataSet();
        DataSet ds = UsuarioBD.SelectAdm();
        int qtd = ds.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            gdv.DataSource = ds.Tables[0].DefaultView;
            gdv.DataBind();
            gdv.Visible = true;
            lbl.Text = "Foram encontrados " + qtd + " de registros";
        }
        else
        {
            gdv.Visible = false;
            lbl.Text = "Não foram encontrado registros...";
        }
    }

   
}