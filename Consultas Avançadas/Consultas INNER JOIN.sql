-- O INNER JOIN transforma 2 tabelas em 1, atraves de 2 campos em comum
/*  
SINTAXE:

SELECT [o que desejamos mostrar na consulta] FROM
[tabela 1] INNER JOIN [tabela 2] <- fazemos a ligação
ON [tabela 1].campo = [tabela2].campo <- dizemos o que é igual nas duas tabelas
*/  

SELECT * FROM [TABELA DE VENDEDORES]

SELECT * FROM [NOTAS FISCAIS]

SELECT * FROM 
[TABELA DE VENDEDORES] INNER JOIN [NOTAS FISCAIS] 
ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA 

SELECT * FROM 
[TABELA DE VENDEDORES] A INNER JOIN [NOTAS FISCAIS] B -- usando ALIAS
ON A.MATRICULA = B.MATRICULA 

SELECT A.NOME, B.DATA FROM 
[TABELA DE VENDEDORES] A INNER JOIN [NOTAS FISCAIS] B -- usando ALIAS
ON A.MATRICULA = B.MATRICULA 

SELECT * FROM 
[TABELA DE VENDEDORES] A INNER JOIN [NOTAS FISCAIS] B 
ON A.MATRICULA = B.MATRICULA

SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], COUNT(*) AS [QTD TOTAL NOTAS FISCAIS] FROM 
[TABELA DE VENDEDORES] INNER JOIN [NOTAS FISCAIS] 
ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME]

SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA) AS ANO, COUNT(*) AS [QTD NOTAS FISCAIS/ANO] FROM 
[TABELA DE VENDEDORES] INNER JOIN [NOTAS FISCAIS] 
ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA)

SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA), COUNT(*) FROM 
[TABELA DE VENDEDORES] INNER JOIN [NOTAS FISCAIS] 
ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA)
ORDER BY YEAR(DATA)

SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA), COUNT(*) FROM 
[TABELA DE VENDEDORES] INNER JOIN [NOTAS FISCAIS] 
ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA)
ORDER BY YEAR(DATA), [TABELA DE VENDEDORES].[NOME]

SELECT * FROM 
[TABELA DE VENDEDORES] INNER JOIN [NOTAS FISCAIS] 
ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA

-- O codigo abaixo faz a mesma coisa que o INNER JOIN, porém, com uma performance pior
SELECT * FROM [TABELA DE VENDEDORES], [NOTAS FISCAIS]
WHERE [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA

-- Obtenha o faturamento anual da empresa. 
-- Leve em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço.

SELECT * FROM [NOTAS FISCAIS]

SELECT * FROM [ITENS NOTAS FISCAIS]

-- FATURAMENTO TOTAL
SELECT SUM([ITENS NOTAS FISCAIS].QUANTIDADE * [ITENS NOTAS FISCAIS].PREÇO) FROM 
[NOTAS FISCAIS] INNER JOIN [ITENS NOTAS FISCAIS]
ON [NOTAS FISCAIS].NUMERO = [ITENS NOTAS FISCAIS].NUMERO

-- FATURAMENTO POR ANO
SELECT YEAR([NOTAS FISCAIS].DATA), SUM([ITENS NOTAS FISCAIS].QUANTIDADE * [ITENS NOTAS FISCAIS].PREÇO) FROM 
[NOTAS FISCAIS] INNER JOIN [ITENS NOTAS FISCAIS]
ON [NOTAS FISCAIS].NUMERO = [ITENS NOTAS FISCAIS].NUMERO
GROUP BY YEAR([NOTAS FISCAIS].DATA)

-- COM ALIAS
SELECT YEAR(NF.DATA) AS ANO, SUM(INF.QUANTIDADE * INF.PREÇO) AS FATURAMENTO FROM 
[NOTAS FISCAIS] NF INNER JOIN [ITENS NOTAS FISCAIS] INF
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(NF.DATA)

-- SIMPLIFICADO 
SELECT YEAR(DATA) AS ANO, SUM (QUANTIDADE * [PREÇO]) AS FATURAMENTO
FROM [NOTAS FISCAIS] NF INNER JOIN [ITENS NOTAS FISCAIS] INF 
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA)

/*
Sobre o ultimo codigo acima

Nesse caso não é preciso identificar de qual tabela é cada campo, 
como por exemplo [NOTAS FISCAIS].DATA, [ITENS NOTAS FISCAIS].QUANTIDADE, [ITENS NOTAS FISCAIS].PRECO, 
isso porque ambas as tabelas não têm campos em comum ou iguais. 

A não ser o campo "NUMERO" que usamos para fazer o JOIN. 

Quando fazemos da forma simplificada, os campos retornados serão: 
CPF, MATRICULA, DATA, NUMERO, IMPOSTO, NUMERO, [CODIGO DO PRODUTO], QUANTIDADE, [PREÇO]. 

Ou seja o único campo igual é o campo NUMERO e portanto só aparece uma vez no resultado.
*/


