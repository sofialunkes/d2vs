using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Motivo
{
    private int id;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    private string motivo;

    public string Motivo1
    {
        get { return motivo; }
        set { motivo = value; }
    }
    private Usuario idUsuario;

    public Usuario IdUsuario
    {
        get { return idUsuario; }
        set { idUsuario = value; }
    }
    private Usuario idAdmDesativa;

    public Usuario IdAdmDesativa
    {
        get { return idAdmDesativa; }
        set { idAdmDesativa = value; }
    }
    private DateTime dtInativacao;

    public DateTime DtInativacao
    {
        get { return dtInativacao; }
        set { dtInativacao = value; }
    }
    private DateTime dtAtivacao;

    public DateTime DtAtivacao
    {
        get { return dtAtivacao; }
        set { dtAtivacao = value; }
    }
    private string motivoInativacao;

    public string MotivoInativacao
    {
        get { return motivoInativacao; }
        set { motivoInativacao = value; }
    }
}