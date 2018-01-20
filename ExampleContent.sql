/*
	INSERT für die Tabelle Mitarbeiter 
    Values(`Mitarbeiter_ID` Char(10),
	`Funktion` Char(255),
	`Anrede` Char(255),
    `Name` Char(225),
	`Vorname` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Lohn` Double,)
*/
INSERT INTO mitarbeiter VALUES('1', 'Verkäufer', 'Herr', 'Meier', 'Oliver', '0175 845621', 'OMeier@gmx.de', 132, '3000');



/*
	INSERT für die Tabelle Kunde
	Values(`Kunde_ID` Char(10),
	`Anrede` Char(255),
	`Name` Char(255),
	`Vorname` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Zahlungsart` Char(255),)
*/
INSERT INTO kunde VALUES('1', 'Frau', 'Schmidt', 'Vanessa', '1873 1674582', 'VaniSchmidt@yahoo.de', 'PayPal');


/*
	INSERT für die Tabelle Produktkategorie
    Values(`Kategorie_ID` Char(10),
	`Kategorie` Char(255),
	`Beschreibung` Char(255),)
*/
INSERT INTO produktkategorie VALUES('1', 'Reifen', '');


/*
	INSERT für die Tabelle Lieferant
    Values(`Lieferant_ID` Char(10),
	`Name` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO lieferant VALUES('1', 'Audi', '0175 9768253', 'audiVetrieb@google.de', 675 , '1');


/*
	Insert für die Tabelle Adresse
	Values(`Adresse_ID` Char(10),
	`Strasse` Char(255),
	`PLZ` Char(255),
	`Ort` Char(255),
	`Lieferant_ID` Char(10) NULL,
	`Mitarbeiter_ID` Char(10) NULL,
	`Kunde_ID` Char(10) NULL,)
*/
INSERT INTO adresse VALUES('1', 'Atilleriestraße', '50529', 'Pulheim', NULL, '1', NULL);


/*
	INSERT für die Tabelle Kundenbestellung
    Values(`Auftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Kunde_ID` Char(10),
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO kundenbestellung VALUES('1', '07.01.2018', true, '1', '1');


/*
	INSERT für die Tabelle Artikel
    Values(`Artikel_ID` Char(10),
	`Name` Char(255),
	`Beschreibung` Char(255),
	`Verkaufspreis` Double,
	`Auftrag_ID` Char(10),)
*/
INSERT INTO artikel VALUES('1', 'Reifen Set', 'Geeignet für extreme Bedingungen', 480, '1');


/*
	INSERT für die Tabelle Produkt
    Values(`Produkt_ID` Char(10),
	`Name` Char(255),
	`Einkaufspreis` Double,
	`Lagerbestand` int,
	`Mindestbestand` int,
	`Kategorie_ID` Char(10),
	`Lieferant_ID` Char(10),)
*/
INSERT INTO produkt VALUES('1', 'Autoreifen', '120', 1589, 1000, '1', '1');


/*
	INSERT für Zwischentabelle Produkt_Artikel
    Values(`Produkt_ID` Char(10),
	`Artikel_ID` Char(10),)
*/
INSERT INTO produkt_artikel VALUES('1', '1');


/*
	INSERT für die Tabelle Lieferantenbestellung
    Values(`LAuftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Lieferant_ID` Char(10),)
*/
INSERT INTO lieferantenbestellung VALUES('1', '20.1.2018', false, '1');


/*
	INSERT für die Zwischentabelle Lieferantenbestellung_Produkt
    Values(`LAuftrag_ID` Char(10),	
	`Produkt_ID` Char(10),)
*/
INSERT INTO lieferantenbestellung_produkt VALUES('1', '1');