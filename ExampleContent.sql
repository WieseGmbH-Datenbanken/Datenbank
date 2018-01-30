
INSERT INTO Adresse (Strasse, PLZ, Ort)
VALUES( 'Königsstraße 21', '32427', 'Minden'),
( 'Am Kolk', '32427', 'Minden'),
( 'Atilleriestraße 4', '32427', 'Minden'),
( 'Hohenstaufenring 22', '32427', 'Minden'),
( 'Bismarckstraße 5', '32427', 'Minden'),
( 'Ringstraße 9', '32427', 'Minden'),
( 'Berliner Ring 2', '38440', 'Wolfsburg'),
( 'An der Stadtmühle 2', '32423', 'Minden'),
( 'Musterstraße 9', '50529', 'Pulheim'),
( 'Napoleonstraße 2', '31749', 'Auetal'),
( 'Westerholz 10', '31749', 'Auetal'),
( 'Rahdener Straße 11', '32339', 'Lübbecke'),
( 'Hahler Straße 4', '32427', 'Minden'),
( 'Bergstraße 7', '85221', 'Dachau'),
( 'Königsstraße 23', '32427', 'Minden'),
( 'Hahler Straße 21', '32427', 'Minden'),
( 'Königswall 2', '32427', 'Minden'),
( 'Hohenzollernring 21', '32427', 'Minden'),
( 'Portastraße 1', '32427', 'Minden'),
( 'Bärenburger Straße 34', '31749', 'Auetal'),
( 'Hahler Straße 6', '32427', 'Minden'),
( 'Bismarckstraße 30', '32427', 'Minden'),
( 'Petersstraße 2', '10585', 'Berlin'),
( 'Weizstraße 26', '10707', 'Berlin'),
( 'Besenstraße 13', '38440', 'Wolfsburg'),
( 'Napoleonstraße 23', '31749', 'Auetal');



INSERT INTO Mitarbeiter (Funktion, Anrede, Name, Vorname, Telefon, Email, Steuernummer, Lohn, Adresse_ID)
VALUES('Verkäufer', 'Herr', 'Meier', 'Oliver', '0175 845621', 'OMeier@gmx.de', 1329763, '3000', 1),
('Verkäufer', 'Herr', 'Müller', 'Helmut', '0175 975631', 'HMüller@gmx.de', 1321984, '3000', 2),
('Manager', 'Herr', 'Hoffmann', 'Michael', '0175 761458', 'MHoffmann@gmx.de', 132975, '4500', 3),
('Support', 'Frau', 'Meier', 'Natalie', '0175 97158426', 'MMeier@gmx.de', 1329487, '2500', 4),
('Finanzmanager', 'Frau', 'Manns', 'Olivia', '0175 88452111', 'OManns@gmx.de', 1327845, '2800', 5),
('Chef', 'Frau', 'Behrens', 'Magda', '0175 88452845', 'MBehrens@gmx.de', 7891452, '5000',15),
('Logistiker', 'Herr', 'Logik', 'Stefan', '0177 78452111', 'SLogik@gmx.de', 1379845, '2900',16),
('Verkäufer', 'Herr', 'Nickel', 'Günter', '0175 4452111', 'GNickel@gmx.de', 7851246, '3000',17),
('Verkäufer', 'Frau', 'Gold', 'Sarah', '0175 8846411', 'SGold@gmx.de', 1327532, '3000',18),
('Personalmanager', 'Herr', 'Eisen', 'Ole', '0148 87532111', 'OEisen@gmx.de', 9827845, '2800',19);





