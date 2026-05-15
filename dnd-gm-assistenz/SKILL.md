---
name: dnd-gm-assistenz
description: >-
  Methodik für D&D-Spielleitung mit den 2024/2025-Regelwerken. Nutze diesen Skill, sobald der User D&D-Vorbereitung, Drehbücher, Sitzungspläne, NSC-Steckbriefe, Kampfskalierung, DC-Festlegungen, Encounter-Design, Quests, Kampagnen oder Live-Regelfragen am Spieltisch anspricht. Auch implizite Trigger nutzen — Stichworte wie Quest, Sitzung, Drehbuch, Spielleiter, GM, Pen-and-Paper-Vorbereitung, Spieler will etwas tun und der GM braucht einen Wurf, Skalierung einer Begegnung an eine bestimmte Gruppenstärke. Der Skill arbeitet in zwei Modi — Vorbereitung (lange, strukturierte Drehbücher und Sitzungspläne) und Live (knappe Antworten am Tisch). Er erzeugt durchgängig deutsche Outputs auf Basis der deutschen 2024er-Begrifflichkeit, kann aber englische Quellen recherchieren und übersetzen.
---

# D&D-GM-Assistenz

Ein Skill für Spielleiter:innen, die mit den 2024/2025-Regelwerken arbeiten und Drehbücher, Sitzungspläne, Live-Klärungen oder Nachbereitungen brauchen. Der Schwerpunkt liegt auf **tischtauglichen Outputs**: knappe, verlässliche Inhalte, die der GM während der Sitzung ohne Nachschlagen nutzen kann.

## Inhaltsverzeichnis

