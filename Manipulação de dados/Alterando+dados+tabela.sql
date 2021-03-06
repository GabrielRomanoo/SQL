SELECT * FROM PRODUTOS

UPDATE [PRODUTOS] SET [PRE�O LISTA] = 5
WHERE [C�DIGO] = '1040107'

UPDATE [PRODUTOS] SET [SABOR] = 'Laranja', [EMBALAGEM] = 'PET'
WHERE [C�DIGO] = '1040107'

SELECT * FROM PRODUTOS WHERE [SABOR] = 'Maracuj�'

UPDATE [PRODUTOS] SET [PRE�O LISTA] = [PRE�O LISTA] * 1.10
WHERE [SABOR] = 'Maracuj�'

SELECT * FROM PRODUTOS WHERE [SABOR] = 'Maracuj�'

-- Modifique o endere�o do cliente 19290992743 para R. Jorge Emilio 23, em Santo Amaro, S�o Paulo, SP, CEP 8833223.

SELECT * FROM CLIENTES WHERE CPF = '19290992743'

UPDATE [CLIENTES] SET ENDERE�O = 'R. Jorge Emilio 23', BAIRRO = 'Santo Amaro', CIDADE = 'S�o Paulo', ESTADO = 'SP', CEP = '8833223'
WHERE CPF = '19290992743'

-- Altere o volume de compra em 20% dos clientes do estado do Rio de Janeiro.

SELECT * FROM CLIENTES WHERE ESTADO = 'RJ'

UPDATE CLIENTES SET [VOLUME DE COMPRA] = [VOLUME DE COMPRA] * 1.20 
WHERE ESTADO = 'RJ'

