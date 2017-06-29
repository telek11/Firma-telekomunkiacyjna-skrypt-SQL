
CREATE TABLE Centrala(
  id_centrala Integer NOT NULL,
  Nazwa Varchar2(30 ) NOT NULL,
  data_zalozenia Date NOT NULL,
  miasto Varchar2(30 ) NOT NULL,
  ulica Varchar2(30 ) NOT NULL,
  nr_budynku Varchar2(8 ) NOT NULL,
  kod_pocztowy Varchar2(30 ) NOT NULL,
  imie_wlasciciela Varchar2(30 ) NOT NULL,
  nazwisko_wlasciciela Varchar2(30 ) NOT NULL,
  Telefon Varchar2(15 ) NOT NULL
);
ALTER TABLE Centrala ADD CONSTRAINT Centrala_PK PRIMARY KEY (id_centrala);

CREATE TABLE Placowka_sprzedarzy(
  id_placowka_sprzedarzy Integer NOT NULL,
  nazwa Varchar2(30 ) NOT NULL,
  data_zalozenia Date NOT NULL,
  miasto Varchar2(30 ) NOT NULL,
  ulica Varchar2(30 ) NOT NULL,
  nr_budynku Varchar2(8 ) NOT NULL,
  kod_pocztowy Varchar2(30 ) NOT NULL,
  nr_telefonu Varchar2(15 ),
  ilosc_stanowisk Varchar2(30 ),
  id_centrala Integer NOT NULL
);
ALTER TABLE Placowka_sprzedarzy ADD CONSTRAINT Placowka_sprzedarzy_PK PRIMARY KEY (id_placowka_sprzedarzy);

CREATE TABLE Placowka_naprawcza(
  id_placowka_naprawcza Integer NOT NULL,
  nazwa Varchar2(30 ) NOT NULL,
  data_zalozenia Date NOT NULL,
  miasto Varchar2(30 ) NOT NULL,
  ulica Varchar2(30 ) NOT NULL,
  nr_budynku Varchar2(8 ) NOT NULL,
  kod_pocztowy Varchar2(30 ) NOT NULL,
  ilosc_stanowisk Varchar2(30 ),
  opis_uslug Varchar2(1000 ),
  id_centrala Integer NOT NULL
);
ALTER TABLE Placowka_naprawcza ADD CONSTRAINT Placowka_naprawcza_PK PRIMARY KEY (id_placowka_naprawcza);

CREATE TABLE Sprzet(
  id_sprzetu Integer NOT NULL,
  nazwa Varchar2(30 ) NOT NULL,
  marka Varchar2(30 ),
  data_zakupu Date,
  opis_zastosowania Varchar2(1000 ) NOT NULL,
  id_placowka_naprawcza Integer NOT NULL
);
ALTER TABLE Sprzet ADD CONSTRAINT Sprzet_PK PRIMARY KEY (id_sprzetu);

CREATE TABLE Wynagrodzenie(
  id_wynagrodzenie Integer NOT NULL,
  data_wyplaty Date NOT NULL,
  kwota_bazowa Number NOT NULL,
  przelicznik_etatu Number NOT NULL,
  przelicznik_stanowiska Number NOT NULL,
  premia Number,
  id_pracownik Integer NOT NULL
);
ALTER TABLE Wynagrodzenie ADD CONSTRAINT wynagrodzenie_PK PRIMARY KEY (id_wynagrodzenie);
CREATE INDEX idx_wynagrodzenia_1 ON Wynagrodzenie (id_pracownik);

CREATE TABLE Pracownik(
  id_pracownik Integer NOT NULL,
  imie Varchar2(30 ) NOT NULL,
  nazwisko Varchar2(30 ) NOT NULL,
  stanowisko Varchar2(30 ) NOT NULL,
  plec Varchar2(10 ),
  pesel Varchar2(11 ),
  data_zatrudnienia Date NOT NULL,
  data_urodzenia Date NOT NULL,
  czy_pracuje_aktualnie Char(1 ) NOT NULL,
  nr_konta Varchar2(30 ),
  nr_telefonu Varchar2(15 ),
  email Varchar2(30 ),
  id_centrala Integer NOT NULL,
  id_placowka_sprzedarzy Integer,
  id_placowka_naprawcza Integer
);
ALTER TABLE Pracownik ADD CONSTRAINT pracownik_PK PRIMARY KEY (id_pracownik);
CREATE INDEX idx_pracownik_1 ON Pracownik (id_placowka_sprzedarzy);

CREATE TABLE Technik(
  tytul_zawodowy Varchar2(30 ) NOT NULL,
  znajomosc_bazy_danych Char(1 ) NOT NULL,
  specjalizacja Varchar2(300 ) NOT NULL,
  znajomosc_java Char(1 ) NOT NULL,
  znajomosc_c# Char(1 ) NOT NULL,
  znajomosc_c Char(1 ) NOT NULL,
  znajmosco_protokolu_HTTP Char(1 ) NOT NULL,
  id_pracownik Integer NOT NULL
);
ALTER TABLE Technik ADD CONSTRAINT Unique_Identifier6 PRIMARY KEY (id_pracownik);

