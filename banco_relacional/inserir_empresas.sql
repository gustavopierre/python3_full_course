alter table empresas modify cnpj varchar(14);

insert into empresas
    (nome, cnpj)
VALUES
    ('Bradesco', 79011066000137),
    ('Vale', 33821182000110),
    ('Cielo', 50782243000105);

DESC empresas;
desc prefeitos;
select * from empresas;
select * from cidades;

insert into empresas_unidades
    (empresa_id, cidade_id, sede)
values 
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);