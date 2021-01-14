
	 SELECT * from [PRODUTOS] WHERE SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes'

	 DELETE FROM [PRODUTOS] WHERE [C�DIGO] = '1001000'

	 SELECT * FROM [PRODUTOS]  WHERE [TAMANHO] = '1 Litro' AND SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes'

	 DELETE FROM [PRODUTOS] WHERE [TAMANHO] = '1 Litro' AND SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes'

	 SELECT [CODIGO DO PRODUTO] FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]

	 SELECT * FROM [PRODUTOS] WHERE [C�DIGO] NOT IN (SELECT [CODIGO DO PRODUTO] FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS])

	 DELETE FROM [PRODUTOS] WHERE [C�DIGO] NOT IN (SELECT [CODIGO DO PRODUTO] FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS])

-- NOT IN significa 'N�O CONTIDO', ou seja, a linha acima pega os codigos que est�o na tabela de produtos, mas n�o est�o na tabela fonte

-- Exclua as notas fiscais (apenas o cabe�alho) cujos clientes tenham menos que 18 anos.

SELECT * FROM NOTAS

SELECT * FROM CLIENTES

SELECT *  FROM clientes WHERE idade < 18;

SELECT * FROM NOTAS WHERE CPF = '95939180787'

INSERT INTO NOTAS VALUES ('900','2015-01-01','95939180787','237',0.1)

SELECT A.N�MERO FROM 
[NOTAS] A INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18

DELETE A FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18