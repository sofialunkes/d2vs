INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`, `USU_MEDIA`, `USU_QNT_AVS`) 
VALUES ('Autonomo', 'Autonomo','aut@aut.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'm', '1', '1990-01-01', '1', '1', '1', '1', '1', '1', 's', 'n', '1', '1', 0, 0);

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `CID_CODIGO`, `TUS_CODIGO`) 
VALUES ('Cliente', 'Cliente', 'cli@cli.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', '1', '2');

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `CID_CODIGO`, `TUS_CODIGO`) 
VALUES ('Administrador', 'Administrador', 'adm@adm.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', '1', '3');

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`, `USU_MEDIA`, `USU_QNT_AVS`) 
VALUES ('Autonomo2', 'Autonomo2','aut2@aut2.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'm', '4', '1990-01-01', '1', '1', '1', '1', '1', '1', 's', 'n', '1', '1', 0, 0);

-- Clientes 

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_NUM_CASA`,`USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`) 
VALUES ('João', 'da Silva','joao@joao.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'm', '12345678901', '1990-01-01', '012981470555', '01231253534', 'Jardim do Vale', 'Rua dos Joões', '12500000', 'Casa', 's', '52', 'n', '4916', '2');

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_NUM_CASA`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`) 
VALUES ('Mariana', 'dos Reis','mariana@mariana.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'f', '12345678902', '1995-01-01', '012981470557', '01231253734', 'Nova Lorena', 'Rua das Marianas', '12563000', 'Casa', 's', '43', 'n', '5014', '2');

-- Autonomos

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_NUM_CASA`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`, `USU_MEDIA`, `USU_QNT_AVS`) 
VALUES ('Maria', 'Martins','maria@maria.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'f', '12345678904', '1985-01-01', '012981470547', '01231223734', 'Velha Lorena', 'Rua das Marias', '12563054', 'Apartamento', 's', '35A', 'n', '5014', '1', 0, 0);


INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_NUM_CASA`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`,`USU_MEDIA`, `USU_QNT_AVS`) 
VALUES ('Albertino', 'Sampaio','albertino@albertino.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'm', '12345678905', '1975-01-01', '012999470547', '01231223763', 'Nova Guará', 'Rua dos Alberts', '12843054', 'Casa', 's', '846', 'n', '4916', '1',0, 0);

INSERT INTO `d2vs`.`usu_usuario` (`USU_NOME`, `USU_SOBRENOME`, `USU_EMAIL`, `USU_SENHA`, `USU_SEXO`, `USU_CPF`, `USU_DT_NASCIMENTO`, `USU_CELULAR`, `USU_TELEFONE`, `USU_BAIRRO`, `USU_ENDERECO`, `USU_CEP`, `USU_COMPLEMENTO`, `USU_ATIVO`, `USU_NUM_CASA`, `USU_PAGA_PREMIUM`, `CID_CODIGO`, `TUS_CODIGO`,`USU_MEDIA`, `USU_QNT_AVS`) 
VALUES ('Felipe', 'Martins','felipe@felipe.com', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg==', 'm', '12345678906', '1995-01-01', '012981477633', '01236723734', 'Centro', 'Rua dos Felipes', '12563056', 'Casa', 's', '363', 'n', '4916', '1',0, 0);
