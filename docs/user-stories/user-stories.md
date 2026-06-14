[user-stories.md](https://github.com/user-attachments/files/28927818/user-stories.md)
# User Stories — SciGames

> **Definition of Ready (DoR):** historyjka jest gotowa do implementacji gdy posiada: tytuł, rolę użytkownika, treść w formacie "jako... chcę... aby...", oraz kompletne kryteria akceptacji.

---

## 🔐 Dostęp i konto

### US-01 — Rejestracja konta

**Rola:** Osoba niezarejestrowana

> Jako osoba niezarejestrowana  
> chcę utworzyć konto użytkownika  
> aby być zapamiętanym w systemie i korzystać z pełnych funkcji platformy

**Kryteria akceptacji:**
- Użytkownik widzi formularz rejestracji zawierający: nickname, email, hasło, potwierdzenie hasła
- System weryfikuje poprawność danych:
  - email ma poprawny format
  - hasło ma minimum 8 znaków
  - hasło i potwierdzenie hasła muszą być identyczne
- System nie pozwala na rejestrację z już istniejącym emailem
- Użytkownik może podać klasę / rok nauczania
- System automatycznie ustawia termin likwidacji konta na koniec odpowiedniego roku szkolnego na podstawie podanej klasy
- Administrator może ręcznie nadpisać termin likwidacji lub wybrać go z puli standardowych końców lat szkolnych
- Użytkownik otrzymuje powiadomienie przed planowaną likwidacją konta
- Po poprawnej rejestracji konto zostaje utworzone, użytkownik otrzymuje komunikat o sukcesie i zostaje zalogowany

---

### US-02 — Logowanie i wylogowanie

**Rola:** Osoba zarejestrowana

> Jako osoba zarejestrowana  
> chcę móc zalogować się na swoje konto  
> aby uzyskać dostęp do spersonalizowanych funkcji platformy

**Kryteria akceptacji:**
- Użytkownik widzi formularz logowania z polami: email i hasło
- System weryfikuje poprawność danych
- Po poprawnym logowaniu użytkownik jest przekierowany na stronę główną
- W przypadku błędnych danych system wyświetla komunikat o błędzie bez wskazania który z pól jest błędny
- Użytkownik może się wylogować z dowolnej strony platformy

---

### US-03 — Przeglądanie i edycja profilu

**Rola:** Osoba zarejestrowana

> Jako osoba zarejestrowana  
> chcę móc przeglądać i edytować swój profil  
> aby zarządzać swoimi danymi oraz śledzić aktywność na platformie

**Kryteria akceptacji:**
- Użytkownik widzi na profilu: nazwę użytkownika, łączną liczbę punktów, listę osiągnięć, listę ulubionych gier
- Użytkownik może edytować nazwę użytkownika
- Użytkownik może zmienić hasło po podaniu obecnego hasła
- Profil jest widoczny publicznie w zakresie: nazwa użytkownika i punkty

---

## 🎮 Przeglądanie platformy

### US-04 — Przeglądanie i uruchamianie gier

**Rola:** Każdy użytkownik

> Jako osoba niezarejestrowana lub zarejestrowana  
> chcę mieć możliwość przeglądania i uruchamiania gier  
> aby móc korzystać z dostępnych zasobów platformy

**Kryteria akceptacji:**
- Użytkownik widzi listę dostępnych gier wyświetlanych jedna pod drugą
- Każda gra zawiera podstawowe informacje: nazwę, ocenę, przedmiot naukowy / kategorię
- Użytkownik może wejść w szczegóły gry
- Każdy użytkownik może uruchomić grę bez logowania
- Niektóre funkcje gry mogą być dostępne wyłącznie po zalogowaniu

---

### US-05 — Filtrowanie gier

**Rola:** Każdy użytkownik

> Jako osoba niezarejestrowana lub zarejestrowana  
> chcę filtrować gry  
> aby szybciej znaleźć interesujące mnie treści

**Kryteria akceptacji:**
- Użytkownik ma dostęp do opcji filtrowania
- Możliwe jest filtrowanie po: dacie dodania, ocenie, przedmiocie naukowym, stylu gry, nazwie
- Gry posiadają przypisane tagi
- Filtrowanie działa na podstawie tagów
- Wyniki aktualizują się po zastosowaniu filtrów

---

### US-06 — Zapisywanie ulubionych gier

**Rola:** Osoba zarejestrowana

> Jako osoba zarejestrowana  
> chcę mieć możliwość zapisywania ulubionych gier do swojego konta  
> aby mieć do nich szybki dostęp

**Kryteria akceptacji:**
- Przycisk na stronie gry dodaje ją do ulubionych
- Ulubione gry są widoczne na profilu użytkownika na osobnej zakładce

---

### US-07 — Ocenianie i komentowanie gier

**Rola:** Osoba zarejestrowana

> Jako osoba zarejestrowana  
> chcę oceniać i komentować gry  
> aby dzielić się opinią z innymi użytkownikami

**Kryteria akceptacji:**
- Użytkownik może dodać ocenę do gry w skali 0–5 gwiazdek z możliwością połówek (np. 3.5)
- Użytkownik może dodać komentarz słowny
- Komentarze są widoczne na stronie szczegółów gry
- Użytkownik może edytować lub usunąć swój komentarz
- Ocenę może zmienić tylko autor komentarza

---

## 👥 Grupy i klasy

### US-08 — Tworzenie i zarządzanie grupą

**Rola:** Nauczyciel

> Jako nauczyciel  
> chcę tworzyć i zarządzać grupą / klasą  
> aby organizować pracę uczniów

**Kryteria akceptacji:**
- Nauczyciel może utworzyć grupę i nadać jej nazwę
- Nauczyciel może dodawać uczniów do grupy
- Nauczyciel może usuwać uczniów z grupy
- Nauczyciel widzi listę członków grupy

---

### US-09 — Dodawanie uczniów do grupy

**Rola:** Nauczyciel

> Jako nauczyciel  
> chcę mieć możliwość dołączenia osoby zarejestrowanej do swoich grup / klas  
> aby zarządzać składem grupy

**Kryteria akceptacji:**
- Nauczyciel może dodać ucznia ręcznie po nazwie użytkownika
- Nauczyciel może wygenerować kod dostępu do grupy
- Uczeń może dołączyć do grupy podając kod dostępu
- Nauczyciel może włączyć opcję dodatkowego potwierdzenia dołączenia ucznia

---

### US-10 — Tworzenie kolekcji gier

**Rola:** Nauczyciel

> Jako nauczyciel  
> chcę mieć możliwość stworzenia kolekcji gier  
> aby moja grupa uczniów miała do nich łatwy dostęp

**Kryteria akceptacji:**
- Nauczyciel może stworzyć kolekcję i przypisać do niej gry
- Kolekcja może być udostępniona wybranej grupie
- Uczniowie grupy widzą udostępnioną kolekcję

---

### US-11 — Wybór gry według grup

**Rola:** Uczeń

> Jako uczeń  
> chcę mieć możliwość szybkiego wyboru gry bazując na grupach w jakich jestem  
> aby łatwo znaleźć gry powiązane z moją klasą

**Kryteria akceptacji:**
- Uczeń widzi grupy do których należy
- Grupy mogą zostać otagowane
- Filtrowanie "po grupie" działa na podstawie tagów grupy
- Uczeń widzi kolekcje udostępnione przez nauczyciela w danej grupie

---

### US-12 — Monitorowanie aktywności grupy

**Rola:** Nauczyciel

> Jako nauczyciel  
> chcę mieć możliwość monitorowania listy gier w jakie grają członkowie moich grup  
> aby śledzić aktywność uczniów

**Kryteria akceptacji:**
- Nauczyciel widzi listę gier w jakie grają uczniowie jego grup
- Lista może być filtrowana względem grupy i liczby zagrań

---

## 🏆 Aktywności i rywalizacja

### US-13 — Tworzenie wyzwań i turniejów

**Rola:** Nauczyciel

> Jako nauczyciel  
> chcę tworzyć wyzwania i turnieje oraz widzieć ich wyniki  
> aby angażować uczniów i monitorować ich postępy

**Kryteria akceptacji:**
- Nauczyciel może utworzyć wyzwanie lub turniej powiązany z jedną grą
- Nauczyciel może określić warunki: wynik, czas, osiągnięcie
- Aktywność może być przypisana do grupy
- System zapisuje wyniki uczniów i generuje ranking sortowany malejąco
- Ranking aktualizuje się automatycznie

---

### US-14 — Definiowanie i przyznawanie nagród

**Rola:** Nauczyciel

> Jako nauczyciel  
> chcę definiować i przyznawać nagrody  
> aby motywować uczniów do aktywności na platformie

**Kryteria akceptacji:**
- Nauczyciel może tworzyć nagrody z nazwą i wartością punktową
- Nagrody mogą być przypisane do wyzwań lub turniejów
- Nauczyciel może przyznać nagrodę ręcznie wybranemu uczniowi
- Uczeń otrzymuje powiadomienie o przyznanej nagrodzie

---

### US-15 — Zdobywanie punktów i osiągnięć

**Rola:** Uczeń

> Jako uczeń  
> chcę zdobywać punkty i osiągnięcia oraz widzieć je na profilu  
> aby śledzić swoje postępy

**Kryteria akceptacji:**
- Uczeń otrzymuje punkty za ukończenie wyzwań i osiągnięcia w grach
- Gry mogą zawierać osiągnięcia przyznawane automatycznie po spełnieniu warunków
- Punkty i osiągnięcia są widoczne na profilu użytkownika
- Punkty aktualizują się automatycznie

---

### US-16 — Wydawanie punktów na nagrody

**Rola:** Uczeń

> Jako uczeń  
> chcę wydawać punkty na nagrody  
> aby uzyskiwać korzyści za aktywność na platformie

**Kryteria akceptacji:**
- Uczeń może przeglądać dostępne nagrody
- Uczeń może wymienić punkty na nagrodę jeśli ma ich wystarczającą liczbę
- Po zakupie punkty są odejmowane i nagroda jest przypisana do ucznia
- Nagrody obejmują: plusy, oceny, przedmioty fizyczne odbierane w szkole za okazaniem dowodu zakupu punktowego

---

### US-17 — Ranking punktów

**Rola:** Uczeń

> Jako uczeń  
> chcę widzieć ranking punktów  
> aby porównywać się z innymi użytkownikami

**Kryteria akceptacji:**
- Ranking pokazuje użytkowników i ich punkty sortowane malejąco
- Ranking może być filtrowany: globalnie, regionalnie (szkoła), dla grupy
- Ranking aktualizuje się automatycznie

---

## 🛠️ Deweloper

### US-18 — Dodanie gry do platformy

**Rola:** Deweloper

> Jako deweloper  
> chcę dodać grę do platformy  
> aby była dostępna dla użytkowników serwisu

**Kryteria akceptacji:**
- Deweloper wypełnia formularz zawierający: nazwę, opis, link do gry, kategorię naukową, tagi, grupę wiekową, poziom zaawansowania
- Gra może mieć przypisanych wiele tagów i kategorii
- Deweloper może dodać osiągnięcia powiązane z grą
- Gra po dodaniu trafia do weryfikacji przez administratora przed opublikowaniem
- Deweloper może edytować dane swojej gry po jej opublikowaniu

---

## 🔧 Administracja

### US-19 — Panel administratora

**Rola:** Administrator

> Jako administrator  
> chcę mieć dostęp do listy gier, komentarzy oraz grup użytkowników  
> aby pilnować przestrzegania zasad serwisu

**Kryteria akceptacji:**
- Administrator ma dostęp do listy: gier, komentarzy, grup użytkowników
- Administrator może przeglądać szczegóły każdego elementu

---

### US-20 — Usuwanie treści i blokowanie użytkowników

**Rola:** Administrator

> Jako administrator  
> chcę mieć możliwość usuwania zawartości i blokowania użytkowników którzy łamią zasady serwisu  
> aby utrzymać porządek na platformie

**Kryteria akceptacji:**
- Administrator może usuwać: gry, komentarze, grupy
- Administrator może zablokować użytkownikowi możliwość dodawania ocen i komentarzy
- Administrator może zablokować kompletny dostęp użytkownika na określony czas liczony w dniach

---

### US-21 — Likwidowanie kont użytkowników

**Rola:** Administrator

> Jako administrator  
> chcę mieć możliwość likwidowania kont użytkowników  
> aby egzekwować zasady serwisu i zarządzać dostępem

**Kryteria akceptacji:**
- Administrator może ręcznie zlikwidować konto użytkownika
- Przed likwidacją administrator podaje powód usunięcia konta
- Użytkownik otrzymuje powiadomienie o likwidacji konta wraz z podanym powodem
- Użytkownik ma możliwość odwołania się od decyzji w ciągu 14 dni
- Po złożeniu odwołania administrator otrzymuje powiadomienie i może cofnąć decyzję
- Konto pozostaje zablokowane (nie usunięte) do czasu rozpatrzenia odwołania