CREATE TABLE Sprzedawca(
  szkolenia Varchar2(300 ) NOT NULL,
  specjalizacja Varchar2(300 ) NOT NULL,
  id_pracownik Integer NOT NULL
);
ALTER TABLE Sprzedawca ADD CONSTRAINT Unique_Identifier7 PRIMARY KEY (id_pracownik);

CREATE TABLE Umowa(
  id_umowy Integer NOT NULL,
  data_zawarcia Date NOT NULL,
  data_konca Date NOT NULL,
  opis Varchar2(1000 ) NOT NULL,
  znizka_na_telefon Number,
  kara_za_zerwanie Number,
  opcojnalny_telefon Char(1 ),
  id_centrala Integer NOT NULL,
  id_pracownik Integer NOT NULL,
  id_klienta Integer NOT NULL
);
ALTER TABLE Umowa ADD CONSTRAINT umowa_PK PRIMARY KEY (id_umowy);

CREATE TABLE Abonament(
  kwota_doladowania Number NOT NULL,
  ilosc_minut Number NOT NULL,
  ilosc_sms Number NOT NULL,
  ilosc_internetu Number NOT NULL,
  id_umowy Integer NOT NULL
);
ALTER TABLE Abonament ADD CONSTRAINT Unique_Identifier11 PRIMARY KEY (id_umowy);

CREATE TABLE Karta(
  okres_cyklicznego_doladowania Varchar2(30 ) NOT NULL,
  koszt_doladowania Number NOT NULL,
  koszt_za_minute Number NOT NULL,
  koszt_za_sms Number NOT NULL,
  koszt_1GB_internetu Number NOT NULL,
  id_umowy Integer NOT NULL
);
ALTER TABLE Karta ADD CONSTRAINT Unique_Identifier10 PRIMARY KEY (id_umowy);

CREATE TABLE Telefon(
  id_telefonu Integer NOT NULL,
  marka Varchar2(30 ) NOT NULL,
  model Varchar2(30 ) NOT NULL,
  cena_bazowa Number NOT NULL,
  system_operacyjny Varchar2(30 ),
  przekatna_ekranu Number,
  aparat Varchar2(30 ),
  id_umowy Integer NOT NULL
);
ALTER TABLE Telefon ADD CONSTRAINT Telefon_PK PRIMARY KEY (id_telefonu);

CREATE TABLE Klient(
  id_klienta Integer NOT NULL,
  imie Varchar2(30 ) NOT NULL,
  nazwisko Varchar2(30 ) NOT NULL,
  plec Varchar2(10 ),
  data_urodzenia Date,
  nr_dokumentu Varchar2(30 ) NOT NULL,
  nr_telefonu Varchar2(15 ),
  miasto Varchar2(30 ),
  ulica Varchar2(30 ),
  nr_budynku Varchar2(8 ),
  kod_pocztowy Varchar2(30 ),
  email Varchar2(30 ),
  kraj Varchar2(30 ),
  pesel VARCHAR2(11 )
);
ALTER TABLE Klient ADD CONSTRAINT klient_PK PRIMARY KEY (id_klienta);

CREATE TABLE Ubezpieczenie(
  id_ubezpieczenia Integer NOT NULL,
  nazwa_ubezpieczenia Varchar2(300 ) NOT NULL,
  opis Varchar2(300 ) NOT NULL,
  data_zawarcia Date NOT NULL,
  data_konca Date NOT NULL,
  cena Number NOT NULL,
  id_centrala Integer NOT NULL
);
ALTER TABLE Ubezpieczenie ADD CONSTRAINT Ubzepieczenie_PK PRIMARY KEY (id_ubezpieczenia);

CREATE TABLE Wplata(
  id_wplata Integer NOT NULL,
  data Date NOT NULL,
  kwota Number NOT NULL,
  id_umowy Integer NOT NULL
);
ALTER TABLE Wplata ADD CONSTRAINT Unique_Identifier13 PRIMARY KEY (id_wplata);
CREATE INDEX idx_wplaty_1 ON Wplata (id_umowy);

CREATE TABLE Jezyki(
  id_jezyk Integer NOT NULL,
  nazwa Varchar2(30 ) NOT NULL,
  poziom_znajomosci Varchar2(30 ) NOT NULL
);
ALTER TABLE Jezyki ADD CONSTRAINT Unique_Identifier14 PRIMARY KEY (id_jezyk);

CREATE TABLE Ubezpieczenie_Klient(
  id_ubezpieczenia Integer NOT NULL,
  id_klienta Integer NOT NULL
);

CREATE TABLE Placowka_naprawcza_Telefon(
  id_telefonu Integer NOT NULL,
  id_placowka_naprawcza Integer NOT NULL
);