INSERT INTO Kunde (Anrede, Name, Vorname, Telefon, Email, Zahlungsart, Adresse_ID)
VALUES('Frau', 'Schmidt', 'Vanessa', '1873 1674582', 'VaniSchmidt@yahoo.de', 'PayPal', 9),
('Herr', 'Schmidt', 'Tim', '1873 7539518', 'TimSchmidt@yahoo.de', 'PayPal', 10),
('Herr', 'Klaas', 'Oliver', '1893 741852', 'KOliver@google.de', 'Direktüberweisung', 11),
('Frau', 'Kerze', 'Hannah', '0175 8426597', 'HannahK@yahoo.de', 'PayPal', 12),
('Frau', 'Waal', 'Andrea', '1789 7589641', 'AWaal@gmx.de', 'PayPal', 13),
('Frau', 'Heinrich', 'Lisa', '0176 3234623', 'LHeinrich@gmx.de', 'Lastschrift',20),
('Herr', 'Schulz', 'Axel', '1789 4352346', 'ASchulz@web.de', 'Direktüberweisung',21),
('Herr', 'Wagner', 'Carsten', '1789 424757', 'CWagner@yahoo.de', 'Paypal',22),
('Frau', 'Wiese', 'Margaret', '1789 2196446', 'MargaretWiese@gmx.de', 'PayPal',23),
('Herr', 'Lingsch', 'Horst', '0571 7589644', 'HorstLingsch@web.de', 'Lastschrift',24),
('Herr', 'Köller', 'Andreas', '0571 5977469', 'AKöller@gmx.de', 'PayPal',25);



INSERT INTO Produktkategorie (Kategorie, Beschreibung)
VALUES('Sommerreifen', 'Sommerreifen für das Auto'),
('Winterreifen', 'Winterreifen für das Auto'),
('Bremse', 'Bremsscheiben und Bremsklötze'),
('Radio', 'Autoradio'),
('Polster', 'Sitzbezüge'),
('Boden', 'Gummimatten zum Unterlegen'),
('Auspuff', 'Auto-Auspuff'),
('Motor', 'Teile für den Automotor'),
('Karosserie', 'Teile für die Autokarosserie');



INSERT INTO Lieferant (Name, Telefon, Email, Steuernummer, Mitarbeiter_ID, Adresse_ID) 
VALUES('Audi', '0175 9768253', 'audiVetrieb@google.de', 6757531 , 1, 6),
( 'Volkswagen', '0175 79135482', 'VWWerke@gmx.de', 9272354 , 1, 7),
( 'TAV Autoverwertung', '0571 36863', 'TAVAuto@yahoo.de', 7315482 , 2, 8),
( 'Kenwood', '0158 7945281', 'Kenwood@yahoo.de', 1652487 , 2, 14);




INSERT INTO Kundenbestellung (Auftragsdatum, Status, Kunde_ID, Mitarbeiter_ID)
VALUES( STR_TO_DATE('1/02/2018 8:06:26 AM', '%c/%e/%Y %r'), true, 1, 1),
( STR_TO_DATE('1/10/2018 10:53:26 AM', '%c/%e/%Y %r'), true, 2, 2),
( STR_TO_DATE('1/15/2018 11:06:26 AM', '%c/%e/%Y %r'), true, 3, 2),
( STR_TO_DATE('1/20/2018 7:46:48 AM', '%c/%e/%Y %r'), false, 3, 2),
( STR_TO_DATE('1/23/2018 4:46:36 PM', '%c/%e/%Y %r'), true, 5, 1),
( STR_TO_DATE('1/23/2018 6:46:36 PM', '%c/%e/%Y %r'), false, 4, 1),
( STR_TO_DATE('1/24/2018 6:48:36 PM', '%c/%e/%Y %r'), false, 6, 8),
( STR_TO_DATE('1/26/2018 7:46:36 PM', '%c/%e/%Y %r'), false, 7, 9),
( STR_TO_DATE('1/29/2018 5:42:36 PM', '%c/%e/%Y %r'), false, 8, 7);


