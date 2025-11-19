CREATE DATABASE lojaRoupas;
USE lojaRoupas;

CREATE TABLE Produtos (
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  categoria ENUM('Camisa', 'Calça', 'Vestido', 'Acessório') NOT NULL,
  tamanho ENUM('PP', 'P', 'M', 'G', 'GG') NOT NULL,
  cor VARCHAR(20) NOT NULL,
  preco_venda DECIMAL(10,2) NOT NULL,
  quantidade_estoque INT NOT NULL,
  PRIMARY KEY (id_produto)
);

CREATE TABLE clientes (
  CPF CHAR(11) PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  telefone CHAR(11) NOT NULL,
  email VARCHAR(120) NOT NULL,
  dataCadastro DATE NOT NULL
);

CREATE TABLE Vendas (
  idVendas INT NOT NULL AUTO_INCREMENT,
  data_hora DATETIME NOT NULL,
  CPF CHAR(11) NOT NULL,
  formaPagamento ENUM('Dinheiro', 'Cartão Débito', 'Cartão Crédito', 'PIX') NOT NULL,
  vendedor VARCHAR(120) NOT NULL,
  PRIMARY KEY (idVendas),
  FOREIGN KEY (CPF) REFERENCES clientes(CPF)
);


CREATE TABLE ItensVenda (
  idItensVenda INT NOT NULL AUTO_INCREMENT,
  idVendas INT NOT NULL,
  id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  preco_unitario DECIMAL(10,2) NOT NULL,
  subtotal_item DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (idItensVenda),
  FOREIGN KEY (idVendas) REFERENCES Vendas(idVendas),
  FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);


INSERT INTO clientes (CPF, nome, telefone, email, dataCadastro) VALUES
('12333333333','João da Silva', '11111111111', 'joao@gmail.com', '2024-02-24'),
('84736762393','Camila de Souza', '89992299222', 'camila@gmail.com', '2023-10-20'),
('34587637263','Carlo Gomes', '79992299222', 'carlo@gmail.com', '2022-09-09'),
('44587637263','James da Silva', '69992299222', 'james@gmail.com', '2022-07-10'),
('54587637263','Nicole da Costa', '59992299222', 'nicole@gmail.com', '2022-05-11'),
('64587637263','Laura da Silva Costa', '49992299222', 'laura@gmail.com', '2024-08-12'),
('74587637263','Julia da Silva Carlo', '39992299222', 'julia@gmail.com', '2024-01-13'),
('84587637263','Davi da Silva Branco', '29992299222', 'davi@gmail.com', '2024-04-24');


INSERT INTO Produtos (nome, categoria, tamanho, cor, preco_venda, quantidade_estoque) VALUES
('Blusa', 'Camisa', 'M', 'Preto', 35.00, 30),
('Pulseira', 'Acessório', 'P', 'Prata', 15.00, 40),
('Calça', 'Calça', 'G', 'Preto', 80.00, 20),
('Vestido', 'Vestido', 'M', 'Azul', 70.00, 18),
('Blusa cargo', 'Camisa', 'P', 'Branco', 25.00, 25),
('Cinto', 'Acessório', 'M', 'Marrom', 20.00, 50),
('Calça', 'Calça', 'M', 'Azul Claro', 95.00, 22),
('Vestido', 'Vestido', 'G', 'Vermelho', 110.00, 12),
('Brinco', 'Acessório', 'P', 'Dourado', 10.00, 60),
('Moletom','Camisa', 'G', 'Verde', 50.00, 20);


INSERT INTO Vendas (data_hora, CPF, formaPagamento, vendedor) VALUES
('2025-01-10 14:32:00', '12333333333', 'Dinheiro', 'João Pereira'),
('2025-01-10 15:10:20', '44587637263', 'Cartão Crédito', 'Maria Fernandes'),
('2025-01-11 09:45:00', '84587637263', 'PIX', 'Carlos Eduardo'),
('2025-01-11 12:30:40', '74587637263', 'Cartão Débito', 'Ana Beatriz'),
('2025-01-12 18:05:10', '12333333333', 'Dinheiro', 'Rafaela Santos');

SELECT * FROM Vendas;


