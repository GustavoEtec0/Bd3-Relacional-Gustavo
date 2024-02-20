create database centro_cirurgico_bd;

use centro_cirurgico_bd;

create table tbl_especialidade(
	id_especialidade int unsigned auto_increment primary key,
    nome_especilidade varchar(100) not null
);

create table tbl_paciente(
	id_paciente int unsigned auto_increment primary key,
    nome_paciente varchar(500) not null,
    telefone_paciente varchar(10),
    celular_paciente varchar(11) not null,
    email_paciente varchar(100) not null,
    nome_responsavel varchar(500) not null,
    telefone_responsavel varchar(11) not null
);

create table tbl_medico(
	id_medico int unsigned auto_increment primary key,
    id_especialidade int unsigned not null,
    nome_medico varchar(500) not null,
    telefone_medico varchar(10),
    celular_medico varchar(11) not null,
    email_medico varchar(100) not null,
	foreign key (id_especialidade) references tbl_especialidade(id_especialidade)
);


 create table tbl_insumos(
 	id_insumo int unsigned auto_increment primary key,
    id_paciente int unsigned not null,
    nome_insumo varchar(100) not null,
    quantidade_insumo decimal(10,2),
    foreign key (id_paciente) references tbl_paciente(id_paciente)
 );
 
  create table tbl_sala(
 	id_sala int unsigned auto_increment primary key,
    id_especialidade int unsigned not null,
	numero_sala varchar(10),
	foreign key (id_especialidade) references tbl_especialidade(id_especialidade)
 );
 
  create table tbl_agenda(
 	id_agenda int unsigned auto_increment primary key,
    id_paciente int unsigned not null,
	id_medico int unsigned not null,
	id_sala int unsigned not null,
	data_cirurgia varchar(10),
    status_cirurgia enum('AGENDADO','CONCLUÍDO','CANCELADO'),
    foreign key (id_paciente) references tbl_paciente(id_paciente),
    foreign key (id_medico) references tbl_medico(id_medico),
    foreign key (id_sala) references tbl_sala(id_sala)
 );