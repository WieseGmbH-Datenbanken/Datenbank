CREATE TABLE `Produktkategorie`
(
	`Kategorie_ID` Char(10),
	`Kategorie` Char(255),
	`Beschreibung` Char(255),
	PRIMARY KEY(`Kategorie_ID`)
)
;

CREATE TABLE `Kunde`
(
	`Kunde_ID` Char(10),
	`Anrede` Char(255),
	`Name` Char(255),
	`Vorname` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Zahlungsart` Char(255),
	PRIMARY KEY(`Kunde_ID`)	
)
;

CREATE TABLE `Mitarbeiter`
(
	`Mitarbeiter_ID` Char(10),
	`Funktion` Char(255),
	`Anrede` Char(255),
	`Vorname` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Lohn` Money,
	PRIMARY KEY(`Mitarbeiter_ID`)
)
;

CREATE TABLE `Lieferant`
(
	`Lieferant_ID` Char(10),
	`Name` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Mitarbeiter_ID` Char(10),
	PRIMARY KEY(`Lieferant_ID`),
	FOREIGN KEY(`Mitarbeiter_ID`)
		REFERENCES `Mitarbeiter`(`Mitarbeiter_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Adresse`
(
	`Adresse_ID` Char(10),
	`Strasse` Char(255),
	`PLZ` Char(255),
	`Ort` Char(255),
	`Lieferant_ID` Char(10) NULL,
	`Mitarbeiter_ID` Char(10) NULL,
	`Kunde_ID` Char(10) NULL,
	PRIMARY KEY(`Adresse_ID`),
	FOREIGN KEY(`Mitarbeiter_ID`)
		REFERENCES `Mitarbeiter`(`Mitarbeiter_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`Kunde_ID`)
		REFERENCES `Kunde`(`Kunde_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`Lieferant_ID`)
		REFERENCES `Lieferant`(`Lieferant_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Kundenbestellung`
(
	`Auftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Kunde_ID` Char(10),
	`Mitarbeiter_ID` Char(10),
	PRIMARY KEY(`Auftrag_ID`),
	FOREIGN KEY(`Kunde_ID`)
		REFERENCES `Kunde`(`Kunde_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`Mitarbeiter_ID`)
		REFERENCES `Mitarbeiter`(`Mitarbeiter_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Artikel`
(
	`Artikel_ID` Char(10),
	`Name` Char(255),
	`Beschreibung` Char(255),
	`Verkaufspreis` Money,
	`Auftrag_ID` Char(10),
	PRIMARY KEY(`Artikel_ID`),
	FOREIGN KEY(`Auftrag_ID`)
		REFERENCES `Kundenbestellung`(`Auftrag_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Produkt`
(
	`Produkt_ID` Char(10),
	`Name` Char(255),
	`Einkaufspreis` Money,
	`Lagerbestand` int,
	`Mindestbestand` int,
	`Kategorie_ID` Char(10),
	`Lieferant_ID` Char(10),
	PRIMARY KEY(`Produkt_ID`),
	FOREIGN KEY(`Kategorie_ID`)
		REFERENCES `Produktkategorie`(`Kategorie_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`Lieferant_ID`)
		REFERENCES `Lieferant`(`Lieferant_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Produkt_Artikel`
(
	`Produkt_ID` Char(10),
	`Artikel_ID` Char(10),
	PRIMARY KEY(`Produkt_ID`,`Artikel_ID`),
	FOREIGN KEY(`Produkt_ID`)
		REFERENCES `Produkt`(`Produkt_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`Artikel_ID`)
		REFERENCES `Artikel`(`Artikel_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Lieferantenbestellung`
(
	`LAuftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Lieferant_ID` Char(10),
	PRIMARY KEY(`LAuftrag_ID`),
	FOREIGN KEY(`Lieferant_ID`)
		REFERENCES `Lieferant`(`Lieferant_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Lieferantenbestellung_Produkt`
(
	`LAuftrag_ID` Char(10),	
	`Produkt_ID` Char(10),
	PRIMARY KEY(`LAuftrag_ID`,`Produkt_ID`),
	FOREIGN KEY(`Produkt_ID`)
		REFERENCES `Produkt`(`Produkt_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`LAuftrag_ID`)
		REFERENCES `Lieferantenbestellung`(`LAuftrag_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;
















