select * from item_venda;
select * from entrega;
select * from veiculo;
select * from motorista;
select * from cliente;
select * from venda;
select * from vendedor;
select * from produto;
	
CREATE TABLE entrega(
	horaEntrega time,
	dataEntrega date,
	numVen integer,
	placa char(7),
	codMot integer,
	PRIMARY KEY (horaEntrega, dataEntrega),
	foreign key (numVen) references venda (numVend),
	foreign key (placa) references veiculo (placa),
	foreign key (codMot)references motorista(codMot)
)
insert into 
	entrega(horaEntrega, dataEntrega, numVen, placa, codMot) 
values
	('07:00:00', '23/02/04', 2222,'1',1 ),
	('05:45:32', '24/04/15', 4565,'2',2),
	('06:30:00', '23/12/09', 5082, '3',3)




CREATE TABLE veiculo(
	placa char(7) primary key,
	capacidade integer

)
insert into 
	veiculo(placa, capacidade) 
values
	(1,40),
	(2,20),
	(3, 15)
	


CREATE TABLE venda(
	numVend integer primary key,
	valor_total numeric(11,2),
	codVdd integer,
	codCli integer
)
insert into 
	venda(numVend, valor_total, codVdd, codCli) 
values
	(4565, 960.00, 4352, 12367),
	(2222, 5678.00, 521, 90843),
	(5082, 5778, 523, 90840)



CREATE TABLE vendedor(
	codVdd integer primary key,
	cpf numeric(11),
	v_comissao numeric(4,2),
	nome varchar(50),
	endereco varchar(100)

)

insert into 
	vendedor(codVdd, cpf, v_comissao, nome, endereco) 
values
	(1, 10223456734,13.00, 'jose', 'Aracagi'),
	(2, 55552021555,13.20, 'maria', 'Mari'),
	(3, 55484811514, 22.00,'marcos', 'Aracagi')


CREATE TABLE motorista(
	codMot int primary key,
	cpf int,
	cnh int,
	nome varchar(100),
	endereco varchar(150)

)


insert into motorista(
		codMot, 
		cpf,
		cnh,
		nome,
		endereco
) 
values
	(1,12345,4321,'joao', 'Guarabira'),
	(2,98765, 96753, 'Roberto', 'Pirpirituba'),
	(3, 13569, 91283, 'Pedro', 'Belem')
															  





CREATE TABLE cliente(
	codCli integer primary key,
	nome varchar(50),
	tel char(10),
	endereco varchar(100),
	cpf numeric(11),
	email varchar(50)
)

insert into 
	cliente(codCli, nome, tel, endereco, cpf, email)
values
	(1, 'Aldo', '96543211', 'Contendas', '532000', 'santosoliveira@gmail.com'),
	(2, 'jose', '918720', 'Contendas', '532000', 'jose.silva@gmail.com'),
	(3, 'mario', '9191827', 'Guarabira', '191726', 'mario@gmail.com')
	
	
CREATE TABLE produto(
	codPro integer primary key,
	custo numeric(11,2),
	descricao text,
	preco numeric(11,2),
	nome varchar(50)
)
INSERT INTO 
	produto (codPro, custo, descricao, preco, nome) 
VALUES 
	(9053, 500.00, 'Descrição do produto 1', 600.00, 'Nome do Produto 1'),
	(9054, 350.50, 'Descrição do produto 2', 450.00, 'Nome do Produto 2'),
	(9055, 720.75, 'Descrição do produto 3', 850.00, 'Nome do Produto 3')
;




	
CREATE TABLE item_venda(
    codPro INTEGER,
    numVen INTEGER,
    vUnitario NUMERIC(11,2),
    qtd INTEGER,
    FOREIGN KEY (codPro) REFERENCES produto (codPro),
    FOREIGN KEY (numVen) REFERENCES venda (numVend)
);

insert into 
	item_venda (codPro, numVen, vUnitario, qtd) 
VALUES 
	(9053, 4565, 10.50, 5),
	(9054, 5082, 20.75, 3),
	(9055, 2222, 15.20, 8)
;

















