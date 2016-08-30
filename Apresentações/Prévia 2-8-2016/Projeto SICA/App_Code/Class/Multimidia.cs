using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Multimidia
{
    private int id;
    private string caminhoMultimidia;
    private Boolean tipoMultimidia;
    private string descricaoMultimidia;
    private Usuario idUsuario;

    public Usuario IdUsuario
    {
        get { return idUsuario; }
        set { idUsuario = value; }
    }

    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    public string CaminhoMultimidia
    {
        get { return caminhoMultimidia; }
        set { caminhoMultimidia = value; }
    }

    public Boolean TipoMultimidia
    {
        get { return tipoMultimidia; }
        set { tipoMultimidia = value; }
    }

    public string DescricaoMultimidia
    {
        get { return descricaoMultimidia; }
        set { descricaoMultimidia = value; }
    }
}