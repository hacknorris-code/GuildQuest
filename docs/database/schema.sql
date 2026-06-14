-- SciGames — schemat bazy danych
-- Kompatybilny z Microsoft SQL Server (T-SQL)

-- 1. Role
CREATE TABLE role (
    id_roli INT PRIMARY KEY IDENTITY(1,1),
    nazwa_roli NVARCHAR(100) NOT NULL
);

-- 2. Użytkownik
CREATE TABLE uzytkownik (
    id_uzytkownika INT PRIMARY KEY IDENTITY(1,1),
    nazwa_uzytkownika NVARCHAR(100) NOT NULL,
    rola INT,
    punkty INT DEFAULT 0,
    mail NVARCHAR(255) NOT NULL UNIQUE,
    haslo NVARCHAR(255) NOT NULL,
    wiek DATETIME,
    data_stworzenia DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (rola) REFERENCES role(id_roli)
);

-- 3. Gry
CREATE TABLE gry (
    id_gry INT PRIMARY KEY IDENTITY(1,1),
    nazwa_gry NVARCHAR(255) NOT NULL,
    opis NVARCHAR(MAX),
    id_autora INT,
    czas_stworzenia DATETIME DEFAULT GETDATE(),
    zrodlo NVARCHAR(255),
    FOREIGN KEY (id_autora) REFERENCES uzytkownik(id_uzytkownika)
);

-- 4. Tagi
CREATE TABLE tagi (
    id_tag INT PRIMARY KEY IDENTITY(1,1),
    nazwa_tagu NVARCHAR(100) NOT NULL
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
    id_grupy INT PRIMARY KEY IDENTITY(1,1),
    id_wlasciciela INT,
    nazwa_grupy NVARCHAR(255) NOT NULL,
    kod_dostepu NVARCHAR(100),
    data_stworzenia DATETIME DEFAULT GETDATE(),
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
    id_kolekcji INT PRIMARY KEY IDENTITY(1,1),
    id_uzytkownika INT,
    nazwa_kolekcji NVARCHAR(255) NOT NULL,
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
    id_recenzji INT PRIMARY KEY IDENTITY(1,1),
    id_uzytkownika INT,
    tresc NVARCHAR(MAX),
    id_gry INT,
    ocena INT,
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 11. Wyzwania
CREATE TABLE wyzwania (
    id_wyzwania INT PRIMARY KEY IDENTITY(1,1),
    id_autora INT,
    nazwa NVARCHAR(255) NOT NULL,
    opis NVARCHAR(MAX),
    id_gry INT,
    punkty INT DEFAULT 0,
    FOREIGN KEY (id_autora) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 12. Turnieje
CREATE TABLE turnieje (
    id_turnieju INT PRIMARY KEY IDENTITY(1,1),
    id_autora INT,
    id_grupy INT,
    id_kolekcji INT,
    nazwa NVARCHAR(255) NOT NULL,
    punkty INT DEFAULT 0,
    data_rozpoczecia DATETIME,
    data_zakonczenia DATETIME,
    FOREIGN KEY (id_autora) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_grupy) REFERENCES grupy(id_grupy),
    FOREIGN KEY (id_kolekcji) REFERENCES kolekcje(id_kolekcji)
);

-- 13. Logi
CREATE TABLE logi (
    id_log INT PRIMARY KEY IDENTITY(1,1),
    id_uzytkownika INT,
    id_gry INT,
    czas_gry INT,
    data_rozpoczecia DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 14. Tablica Wyników
CREATE TABLE tablica_wynikow (
    id_tab INT PRIMARY KEY IDENTITY(1,1),
    id_grupy INT,
    id_uzytkownika INT,
    punkty INT DEFAULT 0,
    FOREIGN KEY (id_grupy) REFERENCES grupy(id_grupy),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika)
);

-- 15. Osiągnięcia
CREATE TABLE osiagniecia (
    id_osiagniecia INT PRIMARY KEY IDENTITY(1,1),
    id_gry INT,
    nazwa NVARCHAR(255) NOT NULL,
    opis NVARCHAR(MAX),
    FOREIGN KEY (id_gry) REFERENCES gry(id_gry)
);

-- 16. Osiągnięcia-Użytkownik (wiele-do-wielu)
CREATE TABLE osiagniecia_uzytkownik (
    id_osiagniecia INT,
    id_uzytkownika INT,
    data_zdobycia DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (id_osiagniecia, id_uzytkownika),
    FOREIGN KEY (id_osiagniecia) REFERENCES osiagniecia(id_osiagniecia),
    FOREIGN KEY (id_uzytkownika) REFERENCES uzytkownik(id_uzytkownika)
);
