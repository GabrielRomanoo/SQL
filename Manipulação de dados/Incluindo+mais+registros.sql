USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[PRODUTOS]
           ([C�DIGO]
           ,[DESCRITOR]
           ,[SABOR]
           ,[TAMANHO]
           ,[EMBALAGEM]
           ,[PRE�O LISTA])
     VALUES
           ('838820',
           ' Clean - 1,5 Litros - A�ai',
           'A�ai',
           '1,5 Litros',
           'PET',
          13),
			('838821',
           ' Clean - 1,5 Litros - Jaca',
           'Jaca',
           '1,5 Litros',
           'PET',
          13.5),
		  	('1040120',
           ' Light 350 ml - Tangerina',
           'Tangerina',
           '350 ml',
           'Lata',
          5.50)
GO


