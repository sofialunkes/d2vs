CREATE DATABASE D2VS DEFAULT CHARACTER SET utf8 ;
USE D2VS;

CREATE TABLE EST_ESTADO (
	EST_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	EST_NOME VARCHAR(45) NOT NULL);
	
INSERT INTO EST_ESTADO (EST_NOME) VALUES
("Brasil");

CREATE TABLE CID_CIDADE (
	CID_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	CID_NOME VARCHAR(80) NOT NULL,
	EST_CODIGO INT NOT NULL,
	FOREIGN KEY (EST_CODIGO) REFERENCES EST_ESTADO (EST_CODIGO));
	
INSERT INTO CID_CIDADE(CID_NOME,EST_CODIGO) VALUES ('Brasil', 1);	

CREATE TABLE TMI_TIPO_MIDIA (
	TMI_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	TMI_DESCRICAO VARCHAR(100) NOT NULL);

CREATE TABLE TUS_TIPO_USUARIO (
	TUS_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	TUS_DESCRICAO_TIPO VARCHAR(45) NOT NULL);

INSERT INTO TUS_TIPO_USUARIO VALUES
(1,'Autônomo'), 
(2,'Cliente'), 
(3,'Administrador');

CREATE TABLE USU_USUARIO (
	USU_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	USU_NOME VARCHAR(200) NOT NULL,
	USU_EMAIL VARCHAR(100) NOT NULL UNIQUE,
	USU_SENHA TEXT NOT NULL,
	USU_SEXO ENUM('F', 'M') NULL,
	USU_CPF VARCHAR(11) NULL UNIQUE,
	USU_RG VARCHAR(15) NULL UNIQUE,
	USU_DT_NASCIMENTO DATE NULL,
	USU_CELULAR VARCHAR(12) NULL,
	USU_TELEFONE VARCHAR(12) NULL,
	USU_BAIRRO VARCHAR(45) NULL,
	USU_ENDERECO VARCHAR(45) NULL,
	USU_NUM_CASA VARCHAR(10) NULL,
	USU_CEP VARCHAR(8) NULL,
	USU_COMPLEMENTO VARCHAR(45) NULL,	
	USU_ATIVO ENUM('S', 'N') NOT NULL,	
	USU_PAGA_PREMIUM ENUM('S', 'N') NOT NULL,	
	CID_CODIGO INT,
	TUS_CODIGO INT,
	FOREIGN KEY (TUS_CODIGO) REFERENCES TUS_TIPO_USUARIO (TUS_CODIGO),
	FOREIGN KEY (CID_CODIGO) REFERENCES CID_CIDADE (CID_CODIGO));
    
INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_RG`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`) VALUES 
('autonomo', 'aut@aut.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'm', '1', '1', '1990-01-01', '1', '1', '1', '1', '1', '1', 's', 'n', '1', '1');

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_EMAIL`, `USU_SENHA`, `CID_CODIGO`, `TUS_CODIGO`) 
VALUES ('cli', 'cli@cli.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', '1', '2');

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_EMAIL`, `USU_SENHA`, `CID_CODIGO`, `TUS_CODIGO`) 
VALUES ('adm', 'adm@adm.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', '1', '3');

CREATE TABLE MUL_MULTIMIDIA (
	MUL_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	MUL_CAMINHO VARCHAR(200) NULL,
	MUL_DESCRICAO VARCHAR(200) NULL,	
	USU_CODIGO INT NOT NULL,	
	TMI_CODIGO INT NOT NULL,
	FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO),
	FOREIGN KEY (TMI_CODIGO) REFERENCES TMI_TIPO_MIDIA (TMI_CODIGO));	
	
CREATE TABLE FVR_FAVORITO (
	FVR_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	FVR_DESCRICAO VARCHAR(200) NULL,
	USU_CODIGO_CLIENTE INT NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO),
	FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES USU_USUARIO (USU_CODIGO));
	
CREATE TABLE AVS_AVALIACAO_SERVICO (
	AVS_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	AVS_DESCRICAO VARCHAR(50) NOT NULL,
	AVS_PONTUACAO INT NULL,
	USU_CODIGO_CLIENTE INT NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO),
	FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES USU_USUARIO (USU_CODIGO));
	
CREATE TABLE OCR_OCORRENCIA (
	OCR_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	OCR_DESCRICAO VARCHAR(80) NULL,
	USU_CODIGO_CLIENTE INT NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,	
	FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO),
	FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES USU_USUARIO (USU_CODIGO));
	
