DROP DATABASE d2vs;
CREATE SCHEMA IF NOT EXISTS D2VS DEFAULT CHARACTER SET utf8;
USE D2VS;

CREATE TABLE IF NOT EXISTS ATU_ATUACAO(
  ATU_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ATU_AREA VARCHAR(70) NOT NULL);

CREATE TABLE IF NOT EXISTS PRO_PROFISSAO(
  PRO_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  PRO_NOME VARCHAR(45) NULL,
  ATU_CODIGO INT NOT NULL,
  FOREIGN KEY (ATU_CODIGO) REFERENCES ATU_ATUACAO (ATU_CODIGO));

CREATE TABLE IF NOT EXISTS TUS_TIPO_USUARIO(
  TUS_CODIGO INT NOT NULL PRIMARY KEY,
  TUS_DESCRICAO_TIPO VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS EST_ESTADO(
  EST_CODIGO INT NOT NULL PRIMARY KEY,
  EST_NOME VARCHAR(45) NOT NULL,
  EST_UF VARCHAR(2) NOT NULL);

CREATE TABLE IF NOT EXISTS CID_CIDADE(
  CID_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CID_NOME VARCHAR(80) NOT NULL,
  CID_IBGE VARCHAR(45),
  EST_CODIGO INT NOT NULL,
  FOREIGN KEY (EST_CODIGO) REFERENCES EST_ESTADO (EST_CODIGO));

CREATE TABLE IF NOT EXISTS USU_USUARIO (
  USU_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  USU_NOME VARCHAR(50) NULL,
  USU_SOBRENOME VARCHAR(150) NULL,
  USU_EMAIL VARCHAR(100) NOT NULL UNIQUE,
  USU_SENHA TEXT NOT NULL,
  USU_SEXO ENUM('F', 'M') NULL,
  USU_CPF VARCHAR(14) NULL UNIQUE,
  USU_DT_NASCIMENTO DATE NULL,
  USU_CELULAR VARCHAR(12) NULL,
  USU_TELEFONE VARCHAR(12) NULL,
  USU_BAIRRO VARCHAR(45) NULL,
  USU_ENDERECO VARCHAR(45) NULL,
  USU_NUM_CASA VARCHAR(10) NULL,
  USU_CEP VARCHAR(9) NULL,
  USU_COMPLEMENTO VARCHAR(45) NULL,
  USU_ATIVO ENUM('S', 'N') NOT NULL,
  USU_PAGA_PREMIUM ENUM('S', 'N') NOT NULL,
  USU_MEDIA DOUBLE NULL,
  USU_QNT_AVS INT NULL,
  TUS_CODIGO INT NOT NULL,
  CID_CODIGO INT NOT NULL,
  FOREIGN KEY (TUS_CODIGO) REFERENCES TUS_TIPO_USUARIO (TUS_CODIGO),
  FOREIGN KEY (CID_CODIGO) REFERENCES CID_CIDADE (CID_CODIGO));

CREATE TABLE IF NOT EXISTS USP_USUARIO_PROFISSAO(
  PRO_CODIGO INT NOT NULL,
  USU_CODIGO INT NOT NULL,
  USP_DESCRICAO VARCHAR(200) NULL,
  PRIMARY KEY (PRO_CODIGO, USU_CODIGO), 
  FOREIGN KEY (PRO_CODIGO) REFERENCES PRO_PROFISSAO (PRO_CODIGO),
  FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO(USU_CODIGO));

CREATE TABLE IF NOT EXISTS ESP_ESPECIALIDADE(
  ESP_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ESP_NOME VARCHAR(50) NOT NULL,
  USU_CODIGO INT NOT NULL,
  PRO_CODIGO INT NOT NULL,  
  FOREIGN KEY (PRO_CODIGO) REFERENCES PRO_PROFISSAO (PRO_CODIGO),
  FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO));

CREATE TABLE IF NOT EXISTS AGE_AGENDAMENTO (
  AGE_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  AGE_EVENTO VARCHAR(45) NULL,
  AGE_NOME_CLIENTE VARCHAR(45) NULL,
  AGE_HORARIO_FIM DATETIME NULL,
  AGE_HORARIO_INICIO DATETIME NULL,
  AGE_DESCRICAO VARCHAR(120) NULL,
  AGE_VALOR_SERVICO FLOAT NULL,
  AGE_VALOR_RECEBIDO FLOAT NULL,
  USU_CODIGO_CLIENTE INT NULL,
  FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO));

CREATE TABLE IF NOT EXISTS OCR_OCORRENCIA(
  OCR_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  OCR_DESCRICAO VARCHAR(80) NULL,
  USU_CODIGO_CLIENTE INT NOT NULL,
  USU_CODIGO_AUTONOMO INT NOT NULL,
  FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES USU_USUARIO (USU_CODIGO));


