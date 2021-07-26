# BD
create table proprietario (
id int(5) auto_increment,
nome varchar(30),
nascimento date,
cpf decimal(11,1) not null,
estado varchar(2) not null default 'RS',
cidade varchar(30),
PRIMARY KEY (id),
CONSTRAINT `fk_motos_proprietario` FOREIGN KEY ( `id` ) REFERENCES `motos` ( `id` ) 
)ENGINE = innodb;
create database oficina
default charset = utf8
default collate = utf8_general_ci;

use oficina;

create table Motos (
id int auto_increment,
modelo varchar(30) not null,
ano varchar(4),
chassis varchar(17),
placa varchar(7),
proprietario varchar(30) not null,
PRIMARY KEY (id)
);

create table proprietario (
id int(5) auto_increment,
nome varchar(30),
nascimento date,
cpf varchar(11) not null,
estado varchar(2) not null default 'RS',
cidade varchar(30),
PRIMARY KEY (id),
CONSTRAINT `fk_motos_proprietario` FOREIGN KEY ( `id` ) REFERENCES `motos` ( `id` ) 
)ENGINE = innodb;

insert into motos (id, modelo, ano, chassis, placa, proprietario)
		values ('1', 'HONDA CG125', '2008', '16ALuZA08VA2P6158', 'BTK3666', 'João Abreu'),
               ('2', 'YAMAHA FZ25', '2010', '7Dva4B4AZG1eR6136', 'GSP2164', 'Gisele Ferraz'),
               ('3', 'HONDA CG160', '2019', '5GfABz8ayaf211149', 'ENW7245', 'Helvio Haggstrom');
			
insert into proprietario (id, nome, nascimento, cpf, estado, cidade)
       values('1', 'João Abreu', '1971-06-05', '15509459808', 'RS', 'Porto Alegre'),
             ('2', 'Gisele Ferraz', '2002-01-13', '15509459808', 'SP', 'São Paulo'),
             ('3', 'Helvio Haggstrom', '1976-03-23', '042878.42758', 'RS', 'Xangrilá');


SELECT * FROM motos;
