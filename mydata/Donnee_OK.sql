-- -------------- Table Fournisseurs -- -------------- 
INSERT INTO Fournisseurs VALUES (1, 'EDF', '1 Avenue du Général de Gaulle, 75008 Paris');
INSERT INTO Fournisseurs VALUES (2, 'Engie', 'Tour T1, 1 Place Samuel de Champlain, 92400 Courbevoie');
INSERT INTO Fournisseurs VALUES (3, 'TotalEnergies', '2 Place Jean Millier, 92400 Courbevoie');
INSERT INTO Fournisseurs VALUES (4, 'EDPR', 'Rua do Bolhão, 186, 4000-112 Porto');
INSERT INTO Fournisseurs VALUES (5, 'RWE', 'Altenessener Straße 35, 45141 Essen');
INSERT INTO Fournisseurs VALUES (6, 'Vattenfall', 'Evenemangsgatan 13, 169 56 Solna');

-- -------------- Table Producteurs -- --------------
INSERT INTO Producteurs VALUES (1, 'EDF Renouvelables', '14-16 Boulevard de Grenelle, 75015 Paris');
INSERT INTO Producteurs VALUES (2, 'E.ON', '24 Rue Guillaume Fichet, 74000 Annecy');
INSERT INTO Producteurs VALUES (3, 'Enel Green Power', '32 Rue Saint-Georges, 75009 Paris');
INSERT INTO Producteurs VALUES (4, 'NextEra Energy', '700 Universe Blvd, Juno Beach, FL 33408, United States');
INSERT INTO Producteurs VALUES (5, 'Duke Energy', '550 South Tryon Street, Charlotte, NC 28202, United States');
INSERT INTO Producteurs VALUES (6, 'Iberdrola', 'Plaza Euskadi, 5, 48009 Bilbao, Biscay, Spain');

-- -------------- Table Clients -- -------------- 
INSERT INTO Clients VALUES (1, 'Jean Dupont', '12 Rue de la République, 69001 Lyon', 'particulier', 300);
INSERT INTO Clients VALUES (2, 'ABC Industrie', '8 Rue du Faubourg Poissonnière, 75010 Paris', 'professionnelle', 8000);
INSERT INTO Clients VALUES (3, 'Marie Dupont', '25 Rue des Ecoles, 69002 Lyon', 'particulier', 400);
INSERT INTO Clients VALUES (5, 'XYZ Corporation', '123 Main Street, Anytown, USA', 'professionnelle', 15000);
INSERT INTO Clients VALUES (6, 'Ecole Nationale Supérieure d''Informatique et de Mathématiques Appliquées', '163 Avenue de Luminy, 13009 Marseille', 'professionnelle', 12000);

-- -------------- Table Contrats -- --------------
INSERT INTO Contrats VALUES (1, 1, 1, 'annuelle', '2023-01-01', '2023-12-31', 1500, 1);
INSERT INTO Contrats VALUES (2, 2, 2, 'mensuelle', '2023-02-01', '2024-02-01', 2000, 12);
INSERT INTO Contrats VALUES (3, 3, 3, 'biannuelle', '2023-04-01', '2024-04-01', 1800, 2);
INSERT INTO Contrats VALUES (4, 4, 5, 'mensuelle', '2023-03-01', '2023-12-01', 2200, 9);
INSERT INTO Contrats VALUES (6, 6, 6, 'trimestrielle', '2023-05-01', '2024-05-01', 2500, 4);

-- -------------- Table Centrales -- --------------
INSERT INTO Centrales VALUES (1, 1, 'Chemin des Salles, 83660 Carnoules', 'renouvelable', 'Éolienne', 20, 50);
INSERT INTO Centrales VALUES (2, 2, 'Route de St Germain, 27300 Saint-Léger-de-Rôtes', 'fossile', 'Centrale thermique', 15, 30);
INSERT INTO Centrales VALUES (3, 3, 'Calle de las Huertas, 42, 28014 Madrid, Spain', 'renouvelable', 'Hydraulique', 25, 60);
INSERT INTO Centrales VALUES (4, 4, '7001, Seacoast Pkwy, Cape Canaveral, FL 32920, United States', 'renouvelable', 'Solaire', 18, 45);
INSERT INTO Centrales VALUES (5, 5, '526 S Church St, Charlotte, NC 28202, United States', 'fossile', 'Centrale à charbon', 12, 25);

-- -------------- Table Productions -- --------------
INSERT INTO Productions VALUES (1, 1);
INSERT INTO Productions VALUES (2, 2);
INSERT INTO Productions VALUES (3, 4);
INSERT INTO Productions VALUES (4, 5);
INSERT INTO Productions VALUES (5, 6);
INSERT INTO Productions VALUES (4, 2);

