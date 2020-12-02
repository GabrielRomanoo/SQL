DROP TABLE [TABELA DE VENDEDORES]

CREATE TABLE [TABELA DE VENDEDORES]
( [MATRICULA] varchar(5),
  [NOME] varchar(100),
  [PERCENTUAL COMISS�O] float,
  [DATA ADMISS�O] date,
  [DE FERIAS] bit)

ALTER TABLE [TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA]
VARCHAR(5) NOT NULL

ALTER TABLE [TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA])

INSERT INTO [dbo].[TABELA DE VENDEDORES]
           ([MATRICULA]
           ,[NOME]
           ,[PERCENTUAL COMISS�O]
           ,[DATA ADMISS�O]
           ,[DE FERIAS])
     VALUES
           ('00235'
           ,'M�rcio Almeida Silva'
           ,0.08
           ,'2014-08-15'
           ,0)

INSERT INTO [dbo].[TABELA DE VENDEDORES]
           ([MATRICULA]
           ,[NOME]
           ,[PERCENTUAL COMISS�O]
           ,[DATA ADMISS�O]
           ,[DE FERIAS])
     VALUES
           ('00236'
           ,'Cl�udia Morais'
           ,0.08
           ,'2013-09-17'
           ,1)

INSERT INTO [dbo].[TABELA DE VENDEDORES]
           ([MATRICULA]
           ,[NOME]
           ,[PERCENTUAL COMISS�O]
           ,[DATA ADMISS�O]
           ,[DE FERIAS])
     VALUES
           ('00237'
           ,'Roberta Martins'
           ,0.11
           ,'2017-03-18'
           ,1)

INSERT INTO [dbo].[TABELA DE VENDEDORES]
           ([MATRICULA]
           ,[NOME]
           ,[PERCENTUAL COMISS�O]
           ,[DATA ADMISS�O]
           ,[DE FERIAS])
     VALUES
           ('00238'
           ,'Pericles Alves'
           ,0.11
           ,'2016-08-21'
           ,0)