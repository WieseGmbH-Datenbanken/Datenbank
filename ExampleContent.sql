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
INSERT INTO mitarbeiter VALUES('Verkäufer', 'Herr', 'Meier', 'Oliver', '0175 845621', 'OMeier@gmx.de', 1329763, '3000');
INSERT INTO mitarbeiter VALUES('Verkäufer', 'Herr', 'Müller', 'Helmut', '0175 975631', 'HMüller@gmx.de', 1321984, '3000');
INSERT INTO mitarbeiter VALUES('Manager', 'Herr', 'Hoffmann', 'Michael', '0175 761458', 'MHoffmann@gmx.de', 132975, '4500');
INSERT INTO mitarbeiter VALUES('Support', 'Frau', 'Meier', 'Natalie', '0175 97158426', 'MMeier@gmx.de', 1329487, '2500');
INSERT INTO mitarbeiter VALUES('Finanzmanager', 'Frau', 'Manns', 'Olivia', '0175 88452111', 'OManns@gmx.de', 1327845, '2800');
INSERT INTO mitarbeiter VALUES('Chef', 'Frau', 'Behrens', 'Magda', '0175 88452845', 'MBehrens@gmx.de', 7891452, '5000');
INSERT INTO mitarbeiter VALUES('Logistiker', 'Herr', 'Logik', 'Stefan', '0177 78452111', 'SLogik@gmx.de', 1379845, '2900');
INSERT INTO mitarbeiter VALUES('Verkäufer', 'Herr', 'Nickel', 'Günter', '0175 4452111', 'GNickel@gmx.de', 7851246, '3000');
INSERT INTO mitarbeiter VALUES('Verkäufer', 'Frau', 'Gold', 'Sarah', '0175 8846411', 'SGold@gmx.de', 1327532, '3000');
INSERT INTO mitarbeiter VALUES('Personalmanager', 'Herr', 'Eisen', 'Ole', '0148 87532111', 'OEisen@gmx.de', 9827845, '2800');




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
INSERT INTO kunde VALUES('Frau', 'Schmidt', 'Vanessa', '1873 1674582', 'VaniSchmidt@yahoo.de', 'PayPal');
INSERT INTO kunde VALUES('Herr', 'Schmidt', 'Tim', '1873 7539518', 'TimSchmidt@yahoo.de', 'PayPal');
INSERT INTO kunde VALUES('Herr', 'Klaas', 'Oliver', '1893 741852', 'KOliver@google.de', 'Direktüberweisung');
INSERT INTO kunde VALUES('Frau', 'Kerze', 'Hannah', '0175 8426597', 'HannahK@yahoo.de', 'PayPal');
INSERT INTO kunde VALUES('Frau', 'Waal', 'Andrea', '1789 7589641', 'AWaal@gmx.de', 'PayPal');
INSERT INTO kunde VALUES('Frau', 'Heinrich', 'Lisa', '0176 3234623', 'LHeinrich@gmx.de', 'Lastschrift');
INSERT INTO kunde VALUES('Herr', 'Schulz', 'Axel', '1789 4352346', 'ASchulz@web.de', 'Direktüberweisung');
INSERT INTO kunde VALUES('Herr', 'Wagner', 'Carsten', '1789 424757', 'CWagner@yahoo.de', 'Paypal');
INSERT INTO kunde VALUES('Frau', 'Wiese', 'Margaret', '1789 2196446', 'MargaretWiese@gmx.de', 'PayPal');
INSERT INTO kunde VALUES('Herr', 'Lingsch', 'Horst', '0571 7589644', 'HorstLingsch@web.de', 'Lastschrift');
INSERT INTO kunde VALUES('Herr', 'Köller', 'Andreas', '0571 5977469', 'AKöller@gmx.de', 'PayPal');


/*
	INSERT für die Tabelle Produktkategorie
    Values(`Kategorie_ID` Char(10),
	`Kategorie` Char(255),
	`Beschreibung` Char(255),)
*/
INSERT INTO produktkategorie VALUES('Sommerreifen', 'Sommerreifen für das Auto');
INSERT INTO produktkategorie VALUES('Winterreifen', 'Winterreifen für das Auto');
INSERT INTO produktkategorie VALUES('Bremse', 'Bremsscheiben und Bremsklötze');
INSERT INTO produktkategorie VALUES('Radio', 'Autoradio');
INSERT INTO produktkategorie VALUES('Polzster', 'Sitzbezüge');
INSERT INTO produktkategorie VALUES('Boden', 'Gummimatten zum Unterlegen');
INSERT INTO produktkategorie VALUES('Auspuff', 'Auto-Auspuff');
INSERT INTO produktkategorie VALUES('Motor', 'Teile für den Automotor');
INSERT INTO produktkategorie VALUES('Karosserie', 'Teile für die Autokarosserie');


