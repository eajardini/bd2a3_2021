--Resposta do exercício da página 51.

create table  curso2 (
codcurso integer,
nome varchar(40),
valor numeric (7,2),
constraint pk_curso2 primary key(codcurso)
);

-- drop table coordenador;
create table coordenador (
codcoordenador integer,
codcurso integer,
nome varchar(40),
constraint pk_coordenador primary key (codcoordenador),
constraint fk_cood_curso foreign key (codcurso) references curso
);

create table aluno2 (
ra integer,
codcurso integer,
nome varchar(40),
endereco varchar (40),
constraint pk_aluno2 primary key (ra),
constraint fk_aluno_curso foreign key (codcurso) references curso
);
