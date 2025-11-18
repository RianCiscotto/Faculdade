create database mercado;
use mercado;
create table funcionario(
    id_funcionario int primary key auto_increment,
	nome varchar(120) not null,
    idade int not null,
    cargo enum('repositor', 'caixa', 'administrador') not null
);

create table item(
    id_item int primary key auto_increment,
	nome varchar(60) not null,
    quantidade int not null,
    preco float not null
);

create table venda(
    id_venda int primary key auto_increment,
    id_funcionario int not null,
    id_item int not null,
    quantidade_vendida int not null,
    foreign key (id_funcionario) references funcionario(id_funcionario),
    foreign key (id_item) references item(id_item)
);


insert into funcionario (nome, idade, cargo) values
('Eduarda', 20, 'caixa'),
('Diego', 40, 'administrador'),
('João', 20, 'repositor');

insert into item (nome, quantidade, preco) values
('Banana', 30, 3.99),
('Jujuba', 40, 1.99),
('Pipoca', 20, 9.99);

insert into venda (id_funcionario, id_item, quantidade_vendida) values
(1, 1, 5),   -- Eduarda vendeu Banana
(1, 3, 2),   -- Eduarda vendeu Pipoca
(2, 2, 10),  -- Diego vendeu Jujuba
(3, 1, 3);   -- João vendeu Banana

-- Basicos
select nome, idade from funcionario;
select nome, preco from item;
select nome, cargo from funcionario where cargo = 'caixa';


-- LIKE
select nome from item where nome like 'B%';   -- itens que começam com B

-- GROUP BY       /          Total vendido por item
select item.nome, sum(venda.quantidade_vendida) as total_vendido from venda inner join item on
venda.id_item = item.id_item group by item.nome;

-- HAVING
select funcionario.nome, sum(venda.quantidade_vendida) as total
from venda
inner join funcionario on venda.id_funcionario = funcionario.id_funcionario
group by funcionario.nome
having sum(venda.quantidade_vendida) > 5;

-- ORDER BY           /   ordernar funcionario s pelo total vendido
select funcionario.nome, sum(venda.quantidade_vendida) as total
from venda
inner join funcionario on venda.id_funcionario = funcionario.id_funcionario
group by funcionario.nome
order by total desc;

-- LIMIT   /  os dois itens mais caros
select funcionario.nome from venda inner join funcionario on venda.id_funcionario = funcionario.id_funcionario;

