CREATE DATABASE bd_titulos;
GO
USE bd_titulos;
GO

CREATE TABLE tblUsuarios
(
	codigo INT PRIMARY KEY IDENTITY(10,1),
	loginUsuario VARCHAR(50) NOT NULL,
	senhaUsuario VARCHAR(20) NOT NULL
);

CREATE TABLE tblJogadores
(
	codigo INT PRIMARY KEY IDENTITY(10,1),
	nomeJogador VARCHAR(50) NOT NULL,
	quantidadeTitulos VARCHAR(50) NOT NULL 
);

BULK
INSERT tblUsuarios
FROM 'D:\DD\usuarios.txt'
WITH
(FIRSTROW = 2,
FIELDTERMINATOR = ';',
ROWTERMINATOR = '\n',
CODEPAGE = '1252')

BULK
INSERT tblJogadores
FROM 'D:\DD\jogadores.txt'
WITH
(FIRSTROW = 2,
FIELDTERMINATOR = ';',
ROWTERMINATOR = '\n',
CODEPAGE = '1252')

SELECT * FROM tblJogadores
select * from tblUsuarios

