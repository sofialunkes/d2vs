using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class AvaliacaoServico
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
    private int pontuacao;

    public int Pontuacao
    {
        get { return pontuacao; }
        set { pontuacao = value; }
    }
    private Usuario idCliente; /*Avaliador*/

    public Usuario IdCliente
    {
        get { return idCliente; }
        set { idCliente = value; }
    }
    private Usuario idAutonomo; /*Avaliado*/

    public Usuario IdAutonomo
    {
        get { return idAutonomo; }
        set { idAutonomo = value; }
    }
}