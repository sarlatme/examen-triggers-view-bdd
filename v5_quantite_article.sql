-- CREATE VIEW ClientQuantite AS
-- SELECT a.client, SUM(a.quantite) AS quantite_totale
-- FROM Achat a
-- GROUP BY a.client;

CREATE VIEW ClientArticleQuantite AS
SELECT a.client, a.article, SUM(a.quantite) AS quantite_totale
FROM Achat a
GROUP BY a.client, a.article;

