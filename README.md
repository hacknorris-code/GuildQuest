# GuildQuest

Platforma przeglądarkowych gier edukacyjnych dla uczniów i nauczycieli. Umożliwia przeglądanie i uruchamianie gier naukowych, tworzenie grup klasowych, organizowanie turniejów i wyzwań oraz śledzenie postępów uczniów przez system punktów i osiągnięć.

---

## Zawartość repozytorium

| Dokument | Opis | Link |
|---|---|---|
| User Stories | Historyjki użytkownika z kryteriami akceptacji (DoR) | [docs/user-stories/user-stories.md](docs/user-stories/user-stories.md) |
| Use Cases | Przepływy użytkownika (user flows) | [docs/use-case/use-case.md](docs/use-cases/use-cases.md) |
| Model domeny | Encje, relacje i diagram modelu domeny | [docs/domain-model/domain-model.md](docs/domain-model/domain-model.md) |
| Makiety UI | Makiety interfejsu użytkownika | [docs/ui-mockups/mockups.md](docs/ui-mockups/mockups.md) |
| Baza danych | Schemat bazy danych, ERD i skrypty SQL | [docs/database/database.md](docs/database/database.md) |

---

## Role użytkowników

- **Niezarejestrowany** — przeglądanie i uruchamianie gier
- **Zarejestrowany** — ulubione, oceny, komentarze, profil
- **Uczeń** — grupy, punkty, osiągnięcia, rankingi
- **Nauczyciel** — grupy, kolekcje, turnieje, wyzwania, nagrody
- **Deweloper** — dodawanie gier do platformy
- **Administrator** — moderacja treści i zarządzanie kontami

---

## User Stories

21 historyjek użytkownika pogrupowanych w 6 sekcji. Każda historyjka zawiera rolę, treść w formacie "jako... chcę... aby..." oraz kryteria akceptacji (Definition of Ready).

→ [Pełna lista historyjek](docs/user-stories/user-stories.md)

---

## Use Cases

3 główne przepływy użytkownika przedstawione w formie diagramów:

| ID | Tytuł | Aktor |
|---|---|---|
| UC-01 | Dołączanie do grupy | Uczeń |
| UC-02 | Dodanie gry do kolekcji | Użytkownik zarejestrowany |
| UC-03 | Tworzenie turnieju | Nauczyciel |

→ [Diagramy user flows](docs/use-case/use-case.md)

---

## Model domeny

System oparty na 15 encjach. Centrum modelu stanowi `Użytkownik` z przypisaną rolą, powiązany z grami, grupami, kolekcjami, turniejami, wyzwaniami, osiągnięciami i wynikami.

→ [Model domeny](docs/domain-model/domain-model.md)

---

## Makiety UI

>  W przygotowaniu

Makiety interfejsu użytkownika zostaną dodane do folderu `docs/ui-mockups/`.

---

## Baza danych

16 tabel w Microsoft SQL Server (T-SQL) lub mySql. Schemat obejmuje użytkowników, gry, grupy, kolekcje, turnieje, wyzwania, osiągnięcia oraz system punktów i logów.

→ [Model i schemat bazy danych](docs/database/database.md)

---

## Technologie

- Baza danych: Microsoft SQL Server / MySql
- Diagramy: draw.io, SSMS Database Diagram
