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
INSERT INTO mitarbeiter VALUES('1', 'Verkäufer', 'Herr', 'Meier', 'Oliver', '0175 845621', 'OMeier@gmx.de', 1329763, '3000');
INSERT INTO mitarbeiter VALUES('2', 'Verkäufer', 'Herr', 'Müller', 'Helmut', '0175 975631', 'HMüller@gmx.de', 1321984, '3000');
INSERT INTO mitarbeiter VALUES('3', 'Manager', 'Herr', 'Hoffmann', 'Michael', '0175 761458', 'MHoffmann@gmx.de', 132975, '4500');
INSERT INTO mitarbeiter VALUES('4', 'Support', 'Frau', 'Meier', 'Natalie', '0175 97158426', 'MMeier@gmx.de', 1329487, '2500');
INSERT INTO mitarbeiter VALUES('5', 'Finanzmanager', 'Frau', 'Manns', 'Olivia', '0175 88452111', 'OManns@gmx.de', 1327845, '2800');



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
INSERT INTO kunde VALUES('2', 'Herr', 'Schmidt', 'Tim', '1873 7539518', 'TimSchmidt@yahoo.de', 'PayPal');
INSERT INTO kunde VALUES('3', 'Herr', 'Klaas', 'Oliver', '1893 741852', 'KOliver@google.de', 'PayPal');
INSERT INTO kunde VALUES('4', 'Frau', 'Kerze', 'Hannah', '0175 8426597', 'HannahK@yahoo.de', 'PayPal');
INSERT INTO kunde VALUES('5', 'Frau', 'Waal', 'Andrea', '1789 7589641', 'AWaal@gmx.de', 'PayPal');


/*
	INSERT für die Tabelle Produktkategorie
    Values(`Kategorie_ID` Char(10),
	`Kategorie` Char(255),
	`Beschreibung` Char(255),)
*/
INSERT INTO produktkategorie VALUES('1', 'Sommerreifen', 'Sommerreifen für das Auto');
INSERT INTO produktkategorie VALUES('2', 'Winterreifen', 'Winterreifen für das Auto');
INSERT INTO produktkategorie VALUES('3', 'Bremse', 'Bremsscheiben und Bremsklötze');
INSERT INTO produktkategorie VALUES('4', 'Radio', 'Autoradio');
INSERT INTO produktkategorie VALUES('5', 'Polzster', 'Sitzbezüge');
INSERT INTO produktkategorie VALUES('6', 'Boden', 'Gummimatten zum Unterlegen');