/*
	INSERT für die Tabelle Lieferant
    Values(`Lieferant_ID` Char(10),
	`Name` Char(255),
	`Telefon` Char(255),
	`Email` Char(255),
	`Steuernummer` Int,
	`Mitarbeiter_ID` Char(10),)
*/
INSERT INTO lieferant VALUES('Audi', '0175 9768253', 'audiVetrieb@google.de', 6757531 , '1');
INSERT INTO lieferant VALUES( 'Volkswagen', '0175 79135482', 'VWWerke@gmx.de', 9272354 , '1');
INSERT INTO lieferant VALUES( 'TAV Autoverwertung', '0571 36863', 'TAVAuto@yahoo.de', 7315482 , '2');
INSERT INTO lieferant VALUES( 'Kenwood', '0158 7945281', 'Kenwood@yahoo.de', 1652487 , '2');



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
INSERT INTO adresse VALUES( 'Königsstraße 21', '32427', 'Minden', NULL, '1', NULL);
INSERT INTO adresse VALUES( 'Am Kolk', '32427', 'Minden', NULL, '2', NULL);
INSERT INTO adresse VALUES( 'Atilleriestraße 4', '32427', 'Minden', NULL, '3', NULL);
INSERT INTO adresse VALUES( 'Hohenstaufenring 22', '32427', 'Minden', NULL, '4', NULL);
INSERT INTO adresse VALUES( 'Bismarckstraße 5', '32427', 'Minden', NULL, '5', NULL);
INSERT INTO adresse VALUES( 'Ringstraße 9', '32427', 'Minden', '1', NULL, NULL);
INSERT INTO adresse VALUES( 'Berliner Ring 2', '38440', 'Wolfsburg', '2', NULL, NULL);
INSERT INTO adresse VALUES( 'An der Stadtmühle 2', '32423', 'Minden', '3', NULL, NULL);
INSERT INTO adresse VALUES( 'Musterstraße 9', '50529', 'Pulheim', NULL, NULL, '1');
INSERT INTO adresse VALUES( 'Napoleonstraße 2', '31749', 'Auetal', NULL, NULL, '2');
INSERT INTO adresse VALUES( 'Westerholz 10', '31749', 'Auetal', NULL, NULL, '3');
INSERT INTO adresse VALUES( 'Rahdener Straße 11', '32339', 'Lübbecke', NULL, NULL, '4');
INSERT INTO adresse VALUES( 'Hahler Straße 4', '32427', 'Minden', NULL, NULL, '5');
INSERT INTO adresse VALUES( 'Bergstraße 7', '85221', 'Dachau', '4', NULL, NULL);
INSERT INTO adresse VALUES( 'Königsstraße 23', '32427', 'Minden', NULL, '6', NULL);
INSERT INTO adresse VALUES( 'Hahler Straße 21', '32427', 'Minden', NULL, '7', NULL);
INSERT INTO adresse VALUES( 'Königswall 2', '32427', 'Minden', NULL, '8', NULL);
INSERT INTO adresse VALUES( 'Hohenzollernring 21', '32427', 'Minden', NULL, '9', NULL);
INSERT INTO adresse VALUES( 'Portastraße 1', '32427', 'Minden', NULL, '10', NULL);
INSERT INTO adresse VALUES( 'Bärenburger Straße 34', '31749', 'Auetal', NULL, NULL, '5');
INSERT INTO adresse VALUES( 'Hahler Straße 6', '32427', 'Minden', NULL, NULL, '6');
INSERT INTO adresse VALUES( 'Bismarckstraße 30', '32427', 'Minden', NULL, NULL, '7');
INSERT INTO adresse VALUES( 'Petersstraße 2', '10585', 'Berlin', NULL, NULL, '8');
INSERT INTO adresse VALUES( 'Weizstraße 26', '10707', 'Berlin', NULL, NULL, '9');
INSERT INTO adresse VALUES( 'Besenstraße 13', '38440', 'Wolfsburg', NULL, NULL, '10');
INSERT INTO adresse VALUES( 'Napoleonstraße 23', '31749', 'Auetal', NULL, NULL, '11');


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
INSERT INTO kundenbestellung VALUES('4', STR_TO_DATE('1/20/2018 7:46:48 AM', '%c/%e/%Y %r'), false, '3', '2');
INSERT INTO kundenbestellung VALUES('5', STR_TO_DATE('1/23/2018 16:46:36 PM', '%c/%e/%Y %r'), true, '5', '1');
INSERT INTO kundenbestellung VALUES('6', STR_TO_DATE('1/23/2018 18:46:36 PM', '%c/%e/%Y %r'), false, '4', '1');


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
INSERT INTO produkt VALUES('2', 'Kenwood Radio', 80, 1000, 800, '4', '4');
INSERT INTO produkt VALUES('3', 'Walser Autositzbezug', 70, 800, 890, '5', '2');
INSERT INTO produkt VALUES('4', 'Purework Auto-Gummimatten', 30, 800, 803, '6', '3');
INSERT INTO produkt VALUES('5', 'Michelin Winterreifen', 120, 1402, 1000, '2', '1');
INSERT INTO produkt VALUES('5', 'Bremsscheiben und Beläge', 150, 1203, 900, '2', '1');




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


