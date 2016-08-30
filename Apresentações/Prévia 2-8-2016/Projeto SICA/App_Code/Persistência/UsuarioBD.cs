using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

public class UsuarioBD
{
    public static int Insert(Usuario usuario)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand comando;
            string sql = "insert into USUARIO(nome, email, senha, cpf, rg, telefone, celular,";
            sql += "sexo, dt_nascimento, cep, estado, cidade, endereco, bairro, complemento, paga_premium,";
            sql += "id_tipo_usuario, ativo) values(?nome, ?email, ?senha, ?cpf, ?rg, ?telefone, ?celular, ?sexo,";
            sql += "?dt_nascimento, ?cep, ?estado, ?cidade, ?endereco, ?bairro, ?complemento, ?paga_premium, ?id_tipo_usuario, ?ativo);";
            conexao = Mapped.Connection();
            comando = Mapped.Command(sql, conexao);
            comando.Parameters.Add(Mapped.Parameter("?nome", usuario.Nome));
            comando.Parameters.Add(Mapped.Parameter("?email", usuario.Email));
            comando.Parameters.Add(Mapped.Parameter("?senha", usuario.Senha));
            comando.Parameters.Add(Mapped.Parameter("?cpf", usuario.Cpf));
            comando.Parameters.Add(Mapped.Parameter("?rg", usuario.Rg));
            comando.Parameters.Add(Mapped.Parameter("?telefone", usuario.Telefone));
            comando.Parameters.Add(Mapped.Parameter("?celular", usuario.Celular));
            comando.Parameters.Add(Mapped.Parameter("?sexo", usuario.Sexo));
            comando.Parameters.Add(Mapped.Parameter("?dt_nascimento", usuario.DtNascimento));
            comando.Parameters.Add(Mapped.Parameter("?cep", usuario.Cep));
            comando.Parameters.Add(Mapped.Parameter("?estado", usuario.Estado));
            comando.Parameters.Add(Mapped.Parameter("?cidade", usuario.Cidade));
            comando.Parameters.Add(Mapped.Parameter("?endereco", usuario.Endereco));
            comando.Parameters.Add(Mapped.Parameter("?bairro", usuario.Bairro));
            comando.Parameters.Add(Mapped.Parameter("?complemento", usuario.Complemento));
            comando.Parameters.Add(Mapped.Parameter("?paga_premium", usuario.PagaPremium));
            comando.Parameters.Add(Mapped.Parameter("?id_tipo_usuario", usuario.IdTipoUsuario.Id));
            comando.Parameters.Add(Mapped.Parameter("?ativo", usuario.Ativo));
            comando.ExecuteNonQuery();
            conexao.Close();
            comando.Dispose();
            conexao.Dispose();
        }
        catch (Exception)
        {
            retorno = -2;
        }
        return retorno;
    }

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection conexao;
        IDbCommand comando;
        IDataAdapter objAdapter;
        string sql = "select * from USUARIO;";
        conexao = Mapped.Connection(); //abrir conexao
        comando = Mapped.Command(sql, conexao); //executar conexao
        objAdapter = Mapped.Adapter(comando);//Alimenta o DataSet
        objAdapter.Fill(ds);
        conexao.Close();
        conexao.Close();
        comando.Dispose();
        return ds;
    }

    public static DataSet SelectAdm()
    {
        DataSet ds = new DataSet();
        IDbConnection conexao;
        IDbCommand comando;
        IDataAdapter objAdapter;
        string sql = "SELECT NOME, EMAIL, ID_TIPO_USUARIO, ATIVO FROM USUARIO ;";
        conexao = Mapped.Connection(); //abrir conexao
        comando = Mapped.Command(sql, conexao); //executar conexao
        objAdapter = Mapped.Adapter(comando);//Alimenta o DataSet
        objAdapter.Fill(ds);
        conexao.Close();
        conexao.Close();
        comando.Dispose();
        return ds;
    }

    public static DataSet SelectCliente()
    {
        DataSet ds = new DataSet();
        IDbConnection conexao;
        IDbCommand comando;
        IDataAdapter objAdapter;
        string sql = "SELECT NOME, EMAIL, SENHA from usuario;";
        conexao = Mapped.Connection(); //abrir conexao
        comando = Mapped.Command(sql, conexao); //executar conexao
        objAdapter = Mapped.Adapter(comando);//Alimenta o DataSet
        objAdapter.Fill(ds);
        conexao.Close();
        conexao.Close();
        comando.Dispose();
        return ds;
    }

    public static DataSet SelectId(int id)
    {
        DataSet ds = new DataSet(); 
        IDbConnection objConnection; 
        IDbCommand objCommand; 
        string sql = "select * from usuario where id = ?id;";
        IDataAdapter objDataAdapter; 
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);
        objCommand.Parameters.Add(Mapped.Parameter("?id", id));
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds); 
        objConnection.Close();
        objCommand.Dispose(); 
        objConnection.Dispose();
        return ds;
    }

    public static int Delete(int id)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand comando;
            string sql = "delete from tip_tipoempresa where tip_id = ?id;";
            conexao = Mapped.Connection();
            comando = Mapped.Command(sql, conexao);
            //?id = parametrizado
            comando.Parameters.Add(Mapped.Parameter("?id", id));
            comando.ExecuteNonQuery();
            conexao.Close();
            comando.Dispose();
            conexao.Dispose();
        }
        catch (Exception)
        {
            retorno = -2;
        }
        return retorno;
    }

    public static int Update(Usuario usuario)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao; // Abre a conexao 
            IDbCommand objCommand;// Cria o comando
            string sql = "UPDATE usuario SET nome = ?nome, email = ?email, senha = ?senha WHERE id = ?id";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", usuario.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?email", usuario.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?senha", usuario.Senha));
            objCommand.Parameters.Add(Mapped.Parameter("?id", usuario.Id));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno;
    }
}