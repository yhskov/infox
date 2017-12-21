-- O comando abaixo cria um banco de dados
create database dbinfox;

-- O comando abaixo escolhe o banco de dados a ser utilizado
use dbinfox;

-- O bloco de instruções abaixo cria uma tabela
create table usuarios(
	iduser int primary key,
    usuario varchar(50) not null,
    telefone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null
)engine = innodb;

-- O comando abaixo descreve a tabela
describe usuarios;
    
-- O comando abaixo insere dados na tabela
-- Create equivale ao Insert
insert into usuarios()
values (1, 'Administrador', '+5511999999999', 'admin', 'admin', 'Administrador');

-- O comando abaixo exibe os dados da tabela
-- Read equivale ao Select
select * from usuarios;
	
-- O comando abaixo modifica os dados na tabela
-- Update
-- update usuarios set perfil= 'Usuário' where iduser=1;
    
-- O comando abaixo apaga o registro da tabela
-- Delete
-- delete from usuarios where iduser = 1;
    
-- O comando abaixo adiciona mais uma coluna na tabela
alter table usuarios add column perfil varchar(20) not null;
    
-- O comando abaixo remove uma coluna da tabela
-- alter table usuarios drop column perfil;