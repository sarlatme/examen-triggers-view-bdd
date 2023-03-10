-- CREATE VIEW VinQuantite AS
-- SELECT v.idvin, v.nom, v.appellation, SUM(a.quantite) AS quantite_totale
-- FROM Vin v JOIN Article ar ON v.idvin = ar.vin
--             JOIN Achat a ON ar.idarticle = a.article
-- GROUP BY v.idvin, v.nom, v.appellation;


-- Maximum
-- SELECT idvin, nom, appellation, quantite_totale
-- FROM VinQuantite
-- WHERE quantite_totale = (
--     SELECT MAX(quantite_totale)
--     FROM VinQuantite
-- );

-- Minimum
SELECT idvin, nom, appellation, quantite_totale
FROM VinQuantite
WHERE quantite_totale = (
    SELECT MIN(quantite_totale)
    FROM VinQuantite
);