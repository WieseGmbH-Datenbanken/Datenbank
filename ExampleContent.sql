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
INSERT INTO mitarbeiter (Funktion, Anrede, Name, Vorname, Telefon, Email, Steuernummer, Lohn)
VALUES('Verkäufer', 'Herr', 'Meier', 'Oliver', '0175 845621', 'OMeier@gmx.de', 1329763, '3000'),
('Verkäufer', 'Herr', 'Müller', 'Helmut', '0175 975631', 'HMüller@gmx.de', 1321984, '3000'),
('Manager', 'Herr', 'Hoffmann', 'Michael', '0175 761458', 'MHoffmann@gmx.de', 132975, '4500'),
('Support', 'Frau', 'Meier', 'Natalie', '0175 97158426', 'MMeier@gmx.de', 1329487, '2500'),
('Finanzmanager', 'Frau', 'Manns', 'Olivia', '0175 88452111', 'OManns@gmx.de', 1327845, '2800'),
('Chef', 'Frau', 'Behrens', 'Magda', '0175 88452845', 'MBehrens@gmx.de', 7891452, '5000'),
('Logistiker', 'Herr', 'Logik', 'Stefan', '0177 78452111', 'SLogik@gmx.de', 1379845, '2900'),
('Verkäufer', 'Herr', 'Nickel', 'Günter', '0175 4452111', 'GNickel@gmx.de', 7851246, '3000'),
('Verkäufer', 'Frau', 'Gold', 'Sarah', '0175 8846411', 'SGold@gmx.de', 1327532, '3000'),
('Personalmanager', 'Herr', 'Eisen', 'Ole', '0148 87532111', 'OEisen@gmx.de', 9827845, '2800');




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
INSERT INTO kunde (Anrede, Name, Vorname, Telefon, Email, Zahlungsart)
VALUES('Frau', 'Schmidt', 'Vanessa', '1873 1674582', 'VaniSchmidt@yahoo.de', 'PayPal'),
('Herr', 'Schmidt', 'Tim', '1873 7539518', 'TimSchmidt@yahoo.de', 'PayPal'),
('Herr', 'Klaas', 'Oliver', '1893 741852', 'KOliver@google.de', 'Direktüberweisung'),
('Frau', 'Kerze', 'Hannah', '0175 8426597', 'HannahK@yahoo.de', 'PayPal'),
('Frau', 'Waal', 'Andrea', '1789 7589641', 'AWaal@gmx.de', 'PayPal'),
('Frau', 'Heinrich', 'Lisa', '0176 3234623', 'LHeinrich@gmx.de', 'Lastschrift'),
('Herr', 'Schulz', 'Axel', '1789 4352346', 'ASchulz@web.de', 'Direktüberweisung'),
('Herr', 'Wagner', 'Carsten', '1789 424757', 'CWagner@yahoo.de', 'Paypal'),
('Frau', 'Wiese', 'Margaret', '1789 2196446', 'MargaretWiese@gmx.de', 'PayPal'),
('Herr', 'Lingsch', 'Horst', '0571 7589644', 'HorstLingsch@web.de', 'Lastschrift'),
('Herr', 'Köller', 'Andreas', '0571 5977469', 'AKöller@gmx.de', 'PayPal');


/*
	INSERT für die Tabelle Produktkategorie
    Values(`Kategorie_ID` Char(10),
	`Kategorie` Char(255),
	`Beschreibung` Char(255),)
*/
INSERT INTO produktkategorie (Kategorie, Beschreibung)
VALUES('Sommerreifen', 'Sommerreifen für das Auto'),
('Winterreifen', 'Winterreifen für das Auto'),
('Bremse', 'Bremsscheiben und Bremsklötze'),
('Radio', 'Autoradio'),
('Polzster', 'Sitzbezüge'),
('Boden', 'Gummimatten zum Unterlegen'),
('Auspuff', 'Auto-Auspuff'),
('Motor', 'Teile für den Automotor'),
('Karosserie', 'Teile für die Autokarosserie');


