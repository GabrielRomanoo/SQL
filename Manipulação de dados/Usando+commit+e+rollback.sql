
SELECT * FROM [VENDEDORES]

-- 1 passo
BEGIN TRANSACTION -- congela o estado

-- 2 passo
/* executa as altera��es abaixo */ 
UPDATE [VENDEDORES] SET [COMISS�O] = [COMISS�O] * 1.15

INSERT INTO [VENDEDORES] ([MATR�CULA], [NOME], [BAIRRO],[COMISS�O], [DATA ADMISS�O], [F�RIAS])
VALUES ('99999','Jo�o da Silva','Icara�',0.08,'2014-09-01',0)

-- 3 passo
ROLLBACK -- volta pro estado original
 -- ou
COMMIT -- confirma o estado

-- para cada begin transaction, temos apenas 1 rollback ou 1 commit

