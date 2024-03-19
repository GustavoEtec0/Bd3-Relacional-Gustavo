use centro_cirurgico_bd;

delimiter $ 

create trigger trg_delete_paciente before delete on tbl_paciente

for each row
begin

insert into tbl_paciente_bkp
set
id_paciente = old.id_paciente,
nome_paciente = old.nome_paciente,
telefone_paciente = old.telefone_paciente,
celular_paciente = old.celular_paciente,
email_paciente = old.email_paciente,
nome_responsavel = old.nome_responsavel,
telefone_responsavel = old.telefone_responsavel,
date_delete = now();

end
$