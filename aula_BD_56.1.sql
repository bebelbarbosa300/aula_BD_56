#criacao do banco de dados 
CREATE DATABASE empresa_xpto;

#ativacao do banco de dados 
USE empresa_xpto;

#criacao da tabela
CREATE TABLE departamentos (
 id int,
nome varchar(60),
primary key (id)

);

#inserir valores na tabela 
INSERT INTO departamentos values(00, "Financeiro" );

INSERT INTO departamentos values(2, "vndas" );

INSERT INTO departamentos values(3, "desenvolvimentos de produtos" );

INSERT INTO departamentos values(4, "ti" );

INSERT INTO departamentos values(5, "juridico" );

INSERT INTO departamentos values(6, "qualidade" );

INSERT INTO departamentos values(7, "adiministrcao" );

INSERT INTO departamentos values(8, "atendimento ao cliente" );

INSERT INTO departamentos values(9, "recursos humanos" );

INSERT INTO departamentos values(10, "marketing" );

INSERT INTO departamentos values(11, "producao" );

INSERT INTO departamentos values(12, "executivo" );

INSERT INTO departamentos values(13, "gerente finaceiro" );

INSERT INTO departamentos values(14, "gerente de marketing" );

INSERT INTO departamentos values(15, "gerente de producao" );

#alterar a tabela
#adicionar a coluna tabela id_departamento como chave estrangeira
#fazendo refencia a tabela departamentos 
ALTER TABLE funcionarios
ADD COLUMN id_departamento INT,
ADD CONSTRAINT fk_funcionario_departamento
FOREIGN KEY (id_departamento) REFERENCES departamentos(id);

select * from FUNCIONARIOS ORDER BY SALARIO DESC;

#atualizar cadastro dos funcionarios 
UPDATE funcionarios
SET id_departamento = 1
where id = 1;

#atualizar o cadastro dos funcionarios para setor 2 de vendas 
UPDATE funcionarios 
SET id_departamento = 2
WHERE id = 3 or id = 4 or id = 5;

#atualizar o cadastro dos funcionarios para o setor 4 de ti
UPDATE funcionarios 
SET id_departamento = 4
WHERE id = 6 or id = 7 or id = 8 or id =9;

#atualizar o cadastro dos funcionarios para o setor 5 de juridicos 
UPDATE funcionarios 
SET id_departamento = 5
WHERE id = 10 or id = 11 or id = 12 or id =13;

#atualizar o cadastro dos funcionarios para o setor 9 de recursos humanos
UPDATE funcionarios 
SET id_departamento = 9
WHERE id = 14 or id = 15 or id = 16 or id = 17;

#atualizar o funcionario com o maior salario para departamento "executivo"
UPDATE funcionarios 
SET id_departamento = 12
WHERE id = 44;

#atualizar o funcionario com o segundo maior salario para departamento "gerente finamceiro"
UPDATE funcionarios 
SET id_departamento = 13
WHERE id = 13;

#atualizar o funcionario com o terceiro maior salario para departamento "gerente de producao"
UPDATE funcionarios 
SET id_departamento = 15
WHERE id = 642;

#atualizar o funcionario com o quarto maior salario para departamento "gerente de marketing"
UPDATE funcionarios 
SET id_departamento = 14
WHERE id = 462;
