CREATE TABLE Jezyki_Sprzedawca(
  id_jezyk Integer NOT NULL,
  id_pracownik Integer NOT NULL
);

CREATE TABLE Konto_Uzytkownik(
  id_Konto_Uzytkownik integer NOT NULL,
  nazwa_uzytkownika Varchar2(300 ) NOT NULL,
  haslo Varchar2(300 ) NOT NULL,
  uprawnienia Varchar2(300 ) NOT NULL
);
ALTER TABLE Konto_Uzytkownik ADD CONSTRAINT konto_uzytkownik_PK PRIMARY KEY (id_Konto_Uzytkownik);

ALTER TABLE Placowka_sprzedarzy ADD CONSTRAINT posiada_placowke_sprzedarzy FOREIGN KEY (id_centrala) REFERENCES Centrala (id_centrala);
ALTER TABLE Sprzet ADD CONSTRAINT Posiada_sprzet FOREIGN KEY (id_placowka_naprawcza) REFERENCES Placowka_naprawcza (id_placowka_naprawcza);
ALTER TABLE Placowka_naprawcza ADD CONSTRAINT posiada_placowke_naprawcza FOREIGN KEY (id_centrala) REFERENCES Centrala (id_centrala);
ALTER TABLE Pracownik ADD CONSTRAINT zatrudnia_pracownika FOREIGN KEY (id_centrala) REFERENCES Centrala (id_centrala);
ALTER TABLE Ubezpieczenie ADD CONSTRAINT oferuje_ubezpieczenie FOREIGN KEY (id_centrala) REFERENCES Centrala (id_centrala);
ALTER TABLE Umowa ADD CONSTRAINT oferuje_umowe FOREIGN KEY (id_centrala) REFERENCES Centrala (id_centrala);
ALTER TABLE Wynagrodzenie ADD CONSTRAINT dostaje_wyplate FOREIGN KEY (id_pracownik) REFERENCES Pracownik (id_pracownik);
ALTER TABLE Pracownik ADD CONSTRAINT posiada_prac FOREIGN KEY (id_placowka_sprzedarzy) REFERENCES Placowka_sprzedarzy (id_placowka_sprzedarzy);
ALTER TABLE Pracownik ADD CONSTRAINT posiada_pracownika FOREIGN KEY (id_placowka_naprawcza) REFERENCES Placowka_naprawcza (id_placowka_naprawcza);
ALTER TABLE Umowa ADD CONSTRAINT zawiera_umowe FOREIGN KEY (id_pracownik) REFERENCES Pracownik (id_pracownik);
ALTER TABLE Umowa ADD CONSTRAINT podpisuje_umowe FOREIGN KEY (id_klienta) REFERENCES Klient (id_klienta);
ALTER TABLE Telefon ADD CONSTRAINT oferuje_telefon FOREIGN KEY (id_umowy) REFERENCES Umowa (id_umowy);
ALTER TABLE Wplata ADD CONSTRAINT dotyczy_umowy FOREIGN KEY (id_umowy) REFERENCES Umowa (id_umowy);
ALTER TABLE Sprzedawca ADD CONSTRAINT Pracownik_Sprzedawca FOREIGN KEY (id_pracownik) REFERENCES Pracownik (id_pracownik);
ALTER TABLE Technik ADD CONSTRAINT Pracownik_Technik FOREIGN KEY (id_pracownik) REFERENCES Pracownik (id_pracownik);
ALTER TABLE Abonament ADD CONSTRAINT Umowa_Abonament FOREIGN KEY (id_umowy) REFERENCES Umowa (id_umowy);
ALTER TABLE Karta ADD CONSTRAINT Umowa_Karta FOREIGN KEY (id_umowy) REFERENCES Umowa (id_umowy);
ALTER TABLE Placowka_naprawcza_Telefon ADD CONSTRAINT naprawia_Placowka_naprawcza FOREIGN KEY (id_placowka_naprawcza) REFERENCES Placowka_naprawcza (id_placowka_naprawcza);
ALTER TABLE Placowka_naprawcza_Telefon ADD CONSTRAINT naprawia_Telefon FOREIGN KEY (id_telefonu) REFERENCES Telefon (id_telefonu);
ALTER TABLE Ubezpieczenie_Klient ADD CONSTRAINT wykupuje_Klient FOREIGN KEY (id_klienta) REFERENCES Klient (id_klienta);
ALTER TABLE Ubezpieczenie_Klient ADD CONSTRAINT wykupuje_Ubezpieczenie FOREIGN KEY (id_ubezpieczenia) REFERENCES Ubezpieczenie (id_ubezpieczenia);
ALTER TABLE Jezyki_Sprzedawca ADD CONSTRAINT zna_Jezyki FOREIGN KEY (id_jezyk) REFERENCES Jezyki (id_jezyk);
ALTER TABLE Jezyki_Sprzedawca ADD CONSTRAINT zna_Sprzedawca FOREIGN KEY (id_pracownik) REFERENCES Sprzedawca (id_pracownik);


