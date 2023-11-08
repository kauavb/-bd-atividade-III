CREATE DATABASE ATIVIDADEVIEW5;

USE ATIVIDADEVIEW5;

CREATE TABLE Pedidos(
	idPedido int auto_increment primary key,
    nome varchar(155) not null,
    DataPedido varchar(10) not null,
    status varchar(10) not null
);

INSERT INTO Pedidos(nomeProduto,DataPedido,status)
VALUES('Remedio','06/07/2020','Pendente'),
('Uvas','19/11/2021','Entregue'),
('Mouse','25/03/2022','Pendente');

Create view vw_pedidos_pendentes AS
SELECT idPedido as 'ID',
		nome as 'Nome do Produto',
		status as 'Status'
FROM Pedidos 
WHERE status = 'Pendente'
order by id;

SELECT * FROM vw_pedidos_pendentes;
