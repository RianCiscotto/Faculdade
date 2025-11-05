CREATE DATABASE EVENTOSACADEMICOS;
USE EVENTOSACADEMICOS;
CREATE TABLE InscricaoPresenca (
 InscricaoID INT PRIMARY KEY AUTO_INCREMENT,
 EventoTitulo VARCHAR(160) NOT NULL,
 AtividadeID INT NOT NULL,
 AtividadeTitulo VARCHAR(160) NOT NULL,
 Tipo ENUM('PALESTRA','MINICURSO','MESA','WORKSHOP') NOT NULL,
 DataHora DATETIME NOT NULL,
 ParticipanteNome VARCHAR(120) NOT NULL,
 StatusInscricao ENUM('INSCRITO','CONFIRMADO','CANCELADO') NOT NULL,
 Present TINYINT(1) NOT NULL DEFAULT 0
);
INSERT INTO InscricaoPresenca (EventoTitulo,AtividadeID,AtividadeTitulo,Tipo,DataHora,ParticipanteNome, StatusInscricao, Present) 
VALUES
('Semana da Computação 2025',1,'Arquitetura de Software','PALESTRA','2025-10-21 19:00:00','Alice Souza','CONFIRMADO',1),
('Semana da Computação 2025',4,'Mesa: Startups e Pesquisa','MESA','2025-11-05 19:00:00','Alice Souza','CONFIRMADO',1),
('Semana da Computação 2025',5,'Workshop: Pitch e Storytelling','WORKSHOP','2025-11-06 18:00:00','Alice Souza','CONFIRMADO',1),
('Semana da Computação 2025',1,'Arquitetura de Software','PALESTRA','2025-10-21 19:00:00','Bruno Dias','CONFIRMADO',1),
('Semana da Computação 2025',2,'Workshop Git e GitHub','WORKSHOP','2025-10-22 18:00:00','Alice Souza','INSCRITO',0),
('Semana da Computação 2025',2,'Workshop Git e GitHub','WORKSHOP','2025-10-22 18:00:00','Catarina Melo','CONFIRMADO',1),
('Jornada de Inovação',4,'Mesa: Startups e Pesquisa','MESA','2025-11-05 19:00:00','Daniel Lima','INSCRITO',0),
('Jornada de Inovação',5,'Workshop: Pitch e Storytelling','WORKSHOP','2025-11-06 18:00:00','Eva Rocha','CONFIRMADO',0),
('Mostra de Extensão',6,'Projetos de Extensão','PALESTRA','2025-12-01 19:00:00','Felipe Reis','CONFIRMADO',0),
('Semana da Computação 2025',1,'Arquitetura de Software','PALESTRA','2025-10-21 19:00:00','Elaine Reis','CONFIRMADO',1);

SELECT AtividadeTitulo, SUM(Present) AS TotalPresentes
FROM InscricaoPresenca
WHERE StatusInscricao = 'CONFIRMADO'
GROUP BY AtividadeTitulo
ORDER BY TotalPresentes DESC;


