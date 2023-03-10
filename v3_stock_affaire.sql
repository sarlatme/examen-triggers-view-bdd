-- CREATE VIEW Stock AS
-- SELECT v.nom AS vin_nom, v.appellation, v.type, a.millesime, a.contenance, a.prixht
-- FROM Vin v
-- INNER JOIN Article a ON v.idvin = a.vin;

-- CREATE VIEW Affaire AS
-- SELECT vin_nom, appellation, type, millesime, contenance, prixht,
--        (prixht / contenance) AS prix_litres
-- FROM Stock
-- WHERE (prixht / contenance) = (
--     SELECT MIN(prixht / contenance)
--     FROM Stock
--     WHERE vin_nom = Stock.vin_nom
-- );

-- On récupère le meilleur avec la requete suivante
SELECT vin_nom, appellation, type, millesime, contenance, prixht, prix_litres
FROM (
    SELECT *
    FROM Affaire
    WHERE prix_litres = (
        SELECT MIN(prix_litres)
        FROM Affaire
    )
    ORDER BY prix_litres
) WHERE ROWNUM = 1;


