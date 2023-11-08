CREATE DATABASE triggerAtv1;

USE triggerAtv1;

CREATE TABLE Produto(
	idProduto int auto_increment primary key,
    nomeProduto varchar(100) not null,
    dataValidade varchar(10) not null
);

DELIMITER //

CREATE trigger tg_validade_produto
before insert on 
Produto 
for each row
begin
	if new.dataValidade < '2023-11-08' then
		signal sqlstate '45000' set message_text = 'O Produto está vencido';
    end if;
END //

INSERT INTO Produto(nomeProduto,dataValidade)
VALUES('Pao Integral','2023-08-01');
INSERT INTO Produto(nomeProduto,dataValidade)
VALUES('Salame','2023-10-30');
INSERT INTO Produto(nomeProduto,dataValidade)
VALUES('Sanduiche Natural','2023-11-10');
INSERT INTO Produto(nomeProduto,dataValidade)
VALUES('Queijo Suino','2023-10-07');

SELECT * FROM Produto;

DROP DATABASE triggerAtv1;
