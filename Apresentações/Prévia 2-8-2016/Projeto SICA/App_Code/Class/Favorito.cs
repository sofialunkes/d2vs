using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Favorito
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
    private Usuario idCliente; /*Pessoa que salva no favorito*/

    public Usuario IdCliente
    {
        get { return idCliente; }
        set { idCliente = value; }
    }
    private Usuario idAutonomo; /*Pessoa a ser salva no favorito*/

    public Usuario IdAutonomo
    {
        get { return idAutonomo; }
        set { idAutonomo = value; }
    }
}