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

DELETE FROM commande;
INSERT INTO commande
VALUES (10178,15,47, '2008-09-05','2008-09-05',177.00 ,9.75 ,1);
INSERT INTO commande
VALUES (10179,15,47,'2008-10-13','2008-10-13',192.00 ,10.50 ,1);
INSERT INTO commande
VALUES (10180,15,48,'2008-10-10','2008-10-10',98.00 ,5.40 ,1);
INSERT INTO commande
VALUES (10181,15,49,'2008-10-11','2008-10-11',175.00 ,9.60 ,1);
INSERT INTO commande
VALUES (10182,15,50,'2008-10-11','2008-10-11',116.00 ,6.40 ,1);
INSERT INTO commande
VALUES (10183,15,51,'2008-10-11','2008-10-11',118.00 ,6.50 ,1);
INSERT INTO commande
VALUES (10184,15,52,'2008-10-12','2008-10-12',102.00 ,5.60 ,1);
INSERT INTO commande
VALUES (10185,15,53,'2008-10-12','2008-10-12',19.00 ,1.05 ,1);
INSERT INTO commande
VALUES (10186,15,54,'2008-10-10','2008-10-10',101.00 ,5.55 ,1);
INSERT INTO commande
VALUES (10187,15,55,'2008-10-10','2008-10-10',65.00 ,3.58 ,1);
INSERT INTO commande
VALUES (10188,17,56,'2008-10-12','2008-10-12',121.00 ,6.66 ,1);
INSERT INTO commande
VALUES (10189,17,57,'2008-10-10','2008-10-10',110.00 ,6.05 ,1);
INSERT INTO commande
VALUES (10190,17,58,'2008-10-13','2008-10-13',123.00 ,6.76 ,1);
INSERT INTO commande
VALUES (10191,17,59,'2008-10-13','2008-10-13',107.50 ,5.91 ,1);
INSERT INTO commande 
VALUES (10192,17,60,'2008-11-10','2008-11-10',237.00 ,13.04 ,1);
SELECT *
FROM commande;

