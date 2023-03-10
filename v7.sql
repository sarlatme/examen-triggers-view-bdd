SELECT c.nom, c.age, r.nom, SUM(caq.quantite) AS quantite_totale
FROM Client c
JOIN Region r ON c.habite = r.idregion
JOIN ClientArticleQuantite caq ON c.idclient = caq.client
GROUP BY c.nom, c.age, r.nom
ORDER BY quantite_totale DESC
WHERE ROWNUM = 1;

