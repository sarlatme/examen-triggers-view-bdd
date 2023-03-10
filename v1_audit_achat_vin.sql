-- GRANT CREATE VIEW TO examen;


CREATE OR REPLACE VIEW AUDIT_ACHAT_VIN_View (NOM_CLIENT,NOM_VIN,NOM_REGION_VIN,APPELATION,QUANTITE_COMMANDEE,DATE_ACHAT)
AS SELECT NOM_CLIENT, NOM_VIN, NOM_REGION_VIN, APPELATION, QUANTITE_COMMANDEE, DATE_ACHAT
FROM AUDIT_ACHAT_VIN;

-- UPDATE AUDIT_ACHAT_VIN_View
-- SET QUANTITE_COMMANDEE = QUANTITE_COMMANDEE - 10;

-- Non, cette modification ne sera pas répercutée dans la table Achat car la vue 
-- n'est qu'une représentation virtuelle des données de la table, elle ne contient pas de données physiques. 
-- En modifiant les données à partir de la vue, seule la vue sera modifiée, pas la table sous-jacente. 
-- Pour modifier la table Achat, il faudrait modifier directement les données dans la table en 
-- utilisant une requête SQL appropriée.