DELETE FROM ligne_commande;
INSERT INTO ligne_commande
VALUES (10188,3,'1004',1);
INSERT INTO ligne_commande
VALUES (10179,7,'1007',2);
INSERT INTO ligne_commande
VALUES (10191,4,'1015',1);
INSERT INTO ligne_commande
VALUES (10191,1,'1016',1);
INSERT INTO ligne_commande
VALUES (10188,1,'1016',2);
INSERT INTO ligne_commande
VALUES (10186,1,'1016',1);
INSERT INTO ligne_commande
VALUES (10189,1,'1017',1);
INSERT INTO ligne_commande
VALUES (10192,3,'1017',1);
INSERT INTO ligne_commande
VALUES (10186,2,'3002',2);
INSERT INTO ligne_commande
VALUES (10192,9,'3004',1);
INSERT INTO ligne_commande
VALUES (10192,4,'3016',1);
INSERT INTO ligne_commande
VALUES (10190,1,'3010',1);
INSERT INTO ligne_commande
VALUES (10180,3,'3016',1);
INSERT INTO ligne_commande
VALUES (10192,6,'3017',1);
INSERT INTO ligne_commande
VALUES (10179,4,'4002',1);
INSERT INTO ligne_commande
VALUES (10185,1,'4002',1);
INSERT INTO ligne_commande
VALUES (10181,4,'4002',2);
INSERT INTO ligne_commande
VALUES (10184,3,'4004',1);
INSERT INTO ligne_commande
VALUES (10178,5,'4004',1);
INSERT INTO ligne_commande
VALUES (10187,2,'4010',1);
INSERT INTO ligne_commande
VALUES (10187,3,'4011',1);
INSERT INTO ligne_commande
VALUES (10182,2,'4012',1);
INSERT INTO ligne_commande
VALUES (10181,5,'4012',2);
INSERT INTO ligne_commande
VALUES (10183,5,'4013',1);
INSERT INTO ligne_commande
VALUES (10191,3,'4013',1);
INSERT INTO ligne_commande
VALUES (10178,1,'4015',1);
INSERT INTO ligne_commande
VALUES (10187,1,'4015',1);
INSERT INTO ligne_commande
VALUES (10190,2,'4015',1);
INSERT INTO ligne_commande
VALUES (10189,2,'4016',1);
INSERT INTO ligne_commande
VALUES (10192,10,'4019',1);
INSERT INTO ligne_commande
VALUES (10181,1,'4020',1);
INSERT INTO ligne_commande
VALUES (10192,7,'4022',1);
INSERT INTO ligne_commande
VALUES (10183,1,'4025',1);
INSERT INTO ligne_commande
VALUES (10178,2,'4025',1);
INSERT INTO ligne_commande
VALUES (10192,1,'4025',1);
INSERT INTO ligne_commande
VALUES (10184,1,'4025',1);
INSERT INTO ligne_commande
VALUES (10181,2,'4026',1);
INSERT INTO ligne_commande
VALUES (10183,2,'4027',1);
INSERT INTO ligne_commande
VALUES (10183,3,'4029',1);
INSERT INTO ligne_commande
VALUES (10192,2,'4030',1);
INSERT INTO ligne_commande
VALUES (10179,1,'4031',1);
INSERT INTO ligne_commande
VALUES (10178,3,'4031',1);
INSERT INTO ligne_commande
VALUES (10189,3,'4031',1);
INSERT INTO ligne_commande
VALUES (10184,2,'4031',2);
INSERT INTO ligne_commande
VALUES (10192,5,'4031',1);
INSERT INTO ligne_commande
VALUES (10179,2,'4032',1);
INSERT INTO ligne_commande
VALUES (10190,3,'4032',1);
INSERT INTO ligne_commande
VALUES (10189,4,'4033',1);
INSERT INTO ligne_commande
VALUES (10182,1,'4034',1);
INSERT INTO ligne_commande
VALUES (10178,4,'4036',1);
INSERT INTO ligne_commande
VALUES (10179,3,'4037',1);
INSERT INTO ligne_commande
VALUES (10183,4,'4039',1);
INSERT INTO ligne_commande
VALUES (10178,7,'4042',1);
INSERT INTO ligne_commande
VALUES (10181,3,'4045',1);
INSERT INTO ligne_commande
VALUES (10191,2,'4052',1);
INSERT INTO ligne_commande
VALUES (10192,8,'4052',1);
INSERT INTO ligne_commande
VALUES (10188,2,'4052',1);
INSERT INTO ligne_commande
VALUES (10178,6,'4053',1);
INSERT INTO ligne_commande
VALUES (10180,1,'4053',1);
INSERT INTO ligne_commande
VALUES (10190,4,'4053',1);
INSERT INTO ligne_commande
VALUES (10179,5,'4054',1);
INSERT INTO ligne_commande
VALUES (10181,6,'4054',1);
INSERT INTO ligne_commande
VALUES (10182,3,'4055',1);
INSERT INTO ligne_commande
VALUES (10180,2,'4055',1);
INSERT INTO ligne_commande
VALUES (10179,6,'4057',1);
INSERT INTO ligne_commande
VALUES (10182,4,'4057',1);
SELECT *
FROM ligne_commande;

