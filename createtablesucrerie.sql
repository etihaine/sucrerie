drop table if exists client;
drop table if exists commande;
drop table if exists ligne_commande;
drop table if exists produit;
drop table if exists vendeur;

create table client(
    code_c int not null,
    nom varchar(30),
    prenom varchar(30),
    adrsRue varchar(50),
    cp char(5),
    ville varchar(30),
    numTel char(20),
    constraint PK_CLI primary key(code_c)
)Engine=innodb;
desc client;

create table commande(
    numCmd int not null,
    code_v int,
    code_c int,
    date_livraison date,
    date_cmd date,
    total_ht float,
    total_tva float,
    etat int,
    constraint PK_CMD primary key(numCmd)
)Engine=innodb;
desc commande;

create table ligne_commande(
    numero int not null,
    numero_ligne int,
    reference char(4) not null,
    quantite_demandee int,
    constraint PK_LIGN_CMD primary key(numero, reference)
)Engine=innodb;
desc ligne_commande;

create table produit(
    refProd char(4) not null,
    designation varchar(30),
    quantite int,
    descriptif char(1),
    prix_unitaire_ht float,
    stock int,
    poids_piece int,
    constraint PK_PRD primary key(refProd)
)Engine=innodb;
desc produit;

create table vendeur(
    code_v int not null,
    nomVendeur varchar(30),
    prenomVendeur varchar(30),
    adrsRueVendeur varchar(50),
    cpVendeur char(5),
    villeVendeur varchar(30),
    telVendeur char(20),
    constraint PK_VD primary key(code_v)
)Engine=innodb;
desc vendeur;