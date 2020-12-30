

SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]

SELECT BAIRRO FROM [TABELA DE VENDEDORES]

SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]
WHERE BAIRRO IN (SELECT BAIRRO FROM [TABELA DE VENDEDORES])

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRECO
FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM)
NOVA_CONSULTA -- alias
WHERE NOVA_CONSULTA.MAX_PRECO <= 5


--Qual seria a consulta, usando sub-consulta, que seria equivalente a:

SELECT CPF, COUNT(*) FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000


SELECT X.CPF, X.CONTADOR 
FROM ( 
	SELECT CPF, COUNT(*) AS CONTADOR FROM [NOTAS FISCAIS]
	WHERE YEAR(DATA) = 2016
	GROUP BY CPF
) X
WHERE X.CONTADOR > 2000
