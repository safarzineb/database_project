
DROP VIEW IF EXISTS Contrats_View;

CREATE VIEW Contrats_View AS
SELECT 
    numeroContrat,
    idFournisseur,
    numeroClient,
    typeContrat,
    dateDebut,
    dateFin,
    julianday(dateFin) - julianday(dateDebut) AS dureeContrat,
    prixVente
FROM 
    Contrats;

SELECT * FROM Contrats_View;