INSERT INTO Artikel (Name, Beschreibung, Verkaufspreis)
VALUES( 'Reifen Set Sommer', 'Michelin Energy Saver+ 205/55 R16 91V Sommerreifen ', 480),
( 'Reifen Set Winter', 'Michelin Alpin 5 205/55 R16 91H M+S Winterreifen', 480),
( '2er Set Bremsen', 'Ein Set aus 2 Bremsscheiben und Bremsbeläge, Innenbelüftet', 300),
( '4er Set Bremsen', 'Ein Set aus 4 Bremsscheiben und Bremsbeläge ', 600),
( 'Kenwood Autoradio', 'Autoradio mit AUX-Anschluss und Bluetoothfunktion', 80),
( 'Sportliche Sitzbezüge', 'Sitzbezüge für Vordersitze und Rückbank, geeignet für VW Polo und Golf', 70),
( 'Leistungsstarke Autobatterie', 'Hält länger als andere Batterien!', 50),
( 'Katalysator', 'Fängt mehr Schadstoffe ab als andere!', 100),
( 'Heckverkleidung', 'Heckverkleidung für VW Polo', 120);



INSERT INTO Produkt (Name, Einkaufspreis, Lagerbestand, Mindestbestand, Kategorie_ID, Lieferant_ID)
VALUES( 'Michelin Sommerreifen', 120, 1589, 1000, 1, 1),
( 'Kenwood Radio', 80, 1000, 800, 4, 4),
( 'Walser Autositzbezug', 70, 800, 890, 5, 2),
( 'Purework Auto-Gummimatten', 30, 800, 803, 6, 3),
( 'Michelin Winterreifen', 120, 1402, 1000, 2, 1),
( 'Bremsscheiben und Beläge', 150, 1203, 900, 3, 1),
( 'Autobatterie', 50, 500, 300, 8, 1),
( 'Katalysator', 100, 600, 700, 7, 2),
( 'Heckverkleidung', 120, 550, 500, 9, 3);





INSERT INTO Produkt_Artikel VALUES(1, 1);
INSERT INTO Produkt_Artikel VALUES(5, 2);
INSERT INTO Produkt_Artikel VALUES(6, 3);
INSERT INTO Produkt_Artikel VALUES(6, 4);
INSERT INTO Produkt_Artikel VALUES(2, 5);
INSERT INTO Produkt_Artikel VALUES(3, 6);
INSERT INTO Produkt_Artikel VALUES(7, 7);
INSERT INTO Produkt_Artikel VALUES(8, 8);
INSERT INTO Produkt_Artikel VALUES(9, 9);



INSERT INTO Lieferantenbestellung (Auftragsdatum, Status, Lieferant_ID)
VALUES( STR_TO_DATE('1/08/2018 10:06:26 AM', '%c/%e/%Y %r'), true, 1),
( STR_TO_DATE('1/12/2018 12:16:26 PM', '%c/%e/%Y %r'), false, 4),
( STR_TO_DATE('1/15/2018 2:56:25 PM', '%c/%e/%Y %r'), true, 2),
( STR_TO_DATE('1/20/2018 11:26:46 AM', '%c/%e/%Y %r'), false, 3),
( STR_TO_DATE('1/23/2018 08:44:23 AM', '%c/%e/%Y %r'), true, 2),
( STR_TO_DATE('1/25/2018 5:42:20 PM', '%c/%e/%Y %r'), true, 1),
( STR_TO_DATE('1/27/2018 07:30:15 AM', '%c/%e/%Y %r'), false, 2),
( STR_TO_DATE('1/29/2018 3:23:58 PM', '%c/%e/%Y %r'), false, 3);






INSERT INTO Lieferantenbestellung_Produkt VALUES(1, 1);
INSERT INTO Lieferantenbestellung_Produkt VALUES(2, 2);
INSERT INTO Lieferantenbestellung_Produkt VALUES(3, 3);
INSERT INTO Lieferantenbestellung_Produkt VALUES(4, 4);
INSERT INTO Lieferantenbestellung_Produkt VALUES(5, 5);
INSERT INTO Lieferantenbestellung_Produkt VALUES(6, 7);
INSERT INTO Lieferantenbestellung_Produkt VALUES(7, 8);
INSERT INTO Lieferantenbestellung_Produkt VALUES(8, 9);




INSERT INTO Artikel_Kundenbestellung (Artikel_ID, Auftrag_ID)
VALUES (1,1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);





