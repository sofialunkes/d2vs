using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Usuario
{
    private int id;
    private string nome;
    private string email;
    private string senha;
    private string cpf;
    private string rg;
    private string telefone;
    private string celular;
    private string sexo;
    private string dtNascimento;
    private string cep;
    private string estado;
    private string cidade;
    private string endereco;
    private string bairro;
    private string complemento;
    private int pagaPremium;
    private TipoUsuario idTipoUsuario;
    private int ativo;

    public int Ativo
    {
        get { return ativo; }
        set { ativo = value; }
    }

    public global::TipoUsuario IdTipoUsuario
    {
        get { return idTipoUsuario; }
        set { idTipoUsuario = value; }
    }


    public int PagaPremium
    {
        get { return pagaPremium; }
        set { pagaPremium = value; }
    }

    public string Complemento
    {
        get { return complemento; }
        set { complemento = value; }
    }

    public string Bairro
    {
        get { return bairro; }
        set { bairro = value; }
    }

    public string Endereco
    {
        get { return endereco; }
        set { endereco = value; }
    }

    public string Cidade
    {
        get { return cidade; }
        set { cidade = value; }
    }

    public string Estado
    {
        get { return estado; }
        set { estado = value; }
    }

    public string Cep
    {
        get { return cep; }
        set { cep = value; }
    }

    public string DtNascimento
    {
        get { return dtNascimento; }
        set { dtNascimento = value; }
    }

    public string Sexo
    {
        get { return sexo; }
        set { sexo = value; }
    }

    public string Celular
    {
        get { return celular; }
        set { celular = value; }
    }

    public string Telefone
    {
        get { return telefone; }
        set { telefone = value; }
    }

    public string Rg
    {
        get { return rg; }
        set { rg = value; }
    }

    public string Cpf
    {
        get { return cpf; }
        set { cpf = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string Senha
    {
        get { return senha; }
        set { senha = value; }
    }

    public string Nome
    {
        get { return nome; }
        set { nome = value; }
    }


    public int Id
    {
        get { return id; }
        set { id = value; }
    }
}