DELETE FROM client;
INSERT INTO client VALUES (17,'TARINAUX', 'Lucien','12 rue de la Justice',51100,'REIMS',"03.26.25.48.87");
INSERT INTO client VALUES (46,'MARTUSE', NULL, '103 avenue Lear',51100,'REIMS',"03.26.03.25.26");
INSERT INTO client VALUES (47,'RABIN', 'Sandrine','21 rue de la Méditerranée',51100,'REIMS',"03.26.14.15.25");
INSERT INTO client VALUES (48,'SILLARD', 'Laurence','15 rue Pasentiers',51100,'REIMS',"03.26.11.11.25");
INSERT INTO client VALUES (49,'COTOY', 'Sylvie','12 rue des écus',51100,'REIMS',"03.26.10.25.75");
INSERT INTO client VALUES (50,'HELLOU', 'Bernard','21 rue de la Méditerranée',51100,'REIMS',"03.26.12.25.42");
INSERT INTO client VALUES (51,'HENTION', 'Martine','50 allée des bons enfants',51100,'REIMS',"03.26.12.25.86");
INSERT INTO client VALUES (52,'SIBAT', 'Evelyne','14 rue de la Baltique',51100,'REIMS',"03.26.12.23.33");
INSERT INTO client VALUES (53,'MARIN', 'Dominique','24 rue de la Baltique',51100,'REIMS',"03.26.10.10.23");
INSERT INTO client VALUES (54,'DURDUX', 'Monique','15 allée des Béarnais',51150,'VITRY LE FRANCOIS',"03.26.42.42.33");
INSERT INTO client VALUES (55,'CANILLE', 'Walter','14 rue Lanterneau',51100,'REIMS',"03.26.12.12.87");
INSERT INTO client VALUES (56,'BOUQUET', 'Antoinette','1 rue de la Méditerranée',51140,'ROMAIN',"03.26.78.89.54");
INSERT INTO client VALUES (57,'GAUTON', 'Nadine','5 place des Oiseaux',51200,'FISMES',"03.26.53.56.55");
INSERT INTO client VALUES (58,'LEGROS', 'Christian','18 place des Oiseaux',51200,'FISMES',"03.26.44.55.66");
INSERT INTO client VALUES (59,'DUMOITIERS', 'Lucille','12 place Centrale',02320,'LONGUEVAL',"03.26.86.43.25");
INSERT INTO client VALUES (60,'BOUCHE', 'Carole','4 rue Brulé',51200,'FISMES',"03.26.33.96.85");

DELETE FROM produit;
INSERT INTO produit VALUES(1004,'FEU DE JOIE LIQUEUR ASSORT.',500,'G',23.00 ,50,0);
INSERT INTO produit VALUES(1007,'TENDRE FRUIT',500,'G',18.00 ,120,0);
INSERT INTO produit VALUES(1015,'CARACAO',500,'G',24.50 ,50,0);
INSERT INTO produit VALUES(1016,'COKTAIL',500,'G',33.00 ,40,0);
INSERT INTO produit VALUES(1017,'ORFIN',500,'G',32.00 ,40,0);
INSERT INTO produit VALUES(3002,'CARRE PECTO',500,'G',29.00 ,40,0);
INSERT INTO produit VALUES(3004,'ZAN ALESAN',25,'P',15.00 ,50,20);
INSERT INTO produit VALUES(3010,'PATES GRISES',500,'G',35.00 ,100,0);
INSERT INTO produit VALUES(3016,'CARAMEL AU LAIT',500,'G',20.00 ,100,0);
INSERT INTO produit VALUES(3017,'VIOLETTE TRADITION',500,'G',25.00 ,100,0);
INSERT INTO produit VALUES(4002,'SUCETTE BOULE FRUIT',25,'P',14.00 ,100,40);
INSERT INTO produit VALUES(4004,'SUCETTE BOULE POP',25,'P',21.00 ,50,40);
INSERT INTO produit VALUES(4010,'CARAMBAR',40,'P',18.00 ,20,15);
INSERT INTO produit VALUES(4011,'CARANOUGA',40,'P',18.00 ,100,15);
INSERT INTO produit VALUES(4012,'CARAMBAR FRUIT',40,'P',18.00 ,100,15);
INSERT INTO produit VALUES(4013,'CARAMBAR COLA',40,'P',18.00 ,50,15);
INSERT INTO produit VALUES(4015,'SOURIS REGLISSE',500,'G',24.00 ,50,0);
INSERT INTO produit VALUES(4016,'SOURIS CHOCO',500,'G',24.00 ,50,0);
INSERT INTO produit VALUES(4019,'SCHTROUMPFS VERTS',500,'G',24.00 ,50,0);
INSERT INTO produit VALUES(4020,'CROCODILE',500,'G',21.00 ,50,0);
INSERT INTO produit VALUES(4022,'PERSICA',500,'G',28.00 ,20,0);
INSERT INTO produit VALUES(4025,'COLA CITRIQUE',500,'G',21.00 ,50,0);
INSERT INTO produit VALUES(4026,'COLA LISSE',500,'G',25.00 ,50,0);
INSERT INTO produit VALUES(4027,'BANANE',1000,'G',23.00 ,20,0);
INSERT INTO produit VALUES(4029,'OEUF SUR LE PLAT',500,'G',25.00 ,20,0);
INSERT INTO produit VALUES(4030,'FRAISIBUS',500,'G',25.00 ,50,0);
INSERT INTO produit VALUES(4031,'FRAISE TSOIN-TSOIN',500,'G',25.00 ,40,0);
INSERT INTO produit VALUES(4032,'METRE REGLISSE ROULE',500,'G',19.00 ,50,0);
INSERT INTO produit VALUES(4033,'MAXI COCOBAT',1000,'G',19.00 ,20,0);
INSERT INTO produit VALUES(4034,'DENTS VAMPIRE',500,'G',22.00 ,50,0);
INSERT INTO produit VALUES(4036,'LANGUE COLA CITRIQUE',500,'G',21.00 ,40,0);
INSERT INTO produit VALUES(4037,'OURSON CANDI',1000,'G',21.00 ,50,0);
INSERT INTO produit VALUES(4039,'SERPENT ACIDULE',500,'G',21.00 ,20,0);
INSERT INTO produit VALUES(4042,'TETINE CANDI',500,'G',20.00 ,40,0);
INSERT INTO produit VALUES(4045,'COLLIER PECCOS',15,'P',21.00 ,50,50);
INSERT INTO produit VALUES(4052,'TWIST ASSORTIS',500,'G',22.00 ,50,0);
INSERT INTO produit VALUES(4053,'OURSON GUIMAUVE',500,'G',35.00 ,10,0);
INSERT INTO produit VALUES(4054,'BOULE COCO MULER',500,'G',34.00 ,10,0);
INSERT INTO produit VALUES(4055,'COCOMALLOW',500,'G',33.00 ,10,0);
INSERT INTO produit VALUES(4057,'CRIC-CRAC',500,'G',33.00 ,10,0);


