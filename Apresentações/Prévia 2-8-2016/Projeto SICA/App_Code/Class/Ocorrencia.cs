using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Ocorrencia
{
    private int id;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    private string descricao;

    public string Descricao
    {
        get { return descricao; }
        set { descricao = value; }
    }
    private Usuario idUsuario; /*Cliente e autônomo podem registrar ocorrencia*/

    public Usuario IdUsuario
    {
        get { return idUsuario; }
        set { idUsuario = value; }
    }
}