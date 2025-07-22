create database API3;
GO

use API3;
GO

create table Nomes(
ID int primary key identity (1,1) not null,
CPF int,
Nome varchar (100) not null
);
GO

create table Idade(
ID_Nomes int,
Idade char(3)
);
GO

alter table Idade
add Constraint Nomes_Idade
foreign key (ID_Nomes)
references Nomes (ID)
on delete cascade;

insert into Nomes (CPF, Nome) values(123456789, 'João Silva');
insert into Nomes (CPF, Nome) values(987654321, 'Maria Souza');
insert into Nomes (CPF, Nome) values(456789123, 'Carlos Oliveira');
insert into Nomes (CPF, Nome) values(321654987, 'Ana Martins');
insert into Nomes (CPF, Nome) values(741852963, 'Pedro Rocha');
insert into Nomes (CPF, Nome) values(159753486, 'Juliana Alves');
insert into Nomes (CPF, Nome) values(369258147, 'Ricardo Lima');
insert into Nomes (CPF, Nome) values(258147369, 'Fernanda Costa');
insert into Nomes (CPF, Nome) values(753159456, 'Bruno Mendes');
insert into Nomes (CPF, Nome) values(147258369, 'Luciana Dias');
insert into Nomes (CPF, Nome) values(951753852, 'André Ramos');
GO

insert into Idade (Idade) values(27);
insert into Idade (Idade) values(23);
insert into Idade (Idade) values(25);
insert into Idade (Idade) values(53);
insert into Idade (Idade) values(23);
insert into Idade (Idade) values(33);
insert into Idade (Idade) values(13);
insert into Idade (Idade) values(63);
insert into Idade (Idade) values(73);
insert into Idade (Idade) values(43);
insert into Idade (Idade) values(45);
GO

