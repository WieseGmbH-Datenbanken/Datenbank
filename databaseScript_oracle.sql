CREATE TABLE Produktkategorie
(
	Kategorie_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Kategorie Char(255) NOT NULL,
	Beschreibung Char(255) NOT NULL,
	PRIMARY KEY(Kategorie_ID)
)
;

CREATE TABLE Adresse
(
	Adresse_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Strasse Char(255) NOT NULL,
	PLZ Char(255) NOT NULL,
	Ort Char(255) NOT NULL,
	PRIMARY KEY(Adresse_ID)
)
;

CREATE TABLE Kunde
(
	Kunde_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Anrede Char(255) NOT NULL,
	Name Char(255) NOT NULL,
	Vorname Char(255) NOT NULL,
	Telefon Char(255) NOT NULL,
	Email Char(255) NOT NULL,
	Zahlungsart Char(255) NOT NULL,
	Adresse_ID INTEGER NOT NULL,
	PRIMARY KEY(Kunde_ID),
	FOREIGN KEY (Adresse_ID)
		REFERENCES Adresse(Adresse_ID)
)
;

CREATE TABLE Mitarbeiter
(
	Mitarbeiter_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Funktion Char(255) NOT NULL,
	Anrede Char(255) NOT NULL,
	Vorname Char(255) NOT NULL,
	Telefon Char(255) NOT NULL,
	Email Char(255) NOT NULL,
	Steuernummer Int NOT NULL,
	Lohn Double NOT NULL,
	Adresse_ID INTEGER NOT NULL,
	PRIMARY KEY(Mitarbeiter_ID),
	FOREIGN KEY (Adresse_ID)
		REFERENCES Adresse(Adresse_ID)
)
;

CREATE TABLE Lieferant
(
	Lieferant_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Name Char(255) NOT NULL,
	Telefon Char(255) NOT NULL,
	Email Char(255) NOT NULL,
	Steuernummer Int NOT NULL,
	Mitarbeiter_ID INTEGER NOT NULL,
	Adresse_ID INTEGER NOT NULL,
	PRIMARY KEY(Lieferant_ID) NOT NULL,
	FOREIGN KEY(Mitarbeiter_ID)
		REFERENCES Mitarbeiter(Mitarbeiter_ID),
	FOREIGN KEY (Adresse_ID)
		REFERENCES Adresse(Adresse_ID)
)
;

CREATE TABLE Kundenbestellung
(
	Auftrag_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Auftragsdatum Datetime NOT NULL,
	Status Bool NOT NULL,
	Kunde_ID INTEGER NOT NULL,
	Mitarbeiter_ID INTEGER NOT NULL,
	PRIMARY KEY(Auftrag_ID),
	FOREIGN KEY(Kunde_ID)
		REFERENCES Kunde(Kunde_ID),
	FOREIGN KEY(Mitarbeiter_ID)
		REFERENCES Mitarbeiter(Mitarbeiter_ID),
)
;

CREATE TABLE Artikel
(
	Artikel_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Name Char(255) NOT NULL,
	Beschreibung Char(255) NOT NULL,
	Verkaufspreis Double NOT NULL,
	PRIMARY KEY(Artikel_ID) NOT NULL,
)
;

CREATE TABLE Artikel_Kundenbestellung
(
	Artikel_ID INTEGER NOT NULL,
	Auftrag_ID INTEGER NOT NULL,
	PRIMARY KEY(Artikel_ID) NOT NULL,
	FOREIGN KEY(Artikel_ID)
		REFERENCES Artikel(Artikel_ID),
	FOREIGN KEY(Auftrag_ID)
		REFERENCES Kundenbestellung(Auftrag_ID)
)
;

CREATE TABLE Produkt
(
	Produkt_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Name Char(255) NOT NULL,
	Einkaufspreis Double NOT NULL,
	Lagerbestand int NOT NULL,
	Mindestbestand int NOT NULL,
	Kategorie_ID INTEGER NOT NULL,
	Lieferant_ID INTEGER NOT NULL,
	PRIMARY KEY(Produkt_ID),
	FOREIGN KEY(Kategorie_ID)
		REFERENCES Produktkategorie(Kategorie_ID),
	FOREIGN KEY(Lieferant_ID)
		REFERENCES Lieferant(Lieferant_ID)
)
;

CREATE TABLE Produkt_Artikel
(
	Produkt_ID INTEGER NOT NULL,
	Artikel_ID INTEGER NOT NULL,
	PRIMARY KEY(Produkt_ID,Artikel_ID),
	FOREIGN KEY(Produkt_ID)
		REFERENCES Produkt(Produkt_ID),
	FOREIGN KEY(Artikel_ID)
		REFERENCES Artikel(Artikel_ID)
)
;

CREATE TABLE Lieferantenbestellung
(
	LAuftrag_ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY(START with 1 INCREMENT by 1),
	Auftragsdatum Datetime NOT NULL,
	Status Bool NOT NULL,
	Lieferant_ID INTEGER NOT NULL,
	PRIMARY KEY(LAuftrag_ID),
	FOREIGN KEY(Lieferant_ID)
		REFERENCES Lieferant(Lieferant_ID)
)
;

CREATE TABLE Lieferantenbestellung_Produkt
(
	LAuftrag_ID INTEGER NOT NULL,	
	Produkt_ID INTEGER NOT NULL,
	PRIMARY KEY(LAuftrag_ID,Produkt_ID),
	FOREIGN KEY(Produkt_ID)
		REFERENCES Produkt(Produkt_ID),
	FOREIGN KEY(LAuftrag_ID)
		REFERENCES Lieferantenbestellung(LAuftrag_ID)
)
;
















