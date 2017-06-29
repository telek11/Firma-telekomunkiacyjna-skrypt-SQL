insert into centrala values (1, 'TeleZbyszek', '2010-12-03', 'Warszawa', 'Al.Jerozolimskie', '23A', '02-326', 'Zbigniew', 'Dorocki', '500400300');

insert into placowka_sprzedarzy values (1,'Rondo ONZ', '2010-12-5', 'Warszawa', 'Sienna', '5B', '02-326', '778993654', '10', '1');
insert into placowka_sprzedarzy values (2,'Plac trzech krzyzy', '2011-01-5', 'Warszawa', 'Hoza', '52', '02-316', '456258753', '6', '1');
insert into placowka_sprzedarzy values (3,'Stary rynek £omza', '2012-10-8', '£om¿a', 'Farna', '12', '18-400', '159357456', '5', '1');

insert into placowka_naprawcza values (1,'Rondo ONZ', '2011-03-23', 'Warszawa', 'Sienna', '5A', '02-326', '3', 'Wszystkie naprawy', 1);
insert into placowka_naprawcza values (2,'Plac trzech krzyzy', '2011-12-23', 'Warszawa', 'Hoza', '49', '02-316', '1', 'Wymiana wyswietlaczy', 1);
insert into placowka_naprawcza values (3,'Ds_riviera', '2011-11-01', 'Warszawa', 'Warynskiego', '17', '02-306', '2', 'Wymiana procesorow ', 1);

insert into Sprzet values (1, 'Szczypce', 'Cowal', '2011-01-02', 'Do wszelkich napraw', 1);
insert into Sprzet values (2, 'Szczypce', 'Cowal', '2011-01-02', 'Do wszelkich napraw', 2);
insert into Sprzet values (3, 'Szczypce', 'Cowal', '2011-01-02', 'Do wszelkich napraw', 3);
insert into Sprzet values (4, 'Haki do wyswietlacza', 'repair_tel', '2011-12-02', 'Do wymiany wyswitlacza', 2);
insert into Sprzet values (5, 'Sruby do ekranu', 'repair_tel', '2011-12-02', 'Do wymiany wyswitlacza', 2);
insert into Sprzet values (6, 'Pasta termoprzewodzaca', 'repair_tel', '2011-10-02', 'Do mocowania procesora', 3);
insert into Sprzet values (7, 'Wtyczka zasilania', 'repair_tel', '2011-10-02', 'Do zasilania procesora', 3);

insert into pracownik values (1, 'Adam', 'Mazur', 'Kierownik', 'M','90082323456', '2011-04-10', '1990-08-23', 1, '12358965412085312512695105', '256125325', 'amazur@gamial.com', 1, 1, null);
insert into pracownik values (2, 'Bartosz', 'Kleszcz', 'Junior', 'M','92012223456', '2011-02-15', '1992-01-22', 1, '13528852412085523512693855', '855123256', 'bklescz@gamial.com', 1, 1, null);
insert into pracownik values (3, 'Maciej', 'Dorocinski', 'Senior', 'M','92021723456', '2011-06-12', '1992-02-17', 1, '1785258120574125158251052', '753258951', 'macdor@gamial.com', 1, 2, null);
insert into pracownik values (4, 'Adam', 'Ptak', 'Junior', 'M','87021723456', '2011-04-16', '1987-02-17', 1, '17856365412085312513584105', '962125684', 'adamp@gamial.com', 1, 3, null);
insert into pracownik values (5, 'Tomasz', 'Kurek', 'Senior', 'M','78031523456', '2011-03-15', '1978-03-15', 1, '77885265412085512415295105', '158745621', 'kurekt@gamial.com', 1, 1, null);
insert into pracownik values (6, 'Mateusz', 'Zagumny', 'Kierownik', 'M','60081723456', '2011-02-10', '1960-08-17', 1, '17774445412085822512854105', '258963147', 'mzqamn@gamial.com', 1, 2, null);
insert into pracownik values (7, 'Diana', 'Wilk', 'Kierownik', 'K','91040323456', '2011-04-10', '1991-04-03', 1, '1788955412228512512582105', '852036987', 'wilkdaniel@gamial.com', 1, 3, null);
insert into pracownik values (8, 'Klara', 'Rak', 'Senior', 'K','84072223456', '2011-02-10', '1984-07-22', 1, '125289555369853178126951052', '789654321', 'klararak@gamial.com', 1, null, 1);
insert into pracownik values (9, 'Jowita', 'Jastrzebska', 'Kierownik', 'K','74031223456', '2011-01-30', '1974-03-12', 1, '12528965412855312512258105', '698745321', 'jwojas@gamial.com', 1, null, 1);
insert into pracownik values (10, 'Tomasz', 'Mazur', 'Kierownik', 'M','91111723456', '2011-01-20', '1991-11-17', 1, '76541208537854295105', '123654753', 'tommaz@gamial.com', 1, null, 2);
insert into pracownik values (11, 'Jakub', 'Nowak', 'Kierownik', 'M','90121723456', '2011-01-13', '1990-12-17', 1, '75238965412085122512692365', '258963012', 'nowakjakub@gamial.com', 1, null, 3);
insert into pracownik values (12, 'Adam', 'Baranowski', 'Junior', 'M','89121523456', '2011-01-14', '1989-12-15', 1, '45623965412025758262695105', '123654785', 'baranowA@gamial.com', 1, null, 2);
insert into pracownik values (13, 'Witold', 'Tomaszewski', 'Junior', 'M','89021323456', '2011-01-20', '1989-02-13', 1, '44556665412085312312695105', '854756984', 'wittom@gamial.com', 1, null, 3);
insert into pracownik values (14, 'Lucjan', 'Polak', 'Junior', 'M','94092723456', '2011-01-12', '1994-03-27', 1, '78562965412456312512695105', '123685258', 'lucekpolak@gamial.com', 1, 1, null);

