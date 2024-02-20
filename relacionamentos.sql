#outra maneira de relacionar as tabelas

/*
alter table tbl_sala add constraint fk_especialidade
foreign key (id_especialidade) references tbl_especialidade(id_especialidade)
*/