/*
	INSERT für die Tabelle Lieferant
    Values(`Lieferant_ID` Char(10),
	`Name` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO lieferant (Name, Telefon, Email, Steuernummer, Mitarbeiter_ID) 
VALUES('Audi', '0175 9768253', 'audiVetrieb@google.de', 6757531 , 1),
( 'Volkswagen', '0175 79135482', 'VWWerke@gmx.de', 9272354 , 1),
( 'TAV Autoverwertung', '0571 36863', 'TAVAuto@yahoo.de', 7315482 , 2),
( 'Kenwood', '0158 7945281', 'Kenwood@yahoo.de', 1652487 , 2);



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
INSERT INTO adresse (Strasse, PLZ, Ort, Lieferant_ID, Mitarbeiter_ID, Kunde_ID)
VALUES( 'Königsstraße 21', '32427', 'Minden', NULL, 1, NULL),
( 'Am Kolk', '32427', 'Minden', NULL, 2, NULL),
( 'Atilleriestraße 4', '32427', 'Minden', NULL, 3, NULL),
( 'Hohenstaufenring 22', '32427', 'Minden', NULL, 4, NULL),
( 'Bismarckstraße 5', '32427', 'Minden', NULL, 5, NULL),
( 'Ringstraße 9', '32427', 'Minden', 1, NULL, NULL),
( 'Berliner Ring 2', '38440', 'Wolfsburg', 2, NULL, NULL),
( 'An der Stadtmühle 2', '32423', 'Minden', 3, NULL, NULL),
( 'Musterstraße 9', '50529', 'Pulheim', NULL, NULL, 1),
( 'Napoleonstraße 2', '31749', 'Auetal', NULL, NULL, 2),
( 'Westerholz 10', '31749', 'Auetal', NULL, NULL, 3),
( 'Rahdener Straße 11', '32339', 'Lübbecke', NULL, NULL, 4),
( 'Hahler Straße 4', '32427', 'Minden', NULL, NULL, 5),
( 'Bergstraße 7', '85221', 'Dachau', 4, NULL, NULL),
( 'Königsstraße 23', '32427', 'Minden', NULL, 6, NULL),
( 'Hahler Straße 21', '32427', 'Minden', NULL, 7, NULL),
( 'Königswall 2', '32427', 'Minden', NULL, 8, NULL),
( 'Hohenzollernring 21', '32427', 'Minden', NULL, 9, NULL),
( 'Portastraße 1', '32427', 'Minden', NULL, 10, NULL),
( 'Bärenburger Straße 34', '31749', 'Auetal', NULL, NULL, 5),
( 'Hahler Straße 6', '32427', 'Minden', NULL, NULL, 6),
( 'Bismarckstraße 30', '32427', 'Minden', NULL, NULL, 7),
( 'Petersstraße 2', '10585', 'Berlin', NULL, NULL, 8),
( 'Weizstraße 26', '10707', 'Berlin', NULL, NULL, 9),
( 'Besenstraße 13', '38440', 'Wolfsburg', NULL, NULL, 10),
( 'Napoleonstraße 23', '31749', 'Auetal', NULL, NULL, 11);


/*
	INSERT für die Tabelle Kundenbestellung
    Values(`Auftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Kunde_ID` Char(10),
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO kundenbestellung (Auftragsdatum, Status, Kunde_ID, Mitarbeiter_ID)
VALUES( STR_TO_DATE('1/02/2018 8:06:26 AM', '%c/%e/%Y %r'), true, 1, 1),
( STR_TO_DATE('1/10/2018 10:53:26 AM', '%c/%e/%Y %r'), true, 2, 2),
( STR_TO_DATE('1/15/2018 11:06:26 AM', '%c/%e/%Y %r'), true, 3, 2),
( STR_TO_DATE('1/20/2018 7:46:48 AM', '%c/%e/%Y %r'), false, 3, 2),
( STR_TO_DATE('1/23/2018 4:46:36 PM', '%c/%e/%Y %r'), true, 5, 1),
( STR_TO_DATE('1/23/2018 6:46:36 PM', '%c/%e/%Y %r'), false, 4, 1),
( STR_TO_DATE('1/24/2018 6:48:36 PM', '%c/%e/%Y %r'), false, 6, 8),
( STR_TO_DATE('1/26/2018 7:46:36 PM', '%c/%e/%Y %r'), false, 7, 9),
( STR_TO_DATE('1/29/2018 5:42:36 PM', '%c/%e/%Y %r'), false, 8, 7);

/*
	INSERT für die Tabelle Artikel
    Values(`Artikel_ID` Char(10),
	`Name` Char(255),
	`Beschreibung` Char(255),
	`Verkaufspreis` Double,
	`Auftrag_ID` Char(10),)
*/
INSERT INTO artikel (Name, Beschreibung, Verkaufspreis, Auftrag_ID)
VALUES( 'Reifen Set Sommer', 'Michelin Energy Saver+ 205/55 R16 91V Sommerreifen ', 480, 1),
( 'Reifen Set Winter', 'Michelin Alpin 5 205/55 R16 91H M+S Winterreifen', 480, 2),
( '2er Set Bremsen', 'Ein Set aus 2 Bremsscheiben und Bremsbeläge, Innenbelüftet', 300, 3),
( '4er Set Bremsen', 'Ein Set aus 4 Bremsscheiben und Bremsbeläge ', 600, 4),
( 'Kenwood Autoradio', 'Autoradio mit AUX-Anschluss und Bluetoothfunktion', 80, 5),
( 'Sportliche Sitzbezüge', 'Sitzbezüge für Vordersitze und Rückbank, geeignet für VW Polo und Golf', 70, 6),
( 'Leistungsstarke Autobatterie', 'Hält länger als andere Batterien!', 50, 7),
( 'Katalysator', 'Fängt mehr Schadstoffe ab als andere!', 100, 8),
( 'Heckverkleidung', 'Heckverkleidung für VW Polo', 120, 9);


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
INSERT INTO produkt (Name, Einkaufspreis, Lagerbestand, Mindestbestand, Kategorie_ID, Lieferant_ID)
VALUES( 'Michelin Sommerreifen', 120, 1589, 1000, 1, 1),
( 'Kenwood Radio', 80, 1000, 800, 4, 4),
( 'Walser Autositzbezug', 70, 800, 890, 5, 2),
( 'Purework Auto-Gummimatten', 30, 800, 803, 6, 3),
( 'Michelin Winterreifen', 120, 1402, 1000, 2, 1),
( 'Bremsscheiben und Beläge', 150, 1203, 900, 2, 1),
( 'Autobatterie', 50, 500, 300, 8, 1),
( 'Katalysator', 100, 600, 700, 7, 2),
( 'Heckverkleidung', 120, 550, 500, 9, 3);




