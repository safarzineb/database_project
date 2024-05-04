-- Erreur: fournisseur avec un ID déjà existant
INSERT INTO Fournisseurs VALUES (3, 'Autre Fournisseur', '123 Rue des Fleurs');

-- Erreur: producteur avec un ID déjà existant
INSERT INTO Producteurs VALUES (2, 'Autre Producteur', '456 Avenue des Arbres');

-- Erreur: contrat avec une clé étrangère (idFournisseur) inexistante
INSERT INTO Contrats VALUES (7, 7, 1, 'mensuelle', '2023-06-01', '2024-06-01', 2000, 12);

-- Erreur: centrale avec une clé étrangère (idProducteur) inexistante
INSERT INTO Centrales VALUES (6, 8, '123 Avenue des Montagnes', 'fossile', 'Centrale à gaz', 14, 30);

-- Erreur: production avec des clés étrangères incompatibles
-- INSERT INTO Productions VALUES (4, 7);

-- Erreur: centrale avec un prix de production négatif
INSERT INTO Centrales VALUES (7, 3, '789 Rue du Soleil', 'renouvelable', 'Éolienne', -10, 60);

-- Erreur: production avec des clés étrangères manquantes
INSERT INTO Productions VALUES (NULL, 1);

-- Erreur: centrale avec une technologie non valide
INSERT INTO Centrales VALUES (8, 4, '456 Chemin des Roses', 'thermique', 'Centrale à vapeur', 20, 50);

-- Erreur: production avec des clés étrangères NULL
INSERT INTO Productions VALUES (NULL, NULL);

-- Erreur: client avec un type de client non valide
INSERT INTO Clients VALUES (7, 'Entreprise ABC', '10 Rue des Entrepreneurs', 'corporation', 15000);

-- Erreur: contrat avec un ID de fournisseur inexistant
INSERT INTO Contrats VALUES (10, 10, 1, 'annuelle', '2023-01-01', '2023-12-31', 1500, 1);

-- Erreur: centrale avec un ID de producteur inexistant
INSERT INTO Centrales VALUES (9, 10, '123 Rue des Nuages', 'renouvelable', 'Hydraulique', 25, 60);

-- Erreur: production avec un ID de producteur inexistant
INSERT INTO Productions VALUES (10, 10);

