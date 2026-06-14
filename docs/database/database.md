[database.md](https://github.com/user-attachments/files/28928575/database.md)
# Model i schemat bazy danych — SciGames

Baza danych kompatybilna z Microsoft SQL Server. Pełny skrypt: [schema.sql](./schema.sql)

## Diagram ERD

<img width="1083" height="1134" alt="ERD" src="https://github.com/user-attachments/assets/47262690-2808-4f74-b36c-26f48e8c4903" />

## Tabele

| Tabela | Opis |
|---|---|
| `role` | Role użytkowników (niezarejestrowany, zarejestrowany, uczeń, nauczyciel, administrator, deweloper) |
| `uzytkownik` | Konta użytkowników z przypisaną rolą i punktami |
| `gry` | Gry dodane przez deweloperów |
| `tagi` | Tagi kategoryzujące gry |
| `tagi_gry` | Relacja wiele-do-wielu: gry ↔ tagi |
| `grupy` | Grupy/klasy tworzone przez nauczycieli |
| `grupy_uzytkownik` | Relacja wiele-do-wielu: grupy ↔ użytkownicy |
| `kolekcje` | Kolekcje gier tworzone przez użytkowników |
| `kolekcje_gry` | Relacja wiele-do-wielu: kolekcje ↔ gry |
| `recenzje` | Komentarze i oceny użytkowników do gier |
| `wyzwania` | Wyzwania tworzone przez nauczycieli, powiązane z grami |
| `turnieje` | Turnieje przypisane do grup i kolekcji, z datami |
| `logi` | Logi aktywności — czas gry użytkownika w danej grze |
| `tablica_wynikow` | Wyniki użytkowników w grupach |
| `osiagniecia` | Osiągnięcia przypisane do gier |
| `osiagniecia_uzytkownik` | Relacja wiele-do-wielu: osiągnięcia ↔ użytkownicy |