/*
	INSERT für Zwischentabelle Produkt_Artikel
    Values(`Produkt_ID` Char(10),
	`Artikel_ID` Char(10),)
*/
INSERT INTO produkt_artikel VALUES(1, 1);
INSERT INTO produkt_artikel VALUES(5, 2);
INSERT INTO produkt_artikel VALUES(6, 3);
INSERT INTO produkt_artikel VALUES(6, 4);
INSERT INTO produkt_artikel VALUES(2, 5);
INSERT INTO produkt_artikel VALUES(3, 6);
INSERT INTO produkt_artikel VALUES(7, 7);
INSERT INTO produkt_artikel VALUES(8, 8);
INSERT INTO produkt_artikel VALUES(9, 9);


/*
	INSERT für die Tabelle Lieferantenbestellung
    Values(`LAuftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Lieferant_ID` Char(10),)
*/
INSERT INTO lieferantenbestellung (Auftragsdatum, Status, Lieferant_ID)
VALUES( STR_TO_DATE('1/08/2018 10:06:26 AM', '%c/%e/%Y %r'), true, 1),
( STR_TO_DATE('1/12/2018 12:16:26 PM', '%c/%e/%Y %r'), false, 4),
( STR_TO_DATE('1/15/2018 2:56:25 PM', '%c/%e/%Y %r'), true, 2),
( STR_TO_DATE('1/20/2018 11:26:46 AM', '%c/%e/%Y %r'), false, 3),
( STR_TO_DATE('1/23/2018 08:44:23 AM', '%c/%e/%Y %r'), true, 2),
( STR_TO_DATE('1/25/2018 5:42:20 PM', '%c/%e/%Y %r'), true, 1),
( STR_TO_DATE('1/27/2018 07:30:15 AM', '%c/%e/%Y %r'), false, 2),
( STR_TO_DATE('1/29/2018 3:23:58 PM', '%c/%e/%Y %r'), false, 3);





/*
	INSERT für die Zwischentabelle Lieferantenbestellung_Produkt
    Values(`LAuftrag_ID` Char(10),	
	`Produkt_ID` Char(10),)
*/
INSERT INTO lieferantenbestellung_produkt VALUES(1, 1);
INSERT INTO lieferantenbestellung_produkt VALUES(2, 2);
INSERT INTO lieferantenbestellung_produkt VALUES(3, 3);
INSERT INTO lieferantenbestellung_produkt VALUES(4, 4);
INSERT INTO lieferantenbestellung_produkt VALUES(5, 5);
INSERT INTO lieferantenbestellung_produkt VALUES(6, 7);
INSERT INTO lieferantenbestellung_produkt VALUES(7, 8);
INSERT INTO lieferantenbestellung_produkt VALUES(8, 9);