insert into wynagrodzenie values (1, '2011-01-01', 1000, 1, 1, 0, 1);
insert into wynagrodzenie values (2, '2011-02-01', 1000, 1, 1, 1000, 1);
insert into wynagrodzenie values (3, '2011-03-01', 1000, 1, 1, 0, 1);
insert into wynagrodzenie values (4, '2011-04-01', 1000, 1, 1, 0, 1);
insert into wynagrodzenie values (5, '2011-05-01', 1500, 1, 1, 0, 1);
insert into wynagrodzenie values (6, '2011-06-01', 1000, 1, 1, 0, 1);
insert into wynagrodzenie values (7, '2011-01-01', 2000, 1, 2, 0, 2);
insert into wynagrodzenie values (8, '2011-02-01', 2000, 1, 2, 1030, 2);
insert into wynagrodzenie values (9, '2011-03-01', 2000, 1, 2, 0, 2);
insert into wynagrodzenie values (10, '2011-04-01', 2000, 1, 2, 0, 2);
insert into wynagrodzenie values (11, '2011-05-01', 2000, 1, 2, 0, 2);
insert into wynagrodzenie values (12, '2011-06-01', 2000, 1, 2, 0, 2);

insert into technik values('Inzynier informatyk', 1, 'Projektowanie baz danych', 1, 1, 1, 1, 8);
insert into technik values('Doktor informatyk', 1, 'Programowanie Java', 1, 1, 1, 1, 9);
insert into technik values('Inzynier elektronik', 1, 'Anteny telefoniczne', 1, 0, 0, 1, 10);
insert into technik values('Inzynier informatyk', 0, 'Programowanie obiektowe', 1, 1, 1, 0, 11);
insert into technik values('Profesor fizyki', 0, 'Propagacja fal radiowych', 0, 0, 0, 1, 12);
insert into technik values('Doktor nauk informatycznych', 1, 'Systemy zarzadzania sieciami', 1, 1, 1, 1, 13);

insert into sprzedawca values('obsluga klienta', 'obsluga klienta', 1);
insert into sprzedawca values('obsluga klienta, rozwiazywanie konfliktow', 'obsluga klienta', 2);
insert into sprzedawca values('obsluga klienta, marketing dla nowicjuszy', 'obsluga reklamacji', 3);
insert into sprzedawca values('obsluga klienta, system zarzadzania zasobami ludzkimi', 'marketing', 4);
insert into sprzedawca values('obsluga klienta, techniki sprzedarzy', 'obsluga klienta', 5);
insert into sprzedawca values('obsluga klienta', 'marketing', 6);
insert into sprzedawca values('obsluga klienta', 'obsluga klienta', 7);

