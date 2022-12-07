drop table if exists commission;
create table commission(
    code_com char(1) not null,
    libelle varchar(30),
    pourcentage int,
    constraint PK_CLI primary key(code_com)
)Engine=innodb;
desc commission;
