---
title: "OcuWise: Provedba — Aktivnosti, Plan, Dokazi"
tags: []
url: https://ekohezija.gov.hr
date_created: 2026-10-01 09:00
citekey:
author:
year:
type:
---
[< Back to Provedba Dash](30-funding-ocuwise-provedba.md)

Izvedbena bilješka: **što se isporučuje, do kada i koliko košta**, uz dokaze po stavci. Gantt i redoslijed su na [Provedba — Proračun, Nabava, Rizici](30-funding-ocuwise-provedba.md). Novac, stanje ZNS-ova i rizici su u [Provedba — Proračun, Nabava, Rizici](30-funding-ocuwise-provedba.md); rokovi i obveze izvještavanja u [Rokovi, Reporting, Obaveze, ZNS](40-funding-ocuwise-zns-rokovi-obaveze.md). Ovdje se ne ponavljaju.

---
## 1. Pregled aktivnosti

| Stavka | Aktivnost | Izvršitelj | Iznos | **Isporuka do** | Status | ZNS |
| ------ | --------- | ---------- | ----: | --------------- | ------ | --- |
| A1.1 | Optimizacija backend i frontend sustava | Zeraxo | 39.500 | ostatak: `2027-03-31` | u tijeku (29.500 / 39.500) | 01, 03, + |
| A1.2 | Nadogradnja AI funkcionalnosti | We Bring Apps | 42.000 | **`2027-03-31`** | spava — **kritični put** | — |
| ~~A1.3~~ | ~~DevOps CI/CD~~ | ~~auctusNET~~ | ~~12.000~~ | ~~`2026-08-26`~~ | ~~gotovo~~ | ~~03~~ |
| A1.4 | Testiranje sustava | auctusNET | 10.000 | `2027-03-31` | spava | — |
| A2.1 | Dizajn korisničkog sučelja | Idoneus | 15.000 | **`2026-11-26`** | planirano | 04 |
| A2.2 | Trošak djelatnika (Mladen Posavec) | interno | 10.242,54 | `2027-03-31` | u tijeku — 354 h ostalo | 01, 02, 03, + |
| ~~A3.1~~ | ~~Marketinški plan i kanali~~ | ~~Rebellis~~ | ~~10.000~~ | ~~`2026-05-26`~~ | ~~gotovo~~ | ~~02~~ |
| A3.2 | Istraživanje tržišta i validacija | Rebellis | 13.500 | **`2026-11-26`** | planirano | 04 |
| A3.3 | Izrada web stranice | LUNA IT | 8.000 | **`2026-11-26`** | planirano | 04 |
| ~~A3.4~~ | ~~Investor kit~~ | ~~Three Oceans~~ | ~~10.000~~ | ~~`2026-05-26`~~ | ~~gotovo~~ | ~~02~~ |
| ~~PM.1~~ | ~~Priprema projektnog prijedloga~~ | ~~IMERSO~~ | ~~4.000~~ | ~~`2025-12-30`~~ | ~~gotovo~~ | ~~02~~ |
| ~~PM.2~~ | ~~Vođenje projekta~~ | ~~LUNA IT~~ | ~~3.000~~ | ~~`2026-05-26`~~ | ~~gotovo~~ | ~~02~~ |
| — | Fiksna stopa 7 % | — | 12.406,98 | prati stavke | — | svaki |

- **Isporuka do** = zadnji dan izvještajnog razdoblja ZNS-a u kojem se stavka potražuje; trošak mora biti **nastao i plaćen** do tog datuma;
- Krajnji rok za sve: izdatak nastaje do `2027-03-31`, plaćanje do `2027-04-30`;
- Preostalo za isporučiti i platiti: **108.194,18 €**, od čega je A1.2 (42.000 €) najveći pojedinačni blok;

Statusi prate boje u `ocuwise-tracker-placanja.xlsx`: *spava* · *u tijeku* · *planirano za idući ZNS* · *gotovo*.

---
## 2. Aktivnosti

### A1.1 · Optimizacija backend i frontend sustava — Zeraxo (39.500 €)

- **Status:** u tijeku — 29.500 € plaćeno, **10.000 € ostalo** za frontend nakon A2.1;
- **Izvršitelj:** Zeraxo d.o.o., OIB 25157435812; ponuda **425-037-10300** od 10.11.2025.;
- **Što (ugovoreni opis troška):**
    - *„Izvršit će se optimizacija backend i frontend sustava, s ciljem povećanja performansi, responzivnosti, sigurnosti i skalabilnosti… refaktoriranja ključnih dijelova koda, poboljšanje pristupa bazi podataka i optimizacija logike obrade kliničkih podataka. Frontend će se unaprijediti kroz optimizaciju učitavanja, modularizaciju sučelja i poboljšanje UX-a… sukladno redizajnu korisničkog sučelja koje je definirano u aktivnosti Dizajn korisničkog sučelja."*;
    - Ukratko: backend prvo, frontend tek nakon A2.1;
