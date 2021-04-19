--Resposta do exercício da página 60.

create table proprietario (
codigo_propi integer,
nome varchar(40),
constraint pk_proprietario primary key (codigo_propi)
);

CREATE TABLE fisico (
codigo INTEGER NOT NULL,
cpf VARCHAR(11) NOT NULL,
CONSTRAINT pk_fisico PRIMARY KEY (codigo),
CONSTRAINT proprietario FOREIGN KEY (codigo) REFERENCES proprietario);

CREATE TABLE juridico (
codigo INTEGER NOT NULL,
cnpj VARCHAR(20) NOT NULL,
CONSTRAINT pk_juridico PRIMARY KEY (codigo),
CONSTRAINT proprietario FOREIGN KEY (codigo) REFERENCES proprietario);

create table veiculo (
placa varchar(10),
modelo varchar(20),
ano_fabricacao integer,
constraint pk_veiculo primary key (placa)
);

create table possui (
codigo_propi integer,
placa varchar(10),
constraint pk_possui primary key (codigo_propi, placa),
constraint fk_possui_proprietario foreign key (codigo_propi) references proprietario,
constraint fk_possui_placa foreign key (placa) references veiculo
);