insert into jezyki values (1, 'Angielski', 'Podstawowy');
insert into jezyki values( 2, 'Angielski', 'Sredniozaawansowany');
insert into jezyki values(3, 'Angielski', 'Zaawansowany');
insert into jezyki values(4, 'Niemiecki', 'Podstawowy');
insert into jezyki values(5, 'Niemiecki', 'Sredniozaawansowany');
insert into jezyki values(6, 'Niemiecki', 'Zaawansowany');
insert into jezyki values(7, 'Rosyjski', 'Podstawowy');
insert into jezyki values(8, 'Rosyjski', 'Sredniozaawansowany');
insert into jezyki values(9, 'Rosyjski', 'Zaawansowany');

insert into jezyki_sprzedawca values(1,1);
insert into jezyki_sprzedawca values(2,7);
insert into jezyki_sprzedawca values(3,4);
insert into jezyki_sprzedawca values(4,3);
insert into jezyki_sprzedawca values(5,2);
insert into jezyki_sprzedawca values(6,1);
insert into jezyki_sprzedawca values(7,1);

insert into klient values(1, 'Tomasz', 'Jarocinski', 'M', '1996-12-12', 'ADS123456', '456258951', 'Lomza', 'Browarna', '12', '18-400', 'tomaszjastrzebski@gmail.com', 'polska', '96121543567');
insert into klient values(2, 'Zbigniew', 'Karkowski', 'M', '1995-11-23', 'ADS123456', '741543129', 'Gdansk', 'Lesna', '13', '18-652', 'zbigkark@gmail.com', 'polska', '95112314568');
insert into klient values(3, 'Leon', 'Zdunczyk', 'M', '1994-10-15', 'ADS123456', '951265745', 'Gliwice', 'Dworna', '54B', '17-450', 'leozdun@gmail.com', 'polska', '94101584564');
insert into klient values(4, 'Mateusz', 'Dabrowski', 'M', '1993-09-18', 'ADS123456', '745563321', 'Poznan', 'Dworcowa', '18B', '45-852', 'matdab@gmail.com', 'polska', '93091865985');
insert into klient values(5, 'Damian', 'Krol', 'M', '1992-08-26', 'ADS123456', '021236546', 'Pruszkow', 'Pilsudzkiego', '45B', '87-635', 'kroldamian@gmail.com', 'polska', '92082615486');

insert into umowa values (1, '2011-03-02', '2013-03-02', 'Umowa abonamentowa bez telefonu, bez kary za zerwanie', 0, 0, 0, 1, 2, 1);
insert into umowa values (2, '2011-05-15', '2013-05-15', 'Umowa Na karte z telefonem, bez kary za zerwanie', 1000, 0, 1, 1, 1, 2);
insert into umowa values (3, '2011-05-02', '2013-05-02', 'Umowa abonamentowa z telefonem, z kara za zerwanie', 500, 500, 1, 1, 3, 3);

insert into karta values ('30 dni', 30, 0.29, 0.10, 5.50, 2);

insert into abonament values (100, 1000, 5000, 20, 1);
insert into abonament values (50, 300, 600, 3, 3);

insert into wplata values (1, '2011-03-06', 100 ,1);
insert into wplata values (2, '2011-04-09', 100 ,1);
insert into wplata values (3, '2011-05-08', 100 ,1);
insert into wplata values (4, '2011-06-10', 100 ,1);
insert into wplata values (5, '2011-05-06', 50 ,3);
insert into wplata values (6, '2011-06-09', 50 ,3);
insert into wplata values (7, '2011-07-08', 50 ,3);
insert into wplata values (8, '2011-08-10', 50 ,3);

insert into telefon values (1, 'LG' ,'KU250', 500, 'Android', 4.5, '13MPx', 3);
insert into telefon values(2, 'IPHONE' ,'S4', 2500, 'IOS', 5.0, '6MPx', 2);

insert into placowka_naprawcza_telefon values(1,1);
insert into placowka_naprawcza_telefon values(2,2);

insert into ubezpieczenie values (1, 'ubezpieczenie ekranu', 'ubezpieczenie wyplacane w razie uszkodzenia ekranu telefonu', '2011-03-02','2013-03-02', 200, 1);
insert into ubezpieczenie values (2, 'ubezpieczenie ekranu', 'ubezpieczenie wyplacane w razie uszkodzenia ekranu telefonu', '2011-05-15','2013-03-02', 100, 1);

insert into UBEZPIECZENIE_KLIENT values(1,1);
insert into UBEZPIECZENIE_KLIENT values(2,2);





