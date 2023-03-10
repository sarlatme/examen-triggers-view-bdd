-- CREATE VIEW Regionale AS
-- SELECT R.idregion, R.nom, C.idclient, C.nom AS client_nom, C.age, C.habite
-- FROM Region R
-- JOIN Client C ON R.idregion = C.habite;

-- La table ne sera pas UPDATE car l'UPDATE implique un non respect des regles de création de la table
-- (voir schema physique)
-- UPDATE Regionale
-- SET age = age - 1;

-- La commande UPDATE permet de modifier les données dans une table ou une vue. Ici, nous mettons 
-- à jour la vue "Regionale" en soustrayant 1 à la colonne "age" pour chaque ligne de la vue. Cela 
-- réduira l'âge de chaque client de 1 dans la vue, mais les données dans la table "Client" resteront 
-- inchangées.

-- Notez que la vue est une représentation virtuelle des données de la table, donc cette mise à jour
--  ne se reflétera que dans la vue elle-même et ne modifiera pas les données réelles dans la table 
--  "Client".

DELETE FROM Regionale
WHERE age > 60;

