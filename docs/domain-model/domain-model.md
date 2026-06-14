# Model domeny — SciGames

## Diagram

<img width="825" height="589" alt="Untitled Diagram-Page-10 drawio" src="https://github.com/user-attachments/assets/71db7ff7-0542-438a-8d55-3b2e058d3075" />

## Encje

| Encja | Opis |
|---|---|
| `Użytkownicy` | Centrum systemu — każdy użytkownik ma przypisaną rolę |
| `Role` | Określa uprawnienia użytkownika (niezarejestrowany, zarejestrowany, uczeń, nauczyciel, administrator, deweloper) |
| `Gry` | Gry przeglądarkowe dodawane przez deweloperów |
| `Tagi` | Kategorie przypisywane do gier |
| `Tagi gry` | Relacja łącząca gry z tagami (wiele-do-wielu) |
| `Kolekcje` | Listy gier tworzone przez użytkowników |
| `Kolekcje gier` | Relacja łącząca kolekcje z grami (wiele-do-wielu) |
| `Grupy` | Klasy/grupy tworzone przez nauczycieli |
| `Grupy użytkowników` | Relacja łącząca użytkowników z grupami (wiele-do-wielu) |
| `Turnieje` | Aktywności rywalizacyjne tworzone przez nauczycieli |
| `Wyzwania` | Zadania powiązane z grami tworzone przez nauczycieli |
| `Recenzje` | Komentarze i oceny użytkowników do gier |
| `Osiągnięcia` | Nagrody przypisane do gier, zdobywane przez użytkowników |
| `Tablica wyników` | Rankingi punktów w grupach |
| `Logi` | Historia aktywności użytkowników (czas gry) |

## Relacje

- Użytkownik ma jedną rolę
- Użytkownik ma wiele: kolekcji, recenzji, logów, osiągnięć, wyników
- Użytkownik należy do wielu grup
- Nauczyciel tworzy wiele: grup, turnieji, wyzwań
- Deweloper tworzy wiele gier
- Gra ma wiele: tagów, recenzji, wyzwań, osiągnięć, logów
- Kolekcja zawiera wiele gier
- Grupa ma wiele: użytkowników, turnieji, tablic wyników
- Turniej powiązany jest z grupą i kolekcją
- Osiągnięcie należy do gry i może być zdobyte przez wielu użytkowników