DELETE FROM vendeur;
INSERT INTO vendeur VALUES(15,'FILLARD', 'Sylvain',"77 rue du l'Adriatique",51100,'REIMS',"03.26.12.25.25");
INSERT INTO vendeur VALUES(17,'BAUDOT','Marc','16 rue de Reims',51000,'CHALONS EN CHAMPAGNE',"03.26.10.58.59");

SELECT *
FROM commande;
SELECT *
FROM ligne_commande;
SELECT *
FROM client;
SELECT *
FROM produit;
SELECT *
FROM vendeur;

alter table commande
add constraint FK_CMD_1 foreign key(code_v)
references vendeur(code_v);

alter table commande
add constraint FK_CMD_2 foreign key(code_c)
references client(code_c);

alter table ligne_commande
add constraint FK_LIGN_CMD_1 foreign key(numero)
references commande(numCmd);

alter table ligne_commande
add constraint FK_LIGN_CMD_2 foreign key(reference)
references produit(refProd);


drop table if exists commission;
create table commission(
    code_com char(1) not null,
    libelle varchar(30),
    pourcentage int,
    constraint PK_CLI primary key(code_com)
)Engine=innodb;
desc commission;


DELETE FROM commission;
INSERT INTO commission
VALUES ('A','commission expert', 30);
INSERT INTO commission
VALUES ('B','commission courante', 15);
SELECT * 
FROM commission;

ALTER TABLE vendeur
add column code_com char(1);

UPDATE vendeur
SET code_com = 'A' 
WHERE code_v = 15;

UPDATE vendeur
SET code_com = 'B' 
WHERE code_v = 17;

ALTER TABLE vendeur
add constraint FK_VD_1 foreign key(code_com)
references commission(code_com);


