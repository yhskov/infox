-- O bloco de instruções abaixo cria uma tabela
create table clientes(
	idcliente int primary key auto_increment,
    nome varchar(50) not null,
    endereco varchar(100),
    telefone varchar (30) not null,
    email varchar(50)
)engine = innodb;

-- O comando abaixo insere dados na tabela
-- Create equivale ao Insert
insert into clientes()
values (default, 'nome', 'endereço', '+5511999999999', 'email@email.com');
    
-- O comando abaixo exibe os dados da tabela
-- Read equivale ao Select
select * from clientes;

-- O comando abaixo descreve a tabela
describe clientes;

-- O comando abaixo cria um apelido para os campos da tabela
select idcliente as ID, nome as Nome, telefone as Telefone from clientes where nome like 't%';usuarios