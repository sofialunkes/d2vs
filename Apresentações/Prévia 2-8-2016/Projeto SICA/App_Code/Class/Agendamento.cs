using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Agendamento
{
    private int id;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    private string evento;

    public string Evento
    {
        get { return evento; }
        set { evento = value; }
    }
    private string descricao;

    public string Descricao
    {
        get { return descricao; }
        set { descricao = value; }
    }
    private float valorServico;

    public float ValorServico
    {
        get { return valorServico; }
        set { valorServico = value; }
    }
    private Usuario idUsuario;

    public Usuario IdUsuario
    {
        get { return idUsuario; }
        set { idUsuario = value; }
    }

}