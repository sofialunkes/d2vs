INSERT INTO LEI_LEILAO (LEI_TITULO, LEI_DESCRICAO, LEI_DT_HORA_INICIO, LEI_DT_HORA_FIM, LEI_DT_PREVISAO_FIM, LEI_ENCERRADO,  ATU_CODIGO, USU_CODIGO, CID_CODIGO) VALUES
("Formatação de Notebook","Formatar e backup","2016-01-01 00:00:00","2016-01-01 00:00:00","2016-01-01 00:00:00","S",3,6,1),
("Garçom para festa","Festa infantil","2016-01-01 00:00:00","2016-01-01 00:00:00","2016-01-01 00:00:00","S",2,5,2),
("Garçom para formatura","Festa formatura de Graduação","2016-01-01 00:00:00","2016-01-01 00:00:00","2016-01-01 00:00:00","S",2,6,3),
("Professora de Ingês","Ensinar meu filho","2016-01-01 00:00:00","2016-01-01 00:00:00","2016-01-01 00:00:00","S",1,6,3);
   
   
INSERT INTO AVS_AVALIACAO_SERVICO (AVS_TITULO, AVS_DESCRICAO, AVS_PONTUACAO, AVS_RECOMENDA, AVS_DATA, LEI_CODIGO,USU_CODIGO_CLIENTE,USU_CODIGO_AUTONOMO) VALUES
("Muito bom o serviço","Profissional honesto, fez o combinado", 5, 'S', "2016-01-01 00:00:00", 4, 6, 8),
("Mais ou menos","Fez o seu trabalho, nada além disso", 3, 'S', "2016-01-01 00:00:00", 5, 5, 9),
("Precisa melhorar","Derrubou refrigerante em mim", 1, 'N', "2016-01-01 00:00:00", 6, 6, 9),
("Bom trabalho","Excelente professora, ensina cantando, perfeito!", 5, 'S', "2016-01-01 00:00:00", 7, 6, 7);