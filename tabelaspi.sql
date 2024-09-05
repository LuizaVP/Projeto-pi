create database Projetopi;
use Projetopi;

create table empresa (
id int primary key auto_increment,
nomeEmpresa varchar(50),
cnpj varchar (20),
email varchar(70),
telefone varchar(18)
);

describe empresa;

INSERT INTO empresa VALUES
(default, 'BurgerKing', '84.965.794/0001-18', 'bugerking@gmail.com', '(81) 2701-4820'),
(default, 'TendalGrill', '56.205.108/0001-75', 'tendal.grill@gmail.com', '(49) 2170-2786'),
(default, 'Mc Donald`s',  '14.291.187/0001-34', 'mcdonalds@gmail.com', '(21) 3727-9688'),
(default, 'BovinoGrill', '33.517.297/0001-16', 'grill.bovino@gmail.com', '(83) 2564-4563'),
(default, 'MrHopper', '07.511.548/0001-45',' Mr.hopper@gmail.com', '(45) 2233-4543');

SELECT * FROM empresa;
SELECT * FROM empresa 
	WHERE nomeEmpresa = 'BovinoGrill';
    
SELECT telefone, cnpj, email FROM empresa;


CREATE TABLE usuario(
empresa varchar(40),
login varchar(20),
senha varchar (18)
);

DESCRIBE usuario;

INSERT INTO usuario VALUES
('BurgerKing', 'BurgerKingSp', 'BK123.sp'),
('TendalGrill', 'Tends_Grill', 'Tendal0689@'),
('Mc Donald`s', 'McDonalds123','mclindo123'),
('BovinoGrill', 'BovinoGrillHL','Bovinolindo'),
('MrHopper', 'hopper418','Hopper.nhami123');

SELECT * FROM usuario;

SELECT empresa, senha FROM usuario;


CREATE TABLE sensor(
    empresa varchar(40),
    porcentagem float(4,2),
    dtColeta date,
    ultimaManutencao date
);

DESCRIBE sensor;

INSERT INTO sensor VALUES
('BurgerKing','23','2023-08-09','2023-12-23'),
('TendalGrill','45','2022-10-04','2023-01-02'),
('McDonal`s','78','2024-02-23','2024-06-05'),
('BovinoGrill', '20','2022-09-20','2023-01-01'),
('MrHopper','05','2023-06-12','2023-12-02');

SELECT * FROM sensor;

SELECT empresa, ultimaManutencao, porcentagem FROM sensor;

CREATE TABLE manutencao(
login varchar(20),
senha varchar(20)
);

DESCRIBE manutencao;

INSERT INTO manutencao VALUES
('BurgerKingSp', 'BK123.sp'),
('Tends_Grill', 'Tendal0689@'),
('McDonalds123','mclindo123'),
('BovinoGrillHL','Bovinolindo'),
('hopper418','Hopper.nhami123');

SELECT * FROM manutencao;

SELECT login, senha FROM manutencao;








