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

