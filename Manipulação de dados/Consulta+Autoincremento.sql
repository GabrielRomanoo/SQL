

CREATE TABLE TAB_IDENTITY 
( ID INT IDENTITY (1,1) NOT NULL,
DESCRITOR VARCHAR(20) NULL)

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE X')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Y')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Z')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE W')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE A')

SELECT * FROM TAB_IDENTITY

DELETE FROM TAB_IDENTITY WHERE ID = 1

DROP TABLE TAB_IDENTITY

CREATE TABLE TAB_IDENTITY 
( ID INT IDENTITY (100,5) NOT NULL,
DESCRITOR VARCHAR(20) NULL)


-- para informar que um campo � identity de uma tabela j� existente no banco:

/*
V� ao menu do Microsoft SQL Server Management Studio: ferramentas -> op��es ...
Desmarque a op��o Evitar salvar altera��es que exijam recria��o de tabela localizada no item Designers;
V� na tabela que deseja alterar para IDENTITY`, clique com o bot�o direito do mouse e aparecer� a op��o Designer.
Altere para Sim na op��o (Is Identity) em Identity Specification.
*/
