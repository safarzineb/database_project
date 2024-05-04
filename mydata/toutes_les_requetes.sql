
SELECT Pr.nomProducteur, Fr.nomFournisseur
FROM Productions p JOIN Producteurs Pr ON (p.idProducteur = Pr.idProducteur) 
                    JOIN Fournisseurs Fr ON (p.idFournisseur = Fr.idFournisseur);

SELECT *
FROM Centrales
WHERE idProducteur = 2;

SELECT * 
FROM Clients;