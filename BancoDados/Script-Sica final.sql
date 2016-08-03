CREATE DATABASE D2SV DEFAULT CHARACTER SET utf8 ;
USE D2SV;

CREATE TABLE IF NOT EXISTS D2SV.EST_ESTADO (
	EST_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	EST_NOME VARCHAR(45) NOT NULL
);
CREATE TABLE IF NOT EXISTS D2SV.CID_CIDADE (
	CID_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	CID_NOME VARCHAR(80) NOT NULL
);
CREATE TABLE IF NOT EXISTS D2SV.CES_CIDADE_ESTADO (
	EST_CODIGO INT NOT NULL,
	CID_CODIGO INT NOT NULL,
	PRIMARY KEY (EST_CODIGO, CID_CODIGO),
	INDEX fk_CIDADE_ESTADO_CIDADE1_idx (CID_CODIGO ASC),
	CONSTRAINT fk_CIDADE_ESTADO_ESTADO1		FOREIGN KEY (EST_CODIGO)		REFERENCES D2SV.EST_ESTADO (EST_CODIGO)
	CONSTRAINT fk_CIDADE_ESTADO_CIDADE1		FOREIGN KEY (CID_CODIGO)		REFERENCES D2SV.CID_CIDADE (CID_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.TMI_TIPO_MIDIA (
	TMI_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	TMI_DESCRICAO VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS D2SV.MUL_MULTIMIDIA (
	MUL_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	MUL_CAMINHO VARCHAR(200) NULL,
	USU_CODIGO INT NOT NULL,
	MUL_DESCRICAO VARCHAR(200) NULL,
	TMI_CODIGO INT NOT NULL,
	INDEX fk_multimidia_autonomo1_idx (USU_CODIGO ASC),
	INDEX fk_MULTIMIDIA_TIPO_MIDIA1_idx (TMI_CODIGO ASC),
	CONSTRAINT fk_multimidia_autonomo1		FOREIGN KEY (USU_CODIGO)		REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_MULTIMIDIA_TIPO_MIDIA1		FOREIGN KEY (TMI_CODIGO)		REFERENCES D2SV.TMI_TIPO_MIDIA (TMI_CODIGO)
);	
CREATE TABLE IF NOT EXISTS D2SV.TUS_TIPO_USUARIO (
	TUS_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	TUS_DESCRICAO_TIPO VARCHAR(45) NOT NULL
);
CREATE TABLE IF NOT EXISTS D2SV.USU_USUARIO (
	USU_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	USU_NOME VARCHAR(200) NULL,
	USU_EMAIL VARCHAR(100) NOT NULL,
	USU_SENHA VARCHAR(25) NOT NULL,
	USU_SEXO ENUM('F', 'M') NULL,
	USU_CPF VARCHAR(11) NULL,
	USU_RG VARCHAR(15) NULL,
	USU_DT_NASCIMENTO DATE NULL,
	USU_CELULAR VARCHAR(12) NULL,
	USU_TELEFONE VARCHAR(12) NULL,
	USU_BAIRRO VARCHAR(45) NULL,
	USU_ENDERECO VARCHAR(45) NULL,
	CID_CODIGO INT NOT NULL,
	EST_CODIGO INT NOT NULL,
	USU_CEP VARCHAR(8) NULL,
	USU_COMPLEMENTO VARCHAR(45) NULL,
	USU_ATIVO ENUM('S', 'N') NOT NULL,
	USU_PAGA_PREMIUM ENUM('S', 'N') NOT NULL,
	TUS_CODIGO INT NOT NULL,
	INDEX fk_usuario_tipo_usuario1_idx (TUS_CODIGO ASC),
	UNIQUE INDEX CPF_UNIQUE (USU_CPF ASC),
	INDEX fk_USUARIO_CIDADE_ESTADO1_idx (EST_CODIGO ASC, CID_CODIGO ASC),
	CONSTRAINT fk_usuario_tipo_usuario1		FOREIGN KEY (TUS_CODIGO)				REFERENCES D2SV.TUS_TIPO_USUARIO (TUS_CODIGO),
	CONSTRAINT fk_USUARIO_CIDADE_ESTADO1	FOREIGN KEY (EST_CODIGO , CID_CODIGO)	REFERENCES D2SV.CES_CIDADE_ESTADO (EST_CODIGO , CID_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.FVR_FAVORITO (
	FVR_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	FVR_DESCRICAO VARCHAR(200) NULL,
	USU_CODIGO_CLIENTE INT NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	INDEX fk_favoritos_usuario1_idx (USU_CODIGO_CLIENTE ASC),
	INDEX fk_favoritos_usuario2_idx (USU_CODIGO_AUTONOMO ASC),
	CONSTRAINT fk_favoritos_usuario1		FOREIGN KEY (USU_CODIGO_CLIENTE)		REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_favoritos_usuario2		FOREIGN KEY (USU_CODIGO_AUTONOMO)		REFERENCES D2SV.USU_USUARIO (USU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.AVS_AVALIACAO_SERVICO (
	AVS_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	AVS_DESCRICAO VARCHAR(50) NOT NULL,
	AVS_PONTUACAO INT NULL,
	USU_CODIGO_CLIENTE INT NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	INDEX fk_Avaliacao_de_Servico_usuario1_idx (USU_CODIGO_CLIENTE ASC),
	INDEX fk_Avaliacao_de_Servico_usuario2_idx (USU_CODIGO_AUTONOMO ASC),
	CONSTRAINT fk_Avaliacao_de_Servico_usuario1		FOREIGN KEY (USU_CODIGO_CLIENTE)		REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_Avaliacao_de_Servico_usuario2		FOREIGN KEY (USU_CODIGO_AUTONOMO)		REFERENCES D2SV.USU_USUARIO (USU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.OCR_OCORRENCIA (
	OCR_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	OCR_DESCRICAO VARCHAR(80) NULL,
	USU_CODIGO_CLIENTE INT NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	INDEX fk_Ocorrencia_usuario1_idx (USU_CODIGO_CLIENTE ASC),
	INDEX fk_Ocorrencia_usuario2_idx (USU_CODIGO_AUTONOMO ASC),
	CONSTRAINT fk_Ocorrencia_usuario1	FOREIGN KEY (USU_CODIGO_CLIENTE)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_Ocorrencia_usuario2 	FOREIGN KEY (USU_CODIGO_AUTONOMO)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.MOT_MOTIVO (
	MOT_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	MOT_DESCRICAO VARCHAR(200) NOT NULL,
	USU_CODIGO INT NOT NULL,
	USU_CODIGO_ADMIN_DESATIV INT NOT NULL,
	MOT_DATA_INATIVACAO DATE NOT NULL,
	USU_CODIGO_ADMIN_ATIV INT NULL,
	MOT_DATA_ATIVACAO DATE NULL,
	MOT_DESCRICAO_ATIVACAO VARCHAR(200) NULL,
	INDEX fk_Motivo_usuario1_idx (USU_CODIGO ASC),
	INDEX fk_Motivo_usuario2_idx (USU_CODIGO_ADMIN_DESATIV ASC),
	INDEX fk_Motivo_usuario3_idx (USU_CODIGO_ADMIN_ATIV ASC),
	CONSTRAINT fk_Motivo_usuario1	FOREIGN KEY (USU_CODIGO)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_Motivo_usuario2	FOREIGN KEY (USU_CODIGO_ADMIN_DESATIV)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_Motivo_usuario3	FOREIGN KEY (USU_CODIGO_ADMIN_ATIV)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.ESP_ESPECIALIDADE (
	ESP_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	ESP_NOME VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS D2SV.ATU_ATUACAO (
	ATU_CODIGO INT PRIMARY KEY,
	ATU_AREA VARCHAR(70) NOT NULL
);
CREATE TABLE IF NOT EXISTS D2SV.PRO_PROFISSAO (
	PRO_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	PRO_NOME VARCHAR(45) NULL,
	ATU_CODIGO INT NOT NULL,
	INDEX fk_profissao_atuacao1_idx (ATU_CODIGO ASC),
	CONSTRAINT fk_profissao_atuacao1	FOREIGN KEY (ATU_CODIGO)	REFERENCES D2SV.ATU_ATUACAO (ATU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.PES_PROFISSAO_ESPECIALIDADE (
	PRO_CODIGO INT NOT NULL,
	ESP_CODIGO INT NOT NULL,
	PRIMARY KEY (PRO_CODIGO, ESP_CODIGO),
	INDEX fk_profissao_has_especialidade_especialidade1_idx (ESP_CODIGO ASC),
	INDEX fk_profissao_has_especialidade_profissao1_idx (PRO_CODIGO ASC),
	CONSTRAINT fk_profissao_has_especialidade_profissao1	FOREIGN KEY (PRO_CODIGO)	REFERENCES D2SV.PRO_PROFISSAO (PRO_CODIGO),
	CONSTRAINT fk_profissao_has_especialidade_especialidade1	FOREIGN KEY (ESP_CODIGO)	REFERENCES D2SV.ESP_ESPECIALIDADE (ESP_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.PEA_PROFISSAO_ESPECIALIDADE_AUTONOMO (
	PES_CODIGO INT NOT NULL,
	PES_CODIGO INT NOT NULL,
	USU_CODIGO INT NOT NULL,
	PEA_DESCRICAO_ESPECIALIDADE VARCHAR(200) NULL,
	PRIMARY KEY (PES_CODIGO, PES_CODIGO, USU_CODIGO),
	INDEX fk_profissao_has_especialidade_has_autonomo_autonomo1_idx (USU_CODIGO ASC),
	INDEX fk_profissao_has_especialidade_has_autonomo_profissao_has_e_idx (PES_CODIGO ASC, PES_CODIGO ASC),
	CONSTRAINT fk_profissao_has_especialidade_has_autonomo_profissao_has_esp1	FOREIGN KEY (PES_CODIGO , PES_CODIGO)	REFERENCES D2SV.PES_PROFISSAO_ESPECIALIDADE (PRO_CODIGO , ESP_CODIGO),
	CONSTRAINT fk_profissao_has_especialidade_has_autonomo_autonomo1	FOREIGN KEY (USU_CODIGO)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.AGE_AGENDAMENTO (
	AGE_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	AGE_EVENTO VARCHAR(45) NULL,
	AGE_NOME_CLIENTE VARCHAR(45) NULL,
	AGE_HORARIO DATETIME NULL,
	AGE_DESCRICAO VARCHAR(120) NULL,
	AGE_VALOR_SERVICO FLOAT NULL,
	AGE_VALOR_RECEBIDO FLOAT NULL,
	PEA_CODIGO INT NOT NULL,
	PEA_ESPECIALIDADE INT NOT NULL,
	PEA_AUTONOMO INT NOT NULL,
	USU_CODIGO_CLIENTE INT NULL,
	INDEX fk_AGENDAMENTO_PROFISSAO_ESPECIALIDADE_AUTONOMO1_idx (PEA_CODIGO ASC, PEA_ESPECIALIDADE ASC, PEA_AUTONOMO ASC),
	INDEX fk_AGENDAMENTO_USUARIO1_idx (USU_CODIGO_CLIENTE ASC),
	CONSTRAINT fk_AGENDAMENTO_PROFISSAO_ESPECIALIDADE_AUTONOMO1	FOREIGN KEY (PEA_CODIGO , PEA_ESPECIALIDADE , PEA_AUTONOMO)	REFERENCES D2SV.PEA_PROFISSAO_ESPECIALIDADE_AUTONOMO (PES_CODIGO , PES_CODIGO , USU_CODIGO),
	CONSTRAINT fk_AGENDAMENTO_USUARIO1	FOREIGN KEY (USU_CODIGO_CLIENTE)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.LEI_LEILAO (
	LEI_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	LEI_NUMERO VARCHAR(12) NOT NULL,
	LEI_DT_HORA_INICIO DATE NOT NULL,
	LEI_DT_HORA_FIM DATE NULL,
	LEI_DT_PREVISAO_FIM DATE NOT NULL,
	USU_CODIGO INT NOT NULL,
	ESP_CODIGO INT NOT NULL,
	INDEX fk_LEI_LEILAO_USU_USUARIO2_idx (USU_CODIGO ASC),
	INDEX fk_LEI_LEILAO_ESP_ESPECIALIDADE1_idx (ESP_CODIGO ASC),
	CONSTRAINT fk_LEI_LEILAO_USU_USUARIO2		FOREIGN KEY (USU_CODIGO)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_LEI_LEILAO_ESP_ESPECIALIDADE1	FOREIGN KEY (ESP_CODIGO)	REFERENCES D2SV.ESP_ESPECIALIDADE (ESP_CODIGO)
);
CREATE TABLE IF NOT EXISTS D2SV.AUL_AUTONOMO_LEILAO (
	AUL_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	AUL_VALOR DECIMAL(10,2) NOT NULL,
	AUL_DATA_HORA DATE NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	AUL_ID_ACEITO ENUM('S', 'N') NULL,
	LEI_CODIGO INT NOT NULL,
	INDEX fk_AUL_AUTONOMO_LEILAO_USU_USUARIO1_idx (USU_CODIGO_AUTONOMO ASC),
	INDEX fk_AUL_AUTONOMO_LEILAO_LEI_LEILAO1_idx (LEI_CODIGO ASC),
	CONSTRAINT fk_AUL_AUTONOMO_LEILAO_USU_USUARIO1	FOREIGN KEY (USU_CODIGO_AUTONOMO)	REFERENCES D2SV.USU_USUARIO (USU_CODIGO),
	CONSTRAINT fk_AUL_AUTONOMO_LEILAO_LEI_LEILAO1	FOREIGN KEY (LEI_CODIGO)	REFERENCES D2SV.LEI_LEILAO (LEI_CODIGO)
);