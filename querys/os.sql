-- O bloco de instruções abaixo cria uma tabela
create table os(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    tipo varchar(20) not null,
    situacao varchar(30) not null,
    equipamento varchar(150) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idcliente int not null,
	foreign key(idcliente) references clientes(idcliente)
)engine = innodb;

-- O comando abaixo descreve a tabela
describe os;

-- O  comando abaixo insere dados na tabela
-- Create equivale ao Insert
insert into os (equipamento, defeito, servico, tecnico, valor, idcliente)
values ('equipamento', 'defeito', 'serviço', 'técnico', 00.00, 0);

-- O comando abaixo exibe os dados da tabela
-- Read equivale ao Select
select * from os;

-- O bloco de instruções abaixo faz a seleção e união de dados de duas tabelas
-- 'ordserv' é a variável que contém os campos desejados da tabela os
-- 'cliente' é a variável que contém os campos desejados da tabela clientes
select ordserv.os, data_os, tipo, situacao, equipamento, valor,
cliente.nome, telefone
from os as ordserv
inner join clientes as cliente
on (cliente.idcliente = ordserv.idcliente);