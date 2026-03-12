use biblioteca_pessoal_1s2026;

create table Usuario (
	id_usuario int  auto_increment primary key,
	nome varchar (255) not null,
    email varchar (255) not null unique,
    data_cadastro date not null
    );

show tables;