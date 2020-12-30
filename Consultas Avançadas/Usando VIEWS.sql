

SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]

SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]
WHERE BAIRRO IN (SELECT BAIRRO FROM [TABELA DE VENDEDORES])

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRECO
FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM)
NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRECO <= 5

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT * FROM [dbo].[VW_EMBALAGENS]

SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRECO
FROM VW_EMBALAGENS NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRECO <= 5

/*
 COMO CRIAR VIEWS

 Bot�o direito do mouse sobre "Exibi��es", depois clicar em "Nova Exibi��o". 
 Ele vai me mostrar as minhas tabelas existentes no meu banco de dados. 
 Eu posso, inclusive, ter outras Views, ou seja, eu posso montar Views de Views.

 Clique em "Fechar", ele vai mostrar essa caixa de di�logo e na minha caixa de di�logo original, 
 eu vou pegar o meu SELECT, que eu vou usar para criar a View.

 Vou voltar aqui na minha caixa de di�logo de cria��o da View e aqui embaixo vou col�-lo. 
 Eu posso, depois que eu fiz isso, eu posso clicar no bot�o de "Save" e vou dar um nome para essa View. 
*/



