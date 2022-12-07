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