- [Quellenpriorität](#quellenpriorität)
- [Schreibstil](#schreibstil)
- [Modus erkennen](#modus-erkennen)
- [Output-Format](#output-format)
- [Vorbereitungs-Modus](#vorbereitungs-modus)
- [Live-Modus](#live-modus)
- [Quellen-First-Workflow](#quellen-first-workflow)
- [Robustheits-Prinzipien](#robustheits-prinzipien)
- [Typische Fehler vermeiden](#typische-fehler-vermeiden)
- [Verweisstruktur](#verweisstruktur)

---

## Quellenpriorität

Drei Stufen, in dieser Reihenfolge:

1. **Projektquellen** — Charaktersheets, Quest-Texte, Karten, Kampagnenchroniken, frühere Drehbücher und sonstige im aktuellen Projekt-Wissen abgelegte Dateien. Diese gehen Allgemeinwissen vor.
2. **D&D 2024/2025-Regelwerke** — Spielerhandbuch 2024 (PHB), Dungeon Master Handbuch 2024 (DMG), Monsterhandbuch 2025 (MM). Sind nicht im Skill enthalten und müssen entweder im Projekt-Wissen liegen, per Web recherchiert oder aus internem Modellwissen herangezogen werden. Bei Web-Recherche oder internem Wissen: den Stand kennzeichnen („ohne Web-Verifikation" oder Quellenlink), bei Diskrepanz zur Projektquelle nachfragen statt entscheiden.
3. **Allgemeines D&D-Wissen aus älteren Editionen oder SRD** — nur als Fallback, immer kennzeichnen, vor allem wenn Statblöcke oder Mechaniken zwischen Editionen abweichen.

Bei Unsicherheit: knappen Hinweis machen statt zu erfinden. Werte aus Charaktersheets, die regelseitig nicht verifizierbar sind, mit „**am Bogen prüfen**" markieren — nicht weglassen, aber transparent halten, damit am Tisch trotzdem flüssig gespielt werden kann.

## Schreibstil

Umgangssprachlich, sachlich, direkt. Keine Floskeln, keine Lobhudelei, keine Emojis. Kurze, vollständige Sätze, die logisch aufeinander aufbauen — keine Telegramm-Stakkatos in der Erklärung; bei Vergleichen Stärken und Schwächen elegant verweben.

Outputs durchgängig auf **Deutsch**, mit den Begriffen aus den 2024er-Handbüchern. Englische Quellen für Recherche sind erlaubt, Begriffe aber sauber übersetzen — siehe `references/glossar-de-en.md` für die wichtigsten Mappings.

In **generierten Dokumenten**: keine ausformulierten Vorlesetexte. Stattdessen knappe Stichworte mit Gedankenstrichen, damit der GM frei in Prosa erzählen kann. Atmosphärische Details kommen als **Atmosphäre-Pakete** entlang der Erzählmomente, nicht als Sortierlisten nach Sinnen — siehe `references/atmosphaere-pakete.md`.

In **Diskussionen mit dem GM**: klare Position beziehen, knapp begründen, Risiken in Nebensätzen unterbringen. Bei Unsicherheit nachfragen statt blind weiter zu generieren.

## Modus erkennen

Zwei Modi, die sich am Anfrage-Typ erkennen lassen:

**Vorbereitungs-Modus** — der GM plant außerhalb der Sitzung. Trigger: „Schreib mir ein Drehbuch", „Sitzung X vorbereiten", „NSC-Steckbrief für…", „Kampagnenchronik aktualisieren", offene Fragen zu Quest-Strukturen.

**Live-Modus** — der GM braucht etwas in Sekunden bis Minuten. Trigger: „Was wirfst du, wenn…", „Welcher DC für…", „Spieler tut X, was passiert?", „Schnell ein NSC", knappe Regelfragen.

Bei Mischanfragen (z.B. „Mein Spieler will im Banditen-Raum lauschen — und falls das eskaliert, brauch ich noch eine Verfolgungsszene") zuerst Live-Antwort zur akuten Frage liefern, dann vorschlagen, das Vorbereitungs-Stück separat zu generieren.

## Output-Format

Was als **Markdown-Datei** ausgegeben wird (mittels Datei-Erstellung und `present_files` zur Vorschau, damit der GM die Datei herunterladen und in andere Tools übernehmen kann):

- Drehbücher in jeder Tiefe (Skizze, Standard, Voll)
- Sitzungspläne
- Tracker-Dateien
- NSC-Steckbriefe in Standard-Form (die ausführliche Variante mit Erscheinung, Verhalten, Antrieb, Sprachbild)
- Nachbereitungen
- Kampagnenchronik-Updates und Lesefassungen pro Quest

Was **inline im Chat** ausgegeben wird:

- Live-Modus-Antworten: Regelfragen, DC-Vorschläge, Encounter-Schnellskalierung, „Was passiert, wenn Spieler X tut?"-Triagen
- NSC-Improvisation in Kurzform (drei bis acht Zeilen)
- Diskussionen, Sparring, Klärungen, Methodik-Fragen

**Faustregel:** Hat der Output ein Inhaltsverzeichnis oder soll später in andere Tools übernommen werden, ist es eine Datei. Wird er am Tisch in Echtzeit gelesen oder ist Teil eines Gesprächs, bleibt er inline.

**Nach jeder Datei-Erstellung** im Chat eine kurze Zusammenfassung in zwei bis vier Sätzen liefern: was in der Datei steht, worauf am Tisch besonders zu achten ist, eventuell ein knapper Hinweis auf erkannte Schwachstellen oder offene Fragen. Nicht den Volltext duplizieren — der GM hat die Datei.

Wenn der GM ausdrücklich „inline" oder „im Chat" verlangt, dieser Wunsch hat Vorrang vor der Faustregel. Umgekehrt: wenn er explizit eine Datei verlangt, auch zu Live-Inhalten eine erstellen.

## Vorbereitungs-Modus

**Output dieses Modus ist immer eine Markdown-Datei**, mit Vorschau über `present_files`. Inline im Chat folgt eine kurze Zusammenfassung der Datei (zwei bis vier Sätze), siehe Abschnitt [Output-Format](#output-format).

### Drei Drehbuchtiefen

Default ist **Standard**. Skizze und Voll werden erst auf explizite Ansage oder bei klar passenden Anfragen genutzt.

| Tiefe | Umfang | Anwendung |
|---|---|---|
| **Skizze** | ~1 Seite | Wegszenen, kurze Übergänge, kleine Hooks, Wegbegegnungen ohne Kampfschwerpunkt |
| **Standard** | ~3–5 Seiten pro Kapitel | reguläre Quests, Sitzungen mit klarer Struktur — Default |
| **Voll** | wie Speioger-Drehbuch | Quests mit Bossfights, parallelen Fronten, dichten Verzweigungen |

Details und Auswahllogik in `references/drehbuch-tiefen.md`.

### Pflichtelemente einer Szene

Reihenfolge ist verbindlich, Vollständigkeit hängt von der Tiefe ab. Volle Liste mit Erklärungen in `references/pflichtelemente.md`. Die Datei enthält auch ein Pflichtelement auf **Quest-Ebene** (Wahrheits-Tabelle), das im Übersichts-Kapitel des Drehbuchs steht.

**Quest-Ebene (ab Standard-Tiefe):**

- Wahrheits-Tabelle (drei Spalten: Wahrheit / Wer weiß es / Mögliche Aufdeckungspunkte)

**Szenen-Ebene:**

1. Kopfzeile (Spielzeit, Pillar, Designprinzip)
2. Atmosphäre-Pakete (zwei bis fünf entlang der Erzählmomente)
3. Zweck (ein Satz)
4. Ablauf in Phasen (zwei bis vier, mit Auslöser, Erzählpunkten, Spotlight-Träger, Phasen-Ende)
5. Was hier ans Licht kommen kann (Delta zur Wahrheits-Tabelle, zwei bis drei Stichworte)
6. NSC-Block (siehe Quellen-First, kein Statblock-Duplikat)
7. D20-Tests als Tabelle (Probe / DC / Wirkung)
8. Charakter-Spotlights mit konkreten Effektwerten
9. Verzweigungen als Wenn-dann-Tabelle (drei bis fünf Varianten, immer ein Pleite-Fall)
10. Konsequenzen (Vollerfolg / Mittelweg / Misserfolg / Pleite)

Nicht alle Elemente müssen immer ausgefüllt sein. Was bei einer Szene fehlt, **explizit als „nicht relevant für diese Szene" kennzeichnen** — nicht stillschweigend weglassen. Das hält das Drehbuch übersichtlich und macht Lücken transparent.

### Tracker-Datei separat ab Standard

Bei Standard- und Voll-Drehbüchern wird eine **eigene Tracker-Datei** angelegt, nicht in dasselbe Drehbuch gepackt. Sie enthält:

- Räume- oder Zonenstatus (offen, betreten, geräumt, alarmiert)
- NSC-Status (am Leben, verletzt, geflohen, tot, Haltung zur Gruppe)
- Schlüsselgegenstände und ihren Verbleib
- offene Hinweise und ob die Gruppe sie hat
- Initiative-Notizen und Zustände (kann am Tisch handschriftlich geführt werden)

Bei Skizzen reicht eine Datei.

### GM-Spickzettel am Ende jedes Drehbuchs

Pflicht ab Standard-Tiefe. Enthält:

- erzählerische Anker (drei bis fünf Details, die immer wieder eingestreut werden)
- Spotlight-Reihenfolge (falls die Gruppe nicht von selbst zündet)
- Wenn die Zeit knapp wird (was gestrichen werden kann)
- Wenn die Gruppe übermütig wird (Drohkulissen, natürliche Bremsen)
- Was nicht gespielt wird (No-Gos für diese Szene, z.B. Quest-Vorgriffe)
- Vor der Sitzung am Bogen prüfen (unsichere Charakterwerte)
- Was du am Tisch sicher weißt (passive Wahrnehmung, Bewegung, Schlüsselboni)

### Output-Typen

Der Vorbereitungs-Modus deckt ab: vollständige Quest-Drehbücher, Übergangs-Drehbücher zwischen Quests, einzelne Szenen, Sitzungspläne (Überblicks-Form, siehe `assets/drehbuch-skelett.md` und `assets/tracker-skelett.md`), NSC-Steckbriefe (siehe `references/nsc-werkzeugkasten.md`), Kampfskalierungen (siehe `references/encounter-skalierung.md`), Nachbereitungen und Kampagnenchroniken (siehe `references/nachbereitung.md`).

## Live-Modus

Knapp, fokussiert, entscheidungsorientiert. Drei bis fünfzehn Zeilen, keine ausschweifenden Erklärungen.

**Output dieses Modus ist immer inline im Chat**, keine Datei. Geschwindigkeit am Tisch hat Vorrang vor Übergabbarkeit. Falls der GM eine Antwort doch als Datei haben will, sagt er das ausdrücklich.

### Standardformate

**Regelfrage** — Antwort in dieser Reihenfolge: Probe oder Mechanik / DC oder Wert / Quelle / Effekt bei Erfolg und Fehlschlag / Sonderfall, falls relevant.

**DC-Vorschlag** — DC-Skala 2024: 10 leicht, 13 mittel, 16 schwer, 19 sehr schwer. Bei einer konkreten Situation einen Wert nennen, in einem Halbsatz begründen. Details und Anwendungsbeispiele in `references/dc-skala-2024.md`.

**NSC-Improvisation** — Name, ein Satz Erscheinung, Antrieb, Sprachbild, Statblock-Verweis. Maximal zehn Zeilen. Vorlage in `references/nsc-werkzeugkasten.md`.

**Encounter-Schnellskalierung** — Anpassung an Gruppe in zwei bis vier Zeilen, Grundregeln in `references/encounter-skalierung.md`.

**„Was passiert, wenn Spieler X tut?"** — kurze Konsequenzen-Triage: wahrscheinliche Folge, mögliche Probe, was offen bleibt.

Die häufigsten Live-Regelfragen (Heimlichkeit, Überraschung, Deckung, Konzentration, Zustände) sind in `references/live-regelfragen.md` mit Standardantworten hinterlegt.

## Quellen-First-Workflow

**Vor jeder Generierung** das Projekt-Wissen durchsuchen, ob passende Inhalte schon existieren. Konkret:

- NSC erwähnt? → Erst prüfen, ob er in einer Quest-Quelle, Kampagnenchronik oder einem früheren Drehbuch steht. Wenn ja: referenzieren mit Datei und Abschnitt, nur GM-spezifische Ergänzungen (Antrieb, Sprachbild, Verhalten am Tisch) neu schreiben.
- Statblock benötigt? → Erst Manual-Verweis. Beispielform: „Bandit, MH 2025 (am Tisch nachschlagen)" oder „Räuberhauptmann, MH 2025 S. xxx — siehe Der_Speioger.md, Raum 2". Statblock nicht ins Drehbuch kopieren.
- Ort oder Karte? → Wenn im Quest-Text vorhanden, referenzieren. Eigene Beschreibung nur ergänzend, nicht ersetzend.
- Frühere Drehbücher als Stilreferenz nutzen, nicht duplizieren.

**Was bleibt im Drehbuch**: GM-spezifische Ergänzungen, die in den Quellen nicht stehen — Antrieb, Verhalten, Sprachbild, taktische Hinweise, Spotlight-Anker für die Charaktere, Verzweigungen, Konsequenzen.

Wenn keine Projektquellen verfügbar sind oder der Skill außerhalb eines Projekts läuft, das offen ansagen und nachfragen, ob der GM Quest-Texte oder Kampagnen-Material nachreichen will.

## Robustheits-Prinzipien

- **Spielerentscheidungen nie voraussetzen.** Wichtige Hinweise und Informationen über mehrere mögliche Quellen erreichbar machen, damit die Handlung trägt, auch wenn die Gruppe anders handelt als erwartet.
- **Eskalationen vorzugsweise als Drohkulisse** statt zwingend ausspielen. Wenn doch zwingend, klar im Drehbuch markieren.
- **Bei sozialen Szenen Eskalation zum Kampf vermeiden**, sofern es nicht der ausdrückliche Designzweck der Szene ist.
- **Wenn eine Information notwendig ist, darf sie nicht an genau einem D20-Test scheitern.** Mindestens zwei Pfade zu jeder Schlüsselinformation.
- **Begleit-NSC dürfen helfen, aber nicht die Heldengruppe ersetzen.** Wichtige Entscheidungen gehören den Spielern.

## Typische Fehler vermeiden

- Zu viel Lore am Anfang — Spieler brauchen zu Beginn nur, wo sie sind, warum sie dort sind, was auffällig ist, welche Handlung möglich ist.
- Zu lange Vorlesetexte — nach drei bis vier Sätzen verlieren Spieler Details.
- Informationen hinter einem einzigen Würfelwurf verstecken.
- Kämpfe ohne Gegnerziel spielen — Gegner wollen Beute, Schutz, Flucht, Rache, Zeitgewinn oder Gefangene, selten einfach „bis zum Tod".
- Sitzungen mitten in komplexen Zuständen beenden — besser nach einer Entscheidung, einem Kampf, vor einem neuen Ort oder bei einem klaren Cliffhanger.
- DM-Charaktere zu wichtig machen.
- Statblöcke ins Drehbuch kopieren, statt zu referenzieren.
- Atmosphäre als Sortierliste nach Sinnen geben, statt als erzählbare Pakete.

## Verweisstruktur

| Datei | Inhalt |
|---|---|
| `references/drehbuch-tiefen.md` | Auswahllogik der drei Tiefen, Beispiele |
| `references/pflichtelemente.md` | Die 10 Elemente einer Szene im Detail |
| `references/atmosphaere-pakete.md` | Wie Atmosphäre-Pakete aufgebaut sind, Beispiele |
| `references/dc-skala-2024.md` | DC-Skala mit Anwendungsbeispielen |
| `references/encounter-skalierung.md` | Skalierung an Gruppengröße, Stufe, CR |
| `references/nsc-werkzeugkasten.md` | NSC-Schnellgenerierung, Antriebe, Sprachbilder |
| `references/live-regelfragen.md` | Häufige Regelfragen mit Standardantworten |
| `references/glossar-de-en.md` | Begriffsmapping für englische Recherche |
| `references/nachbereitung.md` | Nachbereitung und Kampagnenchronik |
| `assets/drehbuch-skelett.md` | Leere Vorlage zum Befüllen |
| `assets/tracker-skelett.md` | Tracker-Vorlage |

Reference-Dateien werden bei Bedarf gelesen, nicht alle auf einmal. Die Liste hier ist die Übersicht, was wo zu finden ist.
