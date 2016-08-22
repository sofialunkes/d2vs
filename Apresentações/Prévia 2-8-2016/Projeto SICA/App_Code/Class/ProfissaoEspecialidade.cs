using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ProfissaoEspecialidade
{
    private Profissao idProfissao;

    public Profissao IdProfissao
    {
        get { return idProfissao; }
        set { idProfissao = value; }
    }
    private Especialidade idEspecialidade;

    public Especialidade IdEspecialidade
    {
        get { return idEspecialidade; }
        set { idEspecialidade = value; }
    }
}