-- SciGames — schemat bazy danych
-- Kompatybilny z MySQL

-- 1. Role
CREATE TABLE role (
    id_roli INT PRIMARY KEY AUTO_INCREMENT,
    nazwa_roli VARCHAR(100) NOT NULL
);

-- 2. Użytkownik
CREATE TABLE uzytkownik (
    id_uzytkownika INT PRIMARY KEY AUTO_INCREMENT,
    nazwa_uzytkownika VARCHAR(100) NOT NULL,
    rola INT,
    punkty INT DEFAULT 0,
    mail VARCHAR(255) NOT NULL UNIQUE,
    haslo VARCHAR(255) NOT NULL,
    wiek DATETIME,
    data_stworzenia DATETIME DEFAULT NOW(),
    FOREIGN KEY (rola) REFERENCES role(id_roli)
);

-- 3. Gry
CREATE TABLE gry (
    id_gry INT PRIMARY KEY AUTO_INCREMENT,
    nazwa_gry VARCHAR(255) NOT NULL,
    opis LONGTEXT,
    id_autora INT,
    czas_stworzenia DATETIME DEFAULT NOW(),
    zrodlo VARCHAR(255),
    FOREIGN KEY (id_autora) REFERENCES uzytkownik(id_uzytkownika)
);

-- 4. Tagi
CREATE TABLE tagi (
    id_tag INT PRIMARY KEY AUTO_INCREMENT,
    nazwa_tagu VARCHAR(100) NOT NULL
);

-- 5. Tagi-Gry (wiele-do-wielu)
CREATE TABLE tagi_gry (
    id_gry INT,
    id_tag INT,
    PRIMARY KEY (id_gry, id_tag),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry),
    FOREIGN KEY (id_tag) REFERENCES tagi(id_tag)
);

-- 6. Grupy
CREATE TABLE grupy (
    id_grupy INT PRIMARY KEY AUTO_INCREMENT,
    id_wlasciciela INT,
    nazwa_grupy VARCHAR(255) NOT NULL,
    kod_dostepu VARCHAR(100),
    data_stworzenia DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_wlasciciela) REFERENCES uzytkownik(id_uzytkownika)
);

-- 7. Grupy-Użytkownik (wiele-do-wielu)
CREATE TABLE grupy_uzytkownik (
    id_grupy INT,
    id_uzytkownika INT,
    PRIMARY KEY (id_grupy, id_uzytkownika),
    FOREIGN KEY (id_grupy) REFERENCES grupy(id_grupy),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika)
);

-- 8. Kolekcje
CREATE TABLE kolekcje (
    id_kolekcji INT PRIMARY KEY AUTO_INCREMENT,
    id_uzytkownika INT,
    nazwa_kolekcji VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika)
);

-- 9. Kolekcje-Gry (wiele-do-wielu)
CREATE TABLE kolekcje_gry (
    id_kolekcji INT,
    id_gry INT,
    PRIMARY KEY (id_kolekcji, id_gry),
    FOREIGN KEY (id_kolekcji) REFERENCES kolekcje(id_kolekcji),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 10. Recenzje
CREATE TABLE recenzje (
    id_recenzji INT PRIMARY KEY AUTO_INCREMENT,
    id_uzytkownika INT,
    tresc LONGTEXT,
    id_gry INT,
    ocena INT,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 11. Wyzwania
CREATE TABLE wyzwania (
    id_wyzwania INT PRIMARY KEY AUTO_INCREMENT,
    id_autora INT,
    nazwa VARCHAR(255) NOT NULL,
    opis LONGTEXT,
    id_gry INT,
    punkty INT DEFAULT 0,
    FOREIGN KEY (id_autora) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 12. Turnieje
CREATE TABLE turnieje (
    id_turnieju INT PRIMARY KEY AUTO_INCREMENT,
    id_autora INT,
    id_grupy INT,
    id_kolekcji INT,
    nazwa VARCHAR(255) NOT NULL,
    punkty INT DEFAULT 0,
    data_rozpoczecia DATETIME,
    data_zakonczenia DATETIME,
    FOREIGN KEY (id_autora) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_grupy) REFERENCES grupy(id_grupy),
    FOREIGN KEY (id_kolekcji) REFERENCES kolekcje(id_kolekcji)
);

-- 13. Logi
CREATE TABLE logi (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    id_uzytkownika INT,
    id_gry INT,
    czas_gry INT,
    data_rozpoczecia DATETIME DEFAULT NOW(),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 14. Tablica Wyników
CREATE TABLE tablica_wynikow (
    id_tab INT PRIMARY KEY AUTO_INCREMENT,
    id_grupy INT,
    id_uzytkownika INT,
    punkty INT DEFAULT 0,
    FOREIGN KEY (id_grupy) REFERENCES grupy(id_grupy),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika)
);

-- 15. Osiągnięcia
CREATE TABLE osiagniecia (
    id_osiagniecia INT PRIMARY KEY AUTO_INCREMENT,
    id_gry INT,
    nazwa VARCHAR(255) NOT NULL,
    opis LONGTEXT,
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 16. Osiągnięcia-Użytkownik (wiele-do-wielu)
CREATE TABLE osiagniecia_uzytkownik (
    id_osiagniecia INT,
    id_uzytkownika INT,
    data_zdobycia DATETIME DEFAULT NOW(),
    PRIMARY KEY (id_osiagniecia, id_uzytkownika),
    FOREIGN KEY (id_osiagniecia) REFERENCES osiagniecia(id_osiagniecia),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika)
);
