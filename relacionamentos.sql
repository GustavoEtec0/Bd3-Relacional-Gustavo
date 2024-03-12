#outra maneira de relacionar as tabelas

/*
## relacionamento sala/especialidade
ALTER TABLE tbl_sala ADD constraint FK_ESPECIALIDADE
foreign key (cod_especialidade)
references tbl_especialidade(cod_especialidade);


#RELACIONAMENTO PACIENTE E INSUMOS
ALTER TABLE tbl_insumos ADD constraint FK_PACIENTE
foreign key (cod_paciente) 
references tbl_paciente(cod_paciente);

#RELACIONAMENTO MEDICO E ESPECIALIDADE
ALTER TABLE tbl_medico ADD constraint FK_ESPECIALIDADE_MEDICO
foreign key (cod_especialidade) 
references tbl_especialidade(cod_especialidade);

ALTER TABLE tbl_agenda ADD constraint FK_AGENDA_SALA
foreign key (cod_sala) 
references tbl_sala(cod_sala);

ALTER TABLE tbl_agenda ADD constraint FK_AGENDA_MEDICO
foreign key (cod_medico) 
references tbl_medico(cod_medico);

ALTER TABLE tbl_agenda ADD constraint FK_AGENDA_PACIENTE
foreign key (cod_paciente) 
references tbl_paciente(cod_paciente);
*/
