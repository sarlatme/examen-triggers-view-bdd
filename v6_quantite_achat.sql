CREATE VIEW ArticleQuantite AS
SELECT a.article, SUM(a.quantite) AS quantite_totale
FROM Achat a
GROUP BY a.article;