CREATE TABLE MOT_MOTIVO (
	MOT_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
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
	
CREATE TABLE ESP_ESPECIALIDADE (
	ESP_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	ESP_NOME VARCHAR(50) NOT NULL);
	
CREATE TABLE ATU_ATUACAO (
	ATU_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	ATU_AREA VARCHAR(70) NOT NULL);
    
INSERT INTO atu_atuacao (atu_area) values
('Tecnologia da informação'),
('Educação'),
('Gastronomia');
	
CREATE TABLE PRO_PROFISSAO (
	PRO_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	PRO_NOME VARCHAR(45) NULL,
	ATU_CODIGO INT NOT NULL,
	FOREIGN KEY (ATU_CODIGO) REFERENCES ATU_ATUACAO (ATU_CODIGO));
    
INSERT INTO pro_profissao (pro_nome, atu_codigo) values 
('Professor de inglês',2),
('Garçom',3),
('Programador Web',1);
	
CREATE TABLE PES_PROFISSAO_ESPECIALIDADE (
	PRO_CODIGO INT NOT NULL,
	ESP_CODIGO INT NOT NULL,
	PRIMARY KEY (PRO_CODIGO, ESP_CODIGO),
	FOREIGN KEY (PRO_CODIGO) REFERENCES PRO_PROFISSAO (PRO_CODIGO),
	FOREIGN KEY (ESP_CODIGO) REFERENCES ESP_ESPECIALIDADE (ESP_CODIGO));
	
CREATE TABLE PEA_PROFISSAO_ESPECIALIDADE_AUTONOMO (	
	PRO_CODIGO INT NOT NULL,
	ESP_CODIGO INT NOT NULL,
	USU_CODIGO INT NOT NULL,	
	PEA_DESCRICAO_ESPECIALIDADE VARCHAR(200) NULL,
	PRIMARY KEY (PRO_CODIGO, ESP_CODIGO, USU_CODIGO),
	FOREIGN KEY (PRO_CODIGO , ESP_CODIGO) REFERENCES PES_PROFISSAO_ESPECIALIDADE (PRO_CODIGO , ESP_CODIGO),
	FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO));			
        
CREATE TABLE AGE_AGENDAMENTO (
	AGE_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	AGE_EVENTO VARCHAR(45) NULL,
	AGE_NOME_CLIENTE VARCHAR(45) NULL,
	AGE_HORARIO DATETIME NULL,
	AGE_DESCRICAO VARCHAR(120) NULL,
	AGE_VALOR_SERVICO FLOAT NULL,
	AGE_VALOR_RECEBIDO FLOAT NULL,
	PRO_CODIGO INT NOT NULL,
	ESP_CODIGO INT NOT NULL,
	USU_CODIGO INT NOT NULL,
	USU_CODIGO_CLIENTE INT NULL,
	FOREIGN KEY (PRO_CODIGO , ESP_CODIGO , USU_CODIGO) REFERENCES PEA_PROFISSAO_ESPECIALIDADE_AUTONOMO (PRO_CODIGO , ESP_CODIGO, USU_CODIGO),
	FOREIGN KEY (USU_CODIGO_CLIENTE) REFERENCES USU_USUARIO (USU_CODIGO));
	
CREATE TABLE LEI_LEILAO (
	LEI_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	LEI_NUMERO VARCHAR(12) NOT NULL,
	LEI_DT_HORA_INICIO DATE NOT NULL,
	LEI_DT_HORA_FIM DATE NULL,
	LEI_DT_PREVISAO_FIM DATE NOT NULL,
	USU_CODIGO INT NOT NULL,
	ESP_CODIGO INT NOT NULL,
    CID_CODIGO INT NOT NULL,
	FOREIGN KEY (USU_CODIGO) REFERENCES USU_USUARIO (USU_CODIGO),
	FOREIGN KEY (ESP_CODIGO) REFERENCES ESP_ESPECIALIDADE (ESP_CODIGO),
    FOREIGN KEY (CID_CODIGO) REFERENCES CID_CIDADE (CID_CODIGO));
	
CREATE TABLE AUL_AUTONOMO_LEILAO (
	AUL_CODIGO INT PRIMARY KEY AUTO_INCREMENT,
	AUL_VALOR DECIMAL(10,2) NOT NULL,
	AUL_DATA_HORA DATE NOT NULL,
	USU_CODIGO_AUTONOMO INT NOT NULL,
	AUL_ID_ACEITO ENUM('S', 'N') NULL,
	LEI_CODIGO INT NOT NULL,
	FOREIGN KEY (USU_CODIGO_AUTONOMO) REFERENCES D2VS.USU_USUARIO (USU_CODIGO),
	FOREIGN KEY (LEI_CODIGO) REFERENCES D2VS.LEI_LEILAO (LEI_CODIGO));
