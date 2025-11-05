CREATE DATABASE LOJATECH;
USE LOJATECH;
CREATE TABLE Venda (
 VendaID INT PRIMARY KEY AUTO_INCREMENT,
 DataPedido DATE NOT NULL,
 StatusPedido ENUM('ABERTO','PAGO','CANCELADO') NOT NULL,
 Cidade VARCHAR(80) NOT NULL,
 UF CHAR(2) NOT NULL,
 ClienteID INT NOT NULL,
 NomeCliente VARCHAR(120) NOT NULL,
 Categoria VARCHAR(80) NOT NULL,
 Produto VARCHAR(120) NOT NULL,
 Quantidade INT NOT NULL,
 PrecoUnitario DECIMAL(10,2) NOT NULL,
 ValorPago DECIMAL(10,2) NULL -- preenche quando PAGO; NULL em aberto/cancelado
);
INSERT INTO Venda (DataPedido,StatusPedido,Cidade,UF,ClienteID,NomeCliente,Categoria,Produto,Quantidade,PrecoUnitario,ValorPago) VALUES
('2025-10-01','PAGO','Vassouras','RJ',1,'Ana Souza','Periféricos','Teclado Mecânico',1,320.00,800.00),
('2025-10-01','PAGO','Vassouras','RJ',1,'Ana Souza','Hardware','SSD 1TB',1,480.00,800.00),
('2025-10-20','CANCELADO','Barra do Piraí','RJ',2,'Bruno Lima','Acessórios','Suporte Notebook',1,120.00,NULL),
('2025-10-22','CANCELADO','Valença','RJ',6,'Luiz Lima','Acessórios','mousepad',1,99.00,NULL),
('2025-10-25','PAGO','Volta Redonda','RJ',3,'Carla Mendes','Acessórios','Suporte Notebook',1,120.00,120.00),
('2025-10-28','PAGO','Vassouras','RJ',4,'Diego Alves','Hardware','Memória 16GB',2,390.00,2430.00),
('2025-10-28','PAGO','Vassouras','RJ',4,'Diego Alves','Monitores','Monitor 27\" 144Hz',1,1650.00,2430.00),
('2025-10-30','PAGO','Piraí','RJ',5,'Elaine Reis','Monitores','Monitor 27\" 144Hz',1,1650.00,1650.00),
('2025-10-15','ABERTO','Vassouras','RJ',1,'Ana Souza','Periféricos','Mouse Gamer',2,150.00,NULL),
('2025-10-10','ABERTO','Vassouras','RJ',7,'Alberto Luiz','Hardware','Placa Mãe Asus',2,450.00,NULL);

SELECT Cidade, UF, SUM(ValorPago) AS FaturaCidade FROM Venda Where StatusPedido = 'PAGO' GROUP BY Cidade, UF ORDER BY FaturaCidade DESC;

SELECT ClienteID, NomeCliente, AVG(ValorPago) AS TicketMedio FROM Venda WHERE StatusPedido = 'PAGO' GROUP BY ClienteID, NomeCliente ORDER BY TicketMedio DESC; -- Tiketr medio por cliente

SELECT Categoria, SUM(ValorPago) AS ValorTotal FROM Venda  GROUP BY Categoria ORDER BY ValorTotal DESC LIMIT 3;

SELECT Produto, Quantidade FROM Venda Group By Produto, Quantidade ORDER BY Quantidade DESC;

SELECT NomeCliente, StatusPedido FROM Venda Where StatusPedido = 'Aberto';

SELECT NomeCliente, Categoria FROM Venda Where StatusPedido = 'PAGO' and Categoria = 'Monitores';