/*
	INSERT für die Tabelle Lieferant
    Values(`Lieferant_ID` Char(10),
	`Name` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO lieferant VALUES('1', 'Audi', '0175 9768253', 'audiVetrieb@google.de', 6757531 , '1');
INSERT INTO lieferant VALUES('2', 'Volkswagen', '0175 79135482', 'VWWerke@gmx.de', 9272354 , '1');
INSERT INTO lieferant VALUES('3', 'TAV Autoverwertung', '0571 36863', 'TAVAuto@yahoo.de', 7315482 , '2');
INSERT INTO lieferant VALUES('4', 'Kenwood', '0158 7945281', 'Kenwood@yahoo.de', 1652487 , '2');



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
INSERT INTO adresse VALUES('1', 'Königsstraße 21', '32427', 'Minden', NULL, '1', NULL);
INSERT INTO adresse VALUES('2', 'Am Kolk', '32427', 'Minden', NULL, '2', NULL);
INSERT INTO adresse VALUES('3', 'Atilleriestraße 4', '32427', 'Minden', NULL, '3', NULL);
INSERT INTO adresse VALUES('4', 'Hohenstaufenring 22', '32427', 'Minden', NULL, '4', NULL);
INSERT INTO adresse VALUES('5', 'Bismarckstarße 5', '32427', 'Minden', NULL, '5', NULL);
INSERT INTO adresse VALUES('6', 'Ringstraße 9', '32427', 'Minden', '1', NULL, NULL);
INSERT INTO adresse VALUES('7', 'Berliner Ring 2', '38440', 'Wolfsburg', '2', NULL, NULL);
INSERT INTO adresse VALUES('8', 'An der Stadtmühle 2', '32423', 'Minden', '3', NULL, NULL);
INSERT INTO adresse VALUES('9', 'Musterstraße 9', '50529', 'Pulheim', NULL, NULL, '1');
INSERT INTO adresse VALUES('10', 'Napoleonstraße 2', '31749', 'Auetal', NULL, NULL, '2');
INSERT INTO adresse VALUES('11', 'Westerholz 10', '31749', 'Auetal', NULL, NULL, '3');
INSERT INTO adresse VALUES('12', 'Rahdener Straße 11', '32339', 'Lübbecke', NULL, NULL, '4');
INSERT INTO adresse VALUES('13', 'Hahler Straße 4', '32427', 'Minden', NULL, NULL, '5');
INSERT INTO adresse VALUES('13', 'Bergstraße 7', '85221', 'Dachau', '3', NULL, NULL);

/*
	INSERT für die Tabelle Kundenbestellung
    Values(`Auftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Kunde_ID` Char(10),
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO kundenbestellung VALUES('1', STR_TO_DATE('1/02/2018 8:06:26 AM', '%c/%e/%Y %r'), true, '1', '1');
INSERT INTO kundenbestellung VALUES('2', STR_TO_DATE('1/10/2018 10:53:26 AM', '%c/%e/%Y %r'), true, '2', '2');
INSERT INTO kundenbestellung VALUES('3', STR_TO_DATE('1/15/2018 11:06:26 AM', '%c/%e/%Y %r'), true, '3', '2');
INSERT INTO kundenbestellung VALUES('4', STR_TO_DATE('1/20/2018 7:46:48 AM', '%c/%e/%Y %r'), true, '3', '2');
INSERT INTO kundenbestellung VALUES('5', STR_TO_DATE('1/23/2018 16:46:36 PM', '%c/%e/%Y %r'), true, '5', '1');
INSERT INTO kundenbestellung VALUES('6', STR_TO_DATE('1/23/2018 18:46:36 PM', '%c/%e/%Y %r'), true, '4', '1');


/*
	INSERT für die Tabelle Artikel
    Values(`Artikel_ID` Char(10),
	`Name` Char(255),
	`Beschreibung` Char(255),
	`Verkaufspreis` Double,
	`Auftrag_ID` Char(10),)
*/
INSERT INTO artikel VALUES('1', 'Reifen Set Sommer', 'Michelin Energy Saver+ 205/55 R16 91V Sommerreifen ', 480, '1');
INSERT INTO artikel VALUES('2', 'Reifen Set Winter', 'Michelin Alpin 5 205/55 R16 91H M+S Winterreifen', 480, '2');
INSERT INTO artikel VALUES('3', '2er Set Bremsen', 'Ein Set aus 2 Bremsscheiben und Bremsbeläge, Innenbelüftet', 300, '3');
INSERT INTO artikel VALUES('4', '4er Set Bremsen', 'Ein Set aus 4 Bremsscheiben und Bremsbeläge ', 600, '4');
INSERT INTO artikel VALUES('5', 'Kenwood Autoradio', 'Autoradio mit AUX-Anschluss und Bluetoothfunktion', 80, '5');
INSERT INTO artikel VALUES('6', 'Sportliche Sitzbezüge', 'Sitzbezüge für Vordersitze und Rückbank, geeignet für VW Polo und Golf', 70, '6');


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
INSERT INTO produkt VALUES('1', 'Michelin Sommerreifen', 120, 1589, 1000, '1', '1');
INSERT INTO produkt VALUES('2', 'Kenwood Radio', 80, 1589, 1000, '4', '4');
INSERT INTO produkt VALUES('3', 'Walser Autositzbezug', 70, 1589, 1000, '5', '2');
INSERT INTO produkt VALUES('4', 'Purework Auto-Gummimatten', 30, 1589, 1000, '6', '3');
INSERT INTO produkt VALUES('5', 'Michelin Winterreifen', 120, 1589, 1000, '2', '1');
INSERT INTO produkt VALUES('5', 'Bremsscheiben und Beläge', 150, 1589, 1000, '2', '1');




/*
	INSERT für Zwischentabelle Produkt_Artikel
    Values(`Produkt_ID` Char(10),
	`Artikel_ID` Char(10),)
*/
INSERT INTO produkt_artikel VALUES('1', '1');
INSERT INTO produkt_artikel VALUES('5', '2');
INSERT INTO produkt_artikel VALUES('5', '3');
INSERT INTO produkt_artikel VALUES('5', '4');
INSERT INTO produkt_artikel VALUES('2', '5');
INSERT INTO produkt_artikel VALUES('3', '6');


/*
	INSERT für die Tabelle Lieferantenbestellung
    Values(`LAuftrag_ID` Char(10),
	`Auftragsdatum` Datetime,
	`Status` Bool,
	`Lieferant_ID` Char(10),)
*/
INSERT INTO lieferantenbestellung VALUES('1', STR_TO_DATE('1/08/2018 10:06:26 AM', '%c/%e/%Y %r'), false, '1');
INSERT INTO lieferantenbestellung VALUES('2', STR_TO_DATE('1/12/2018 12:16:26 AM', '%c/%e/%Y %r'), false, '4');
INSERT INTO lieferantenbestellung VALUES('3', STR_TO_DATE('1/15/2018 14:56:25 AM', '%c/%e/%Y %r'), false, '2');
INSERT INTO lieferantenbestellung VALUES('4', STR_TO_DATE('1/20/2018 11:26:46 AM', '%c/%e/%Y %r'), false, '3');
INSERT INTO lieferantenbestellung VALUES('5', STR_TO_DATE('1/23/2018 08:44:23 AM', '%c/%e/%Y %r'), false, '2');




/*
	INSERT für die Zwischentabelle Lieferantenbestellung_Produkt
    Values(`LAuftrag_ID` Char(10),	
	`Produkt_ID` Char(10),)
*/
INSERT INTO lieferantenbestellung_produkt VALUES('1', '1');
INSERT INTO lieferantenbestellung_produkt VALUES('2', '2');
INSERT INTO lieferantenbestellung_produkt VALUES('3', '3');
INSERT INTO lieferantenbestellung_produkt VALUES('4', '4');
INSERT INTO lieferantenbestellung_produkt VALUES('5', '5');