CREATE TABLE IF NOT EXISTS MOT_MOTIVO (
  MOT_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  MOT_DESCRICAO VARCHAR(200) NOT NULL,
  MOT_DATA_INATIVACAO DATE NOT NULL,  
  MOT_DATA_ATIVACAO DATE NULL,
  MOT_DESCRICAO_ATIVACAO VARCHAR(200) NULL,  
  USU_CODIGO INT NOT NULL,
  USU_CODIGO_ADMIN_DESATIV INT NOT NULL,  
  USU_CODIGO_ADMIN_ATIV INT NULL,
  FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (USU_CODIGO_ADMIN_DESATIV) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (USU_CODIGO_ADMIN_ATIV) REFERENCES USU_USUARIO (USU_CODIGO));

CREATE TABLE IF NOT EXISTS TMI_TIPO_MIDIA(
  TMI_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TMI_DESCRICAO VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS MUL_MULTIMIDIA(
  MUL_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  MUL_CAMINHO VARCHAR(200) NULL,
  MUL_DESCRICAO VARCHAR(200) NULL,  
  USU_CODIGO INT NOT NULL,  
  TMI_CODIGO INT NOT NULL,
  FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (TMI_CODIGO) REFERENCES TMI_TIPO_MIDIA (TMI_CODIGO));

CREATE TABLE IF NOT EXISTS FVR_FAVORITO (
  FVR_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FVR_DESCRICAO VARCHAR(200) NULL,
  USU_CODIGO_CLIENTE INT NOT NULL,
  USU_CODIGO_AUTONOMO INT NOT NULL,
  FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (USU_CODIGO_AUTONOMO)REFERENCES USU_USUARIO (USU_CODIGO));

CREATE TABLE IF NOT EXISTS LEI_LEILAO (
  LEI_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  LEI_NUMERO VARCHAR(12) NULL,
  LEI_TITULO VARCHAR(29) NOT NULL,
  LEI_DESCRICAO VARCHAR(250) NOT NULL,
  LEI_DT_HORA_INICIO DATETIME NOT NULL,
  LEI_DT_HORA_FIM DATETIME NOT NULL,
  LEI_DT_PREVISAO_FIM DATETIME NOT NULL,
  LEI_ENCERRADO ENUM('S','F','N')NOT NULL,
  ATU_CODIGO INT NOT NULL,
  USU_CODIGO INT NOT NULL,
  CID_CODIGO INT NOT NULL,
  FOREIGN KEY (ATU_CODIGO) REFERENCES ATU_ATUACAO (ATU_CODIGO),
  FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (CID_CODIGO) REFERENCES CID_CIDADE (CID_CODIGO));

CREATE TABLE IF NOT EXISTS AUL_AUTONOMO_LEILAO(
  AUL_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  AUL_VALOR DECIMAL(10,2) NOT NULL,
  AUL_DATA_LANCE DATETIME NOT NULL,
  AUL_DATA_FIM DATETIME NOT NULL,
  AUL_ID_ACEITO ENUM('N','S','E')NOT NULL, -- 'E' -> Quando o lance ainda nao foi aceito ou rejeitado
  LEI_CODIGO INT NOT NULL,
  USU_CODIGO_AUTONOMO INT NOT NULL,
  CONSTRAINT fk_usu FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES USU_USUARIO (USU_CODIGO),
  CONSTRAINT fk_lei FOREIGN KEY (LEI_CODIGO) REFERENCES LEI_LEILAO (LEI_CODIGO));
    
CREATE TABLE IF NOT EXISTS AVS_AVALIACAO_SERVICO (
  AVS_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  AVS_TITULO VARCHAR(29) NOT NULL,
  AVS_DESCRICAO VARCHAR(50) NOT NULL,
  AVS_PONTUACAO INT NULL,
  AVS_RECOMENDA ENUM('S','N') NOT NULL,
  AVS_DATA DATETIME NOT NULL,
  LEI_CODIGO INT NOT NULL,
  USU_CODIGO_CLIENTE INT NOT NULL,
  USU_CODIGO_AUTONOMO INT NOT NULL,
  FOREIGN KEY (LEI_CODIGO) REFERENCES LEI_LEILAO(LEI_CODIGO),
  FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO),
  FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES USU_USUARIO (USU_CODIGO));
  
  CREATE TABLE IF NOT EXISTS ALT_ALTERAR_SENHA (
    ALT_CODIGO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ALT_URL VARCHAR(50) NOT NULL,
    ALT_DATA DATETIME NOT NULL,
    ALT_MUDOU ENUM('S','N') NOT NULL,
    USU_CODIGO INT NOT NULL,
    FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO(USU_CODIGO));
  