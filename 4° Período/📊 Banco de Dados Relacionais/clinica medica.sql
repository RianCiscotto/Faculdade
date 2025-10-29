CREATE DATABASE ClinicaMedica;
USE ClinicaMedica;
CREATE TABLE Paciente (
	CPF varchar(11) PRIMARY KEY NOT NULL,
    nomeCompleto varchar(160) NOT NULL,
    dataNascimento DATE NOT NULL,
    planoDeSaude varchar(60) Default 'Particular'
);
drop table Paciente;
drop table Atendimentos;
CREATE TABLE Atendimentos (
	CPF_Paciente char(11), 
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    dataAtendimento DATE NOT NULL,
    tipoAtendimento ENUM('Consulta', 'Exame', 'Retorno'),
    medicoResponsavel varchar(160) NOT NULL,
    FOREIGN KEY (CPF_Paciente) REFERENCES Paciente(CPF)
);
INSERT INTO Paciente (CPF, nomeCompleto, dataNascimento, planoDeSaude) VALUES 
('51381542069', 'Gabriel da Silva Ferreira', '2005-10-12', 'Amil'),
('69805933075', 'Amanda da Silva Gomes', '2006-10-12', 'Amil'),
('21750674084', 'Diego Ferraz', '2007-11-02', 'Unimed'),
('67729261022', 'Nicole de Souza Carlos', '2002-10-04', 'ASSIM Saúde'),
('90184708052', 'Joana Guilhermo da Silva', '2001-09-05', 'ASSIM');

INSERT INTO Paciente (CPF, nomeCompleto, dataNascimento) VALUES
('13311542069', 'Geovana da Silva Ferreira', '2005-10-12');

INSERT INTO Atendimentos (CPF_Paciente, dataAtendimento, tipoAtendimento, medicoResponsavel) VALUES
('51381542069','2025-11-02','Consulta','Samara da Silva'),
('69805933075','2025-11-02','Retorno','Diego Juliano'),
('21750674084','2025-11-02','Consulta','Samara da Silva'),
('67729261022','2025-11-03','Exame','Edson de Souza'),
('90184708052','2025-11-03','Exame','Samara da Silva');

select * from Paciente;
select * from Atendimentos;

update Paciente 
SET nomeCompleto = 'Diego da Silva Ferraz' 
WHERE CPF = '21750674084';

DELETE FROM Atendimentos 
WHERE CPF_Paciente = '90184708052';





