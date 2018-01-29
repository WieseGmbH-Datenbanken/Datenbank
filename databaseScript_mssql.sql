CREATE TABLE Produktkategorie
(
	Kategorie_ID INTEGER NOT NULL IDENTITY(1,1),
	Kategorie Char(255) NOT NULL,
	Beschreibung Char(255) NOT NULL,
	PRIMARY KEY(Kategorie_ID)
)
go

CREATE TABLE Kunde
(
	Kunde_ID INTEGER NOT NULL IDENTITY(1,1),
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
		ON DELETE CASCADE ON UPDATE CASCADE	
)
go

CREATE TABLE Mitarbeiter
(
	Mitarbeiter_ID INTEGER NOT NULL IDENTITY(1,1),
	Funktion Char(255) NOT NULL,
	Anrede Char(255) NOT NULL,
	Vorname Char(255) NOT NULL,
	Telefon Char(255) NOT NULL,
	Email Char(255) NOT NULL,
	Steuernummer INTEGER NOT NULL,
	Lohn float NOT NULL,
	Adresse_ID INTEGER NOT NULL,
	PRIMARY KEY(Mitarbeiter_ID),
	FOREIGN KEY (Adresse_ID)
		REFERENCES Adresse(Adresse_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
)
go

CREATE TABLE Lieferant
(
	Lieferant_ID INTEGER NOT NULL IDENTITY(1,1),
	Name Char(255) NOT NULL,
	Telefon Char(255) NOT NULL,
	Email Char(255) NOT NULL,
	Steuernummer INTEGER NOT NULL,
	Mitarbeiter_ID INTEGER NOT NULL,
	Adresse_ID INTEGER NOT NULL,
	PRIMARY KEY(Lieferant_ID),
	FOREIGN KEY (Mitarbeiter_ID)
		REFERENCES Mitarbeiter(Mitarbeiter_ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Adresse_ID)
		REFERENCES Adresse(Adresse_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
)
go

CREATE TABLE Adresse
(
	Adresse_ID INTEGER NOT NULL IDENTITY(1,1),
	Strasse Char(255) NOT NULL,
	PLZ Char(255) NOT NULL,
	Ort Char(255) NOT NULL,
	PRIMARY KEY(Adresse_ID)
)
go

CREATE TABLE Kundenbestellung
(
	Auftrag_ID INTEGER NOT NULL IDENTITY(1,1),
	Auftragsdatum Datetime NOT NULL,
	Status Bit NOT NULL,
	Kunde_ID INTEGER NOT NULL,
	Mitarbeiter_ID INTEGER NOT NULL,
	Artikel_ID INTEGER NOT NULL,
	PRIMARY KEY(Auftrag_ID),
	FOREIGN KEY(Kunde_ID)
		REFERENCES Kunde(Kunde_ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(Mitarbeiter_ID)
		REFERENCES Mitarbeiter(Mitarbeiter_ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(Artikel_ID)
		REFERENCES Artikel(Artikel_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
)
go

CREATE TABLE Artikel
(
	Artikel_ID INTEGER NOT NULL IDENTITY(1,1),
	Name Char(255) NOT NULL,
	Beschreibung Char(255) NOT NULL,
	Verkaufspreis float NOT NULL,
	PRIMARY KEY(Artikel_ID)
)
go

CREATE TABLE Produkt
(
	Produkt_ID INTEGER NOT NULL IDENTITY(1,1),
	Name Char(255) NOT NULL,
	Einkaufspreis float NOT NULL,
	Lagerbestand int NOT NULL,
	Mindestbestand int NOT NULL,
	Kategorie_ID INTEGER NOT NULL,
	Lieferant_ID INTEGER NOT NULL,
	PRIMARY KEY(Produkt_ID),
	FOREIGN KEY(Kategorie_ID)
		REFERENCES Produktkategorie(Kategorie_ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(Lieferant_ID)
		REFERENCES Lieferant(Lieferant_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
)
go

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
go

CREATE TABLE Lieferantenbestellung
(
	LAuftrag_ID INTEGER NOT NULL IDENTITY(1,1),
	Auftragsdatum Datetime NOT NULL,
	Status BIT NOT NULL,
	Lieferant_ID INTEGER NOT NULL,
	PRIMARY KEY(LAuftrag_ID),
	FOREIGN KEY(Lieferant_ID)
		REFERENCES Lieferant(Lieferant_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
)
go

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
go
















