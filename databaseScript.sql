CREATE TABLE `Produktkategorie`
(
	`Kategorie_ID` INTEGER AUTO_INCREMENT,
	`Kategorie` Char(255),
	`Beschreibung` Char(255),
	PRIMARY KEY(`Kategorie_ID`)
)
;

CREATE TABLE `Kunde`
(
	`Kunde_ID` INTEGER AUTO_INCREMENT,
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
	`Mitarbeiter_ID` INTEGER AUTO_INCREMENT,
	`Funktion` Char(255),
	`Anrede` Char(255),
	`Vorname` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Lohn` Double,
	PRIMARY KEY(`Mitarbeiter_ID`)
)
;

CREATE TABLE `Lieferant`
(
	`Lieferant_ID` INTEGER AUTO_INCREMENT,
	`Name` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Mitarbeiter_ID` INTEGER,
	PRIMARY KEY(`Lieferant_ID`),
	FOREIGN KEY(`Mitarbeiter_ID`)
		REFERENCES `Mitarbeiter`(`Mitarbeiter_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Adresse`
(
	`Adresse_ID` INTEGER AUTO_INCREMENT,
	`Strasse` Char(255),
	`PLZ` Char(255),
	`Ort` Char(255),
	`Lieferant_ID` INTEGER NULL,
	`Mitarbeiter_ID` INTEGER NULL,
	`Kunde_ID` INTEGER NULL,
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
	`Auftrag_ID` INTEGER AUTO_INCREMENT,
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Kunde_ID` INTEGER,
	`Mitarbeiter_ID` INTEGER,
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
	`Artikel_ID` INTEGER AUTO_INCREMENT,
	`Name` Char(255),
	`Beschreibung` Char(255),
	`Verkaufspreis` Double,
	`Auftrag_ID` INTEGER,
	PRIMARY KEY(`Artikel_ID`),
	FOREIGN KEY(`Auftrag_ID`)
		REFERENCES `Kundenbestellung`(`Auftrag_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Produkt`
(
	`Produkt_ID` INTEGER AUTO_INCREMENT,
	`Name` Char(255),
	`Einkaufspreis` Double,
	`Lagerbestand` int,
	`Mindestbestand` int,
	`Kategorie_ID` INTEGER,
	`Lieferant_ID` INTEGER,
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
	`Produkt_ID` INTEGER,
	`Artikel_ID` INTEGER,
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
	`LAuftrag_ID` INTEGER AUTO_INCREMENT,
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Lieferant_ID` INTEGER,
	PRIMARY KEY(`LAuftrag_ID`),
	FOREIGN KEY(`Lieferant_ID`)
		REFERENCES `Lieferant`(`Lieferant_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;

CREATE TABLE `Lieferantenbestellung_Produkt`
(
	`LAuftrag_ID` INTEGER,	
	`Produkt_ID` INTEGER,
	PRIMARY KEY(`LAuftrag_ID`,`Produkt_ID`),
	FOREIGN KEY(`Produkt_ID`)
		REFERENCES `Produkt`(`Produkt_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY(`LAuftrag_ID`)
		REFERENCES `Lieferantenbestellung`(`LAuftrag_ID`)
		ON DELETE RESTRICT ON UPDATE RESTRICT
)
;
















