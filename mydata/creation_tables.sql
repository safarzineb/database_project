
-- -------------- Suppression des tables -- --------------

DROP TABLE IF EXISTS Productions;
DROP TABLE IF EXISTS Centrales;
DROP TABLE IF EXISTS Contrats;
DROP TABLE IF EXISTS Fournisseurs;
DROP TABLE IF EXISTS Producteurs;
DROP TABLE IF EXISTS Clients;


-- -------------- Creation des tables -- --------------

CREATE TABLE Fournisseurs (
	idFournisseur INTEGER NOT NULL,
	nomFournisseur TEXT NOT NULL,
	adresseFournisseur TEXT NOT NULL,
	CONSTRAINT pk_idFournisseur PRIMARY KEY (idFournisseur)
);


-- -------------- Producteurs -- --------------

CREATE TABLE Producteurs (
	idProducteur INTEGER NOT NULL,
	nomProducteur TEXT NOT NULL,
	adresseProducteur TEXT NOT NULL,
	CONSTRAINT pk_idProducteur PRIMARY KEY (idProducteur)
);

-- -------------- Clients -- --------------

CREATE TABLE Clients(
	numeroClient INTEGER NOT NULL,
	nomClient TEXT NOT NULL,
	adresseClient TEXT NOT NULL,
	typeClient TEXT CHECK (typeClient IN ('particulier', 'professionnelle')),
	previsionConsomationClient INTEGER NOT NULL,
	CONSTRAINT pk_numeroClient PRIMARY KEY (numeroClient),
	CONSTRAINT ck_previsionConsomationClient CHECK (previsionConsomationClient >= 0)
);


-- -------------- Centrales -- --------------

CREATE TABLE Centrales(
	numeroCentrale INTEGER NOT NULL,
	idProducteur INTEGER NOT NULL,
	adresseCentrale TEXT NOT NULL,
	typeTechnologie TEXT CHECK (typeTechnologie IN ('renouvelable', 'fossile', 'nucleaire')),
	technologie TEXT NOT NULL,
	prixProduction REAL NOT NULL,
	previsionProduction REAL NOT NULL,
	CONSTRAINT pk_numeroCentrale PRIMARY KEY (numeroCentrale),
	CONSTRAINT fk_Centrales_idProducteur FOREIGN KEY (idProducteur) REFERENCES Producteurs (idProducteur),
	CONSTRAINT ck_prixProduction CHECK (prixProduction >= 0),
	CONSTRAINT ch_previsionProductionCentrales CHECK (previsionProduction > 0)
);

-- -------------- Contrats -- --------------

CREATE TABLE Contrats(
	numeroContrat INTEGER NOT NULL,
	idFournisseur INTEGER NOT NULL,
	numeroClient INTEGER NOT NULL,
	typeContrat TEXT CHECK (typeContrat IN ('mensuelle', 'trimestrielle', 'biannuelle', 'annuelle')),
	dateDebut DATE NOT NULL,
	dateFin DATE,
	prixVente REAL NOT NULL,
	dureeContrat INT NOT NULL,
	CONSTRAINT pk_numeroContrat PRIMARY KEY (numeroContrat),
	CONSTRAINT fk_Contrats_idfournisseur FOREIGN KEY (idFournisseur) REFERENCES Fournisseurs (idFournisseur),
	CONSTRAINT fk_Contrats_numeroClient FOREIGN KEY (numeroClient) 	REFERENCES Clients (numeroClient),
	CONSTRAINT ck_prixVente CHECK (prixVente >= 0)
);


-- -------------- Productions -- --------------

CREATE TABLE Productions(
	idProducteur INTEGER NOT NULL,
	idFournisseur INTEGER NOT NULL,
	CONSTRAINT pk_Production_idProducteur_idFournisseur PRIMARY KEY (idProducteur, idFournisseur),
	CONSTRAINT fk_Productions_idProducteur FOREIGN KEY (idProducteur) REFERENCES Producteurs (idProducteur),
	CONSTRAINT fk_Productions_idfournisseur FOREIGN KEY (idFournisseur) REFERENCES Fournisseurs (idFournisseur)
);
	