- **Kako / napomene:**
    - **Faza 1** (9.500 €, ZNS-01): analiza, mapiranje arhitekture, prioriteti optimizacije;
    - **Faza 2** (20.000 €, ZNS-03): refaktoriranje produkcijskog puta, usklađivanje obrade podataka (2,4 × 10⁻⁷), ONNX izvoz, TLS, demonstracijsko sučelje;
    - **Preostalo** (10.000 €): podjela sučelja u kontrole i module, responzivnost, optimizacija poziva na backend;
    - ⚠️ **optimizacija baze podataka** je u ponudi, a nije u dokumentaciji isporuke — ili se pokriva iz preostalih 10.000 € ili treba zatražiti zapis od Zeraxa;
- **Nabava:** ponuda od 10.11.2025., nakon početka provedbe (01.10.2025.) → zadovoljava Upute 9.2;
- **Isporuka:** produkcijski sloj + demonstracijsko sučelje na `ocuwise.octomoon.com`;
- **Dokazi:**
    - ✅ izvješće izvršitelja `A1.1-Zeraxo-izvjesce-Octomoon-BE-FE-08-2026.pdf`;
    - ✅ ponuda, račun, dokaz plaćanja (25.08.2026.);
    - ⬜ za preostalih 10.000 €: novo izvješće + račun + dokaz plaćanja;
- **ZNS:** 01 (9.500) · 03 (20.000) · idući (10.000);

### A1.2 · Nadogradnja AI funkcionalnosti — We Bring Apps (42.000 €)

- **Status:** **spava — kritični put**; najveća pojedinačna stavka, nije započela;
- **Izvršitelj:** We Bring Apps d.o.o., OIB 36742734530; ponuda **11-2025** od 07.11.2025.;
- **Što (ugovoreni opis troška):**
    - *„Nadogradnja uvođenjem naprednijih AI funkcionalnosti s fokusom na razvoj i integraciju prediktivnih modela temeljenih na kliničkim parametrima te izgradnja i treniranje modela strojnog učenja u suradnji sa stručnjacima struke."*;
- **Kako / napomene:**
    - Opseg iz ponude: analiza postojećeg stanja · priprema podataka (čišćenje, anonimizacija, GDPR) · baseline modeli · treniranje naprednih modela · validacija · evaluacija i interpretabilnost · **API endpoint + dokumentacija**;
    - Rok iz ponude: **600 radnih sati (75 dana)** — uz plaćanje do 31.03.2027. znači najkasniji realan start oko **studenog 2026.**;
    - ⚠️ dio rada koji je sadržajno A1.2 već je opisan u dokaznici A1.1 iz ZNS-03 (treniranje modela, vanjska validacija). **Pri izvještavanju A1.2 ne ponavljati te iste rezultate** — tražiti ono što We Bring Apps stvarno isporuči;
- **Nabava:** ponuda od 07.11.2025., nakon početka provedbe → uredno;
- **Isporuka:** modeli + API + dokumentacija;
- **Dokazi:**
    - ⬜ izvješće izvršitelja, račun, dokaz plaćanja, tehnička dokumentacija modela i API-ja;
- **ZNS:** planirano 05 ili 06 — **mora biti plaćeno do 31.03.2027.**;

> [!todo] Ostale stavke
> Blokovi za A1.4, A2.1, A2.2, A3.2, A3.3 i zatvorene stavke (A1.3, A3.1, A3.4, PM.1, PM.2) popunjavaju se istim predloškom. Redoslijed po prioritetu: **A2.1 → A3.2 → A3.3** (sve u ZNS-04), zatim **A1.2 → A1.4**.

---
## 3. Osoblje (A2.2)

De minimis poziv, nije GBER čl. 25 — ali trošak osoblja ipak ima vlastiti režim dokazivanja.

- **Tko:** Mladen Posavec, Ugovor o radu u `ocuwise-prijava/zaposleni-ugovori-o-radu/`;
- **Metoda:** standardna veličina jediničnog troška, **7,39 €/h**, fiksna za cijelu provedbu (Prilog 9);
- **Fond:** 1.386 h ukupno · 1.032 h potrošeno (ZNS-01: 743, ZNS-02: 192, ZNS-03: 97) · **354 h ostalo**;
- **Dokaz uz ZNS:** *Izjave o radu potpisane od strane nadređene osobe* — broj sati na teret projekta;
    - platne liste i dokaz isplate **ne** idu uz ZNS, ali se čuvaju (Upute str. 32);
- **Zamjena:** osoba s istim ili boljim kvalifikacijama uz istu satnicu, bez ponovne evaluacije;

---
## Related

[OcuWise MoC](00-funding-ocuwise-moc.md), [Provedba — Proračun, Nabava, Rizici](30-funding-ocuwise-provedba.md), [Rokovi, Reporting, Obaveze, ZNS](40-funding-ocuwise-zns-rokovi-obaveze.md), [Grant Application, Deliverables](10-funding-ocuwise-prijava-deliverables.md),
