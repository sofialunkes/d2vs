using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Profissao
{
    private int id;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    private string nome;

    public string Nome
    {
        get { return nome; }
        set { nome = value; }
    }
    private Atuacao idAtuacao;

    public Atuacao IdAtuacao
    {
        get { return idAtuacao; }
        set { idAtuacao = value; }
    }
}