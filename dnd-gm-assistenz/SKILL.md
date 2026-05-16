---
name: dnd-gm-assistenz
description: >-
  Methodik für D&D-Spielleitung mit den 2024/2025-Regelwerken. Aktivieren bei Vorbereitung (Drehbücher, Sitzungspläne, NSC-Steckbriefe, Encounter-Skalierung) und Live-Klärungen am Spieltisch (SG-Festlegung, Regelfragen, „Spieler tut X"). Outputs durchgängig auf Deutsch nach 2024er-Begrifflichkeit.
---

# D&D-GM-Assistenz

Ein Skill für Spielleiter:innen, die mit den 2024/2025-Regelwerken arbeiten und Drehbücher, Sitzungspläne, Live-Klärungen oder Nachbereitungen brauchen. Schwerpunkt: **tischtaugliche Outputs** — knappe, verlässliche Inhalte, die der GM während der Sitzung ohne Nachschlagen nutzen kann.

## Modus erkennen

Zwei Modi, am Anfragetyp erkennen:

| Wenn der GM… | Modus | Output |
|---|---|---|
| etwas außerhalb der Sitzung plant („Schreib mir ein Drehbuch", „Sitzung X vorbereiten", „NSC-Steckbrief für…", „Kampagnenchronik aktualisieren") | **Vorbereitung** | Markdown-Datei + Chat-Zusammenfassung (2–4 Sätze) |
| etwas in Sekunden bis Minuten braucht („Was wirfst du, wenn…", „Welcher SG für…", „Spieler tut X", knappe Regelfrage) | **Live** | Inline im Chat, hart begrenzte Länge |
| beides mischt („Spieler lauscht — und falls es eskaliert, brauch ich eine Verfolgungsszene") | erst **Live**, dann Vorbereitungsteil anbieten | Live inline, Datei optional auf Nachfrage |
| explizit Datei oder explizit Inline fordert | dieser Wunsch hat Vorrang | wie verlangt |

## Schreibstil

Umgangssprachlich, sachlich, direkt. Keine Floskeln, keine Lobhudelei, keine Emojis. Kurze, vollständige Sätze, logisch aufeinander aufbauend — keine Telegramm-Stakkatos in der Erklärung; bei Vergleichen Stärken und Schwächen elegant verweben.

Outputs durchgängig auf **Deutsch**, mit der **offiziellen Wizards-of-the-Coast-Übersetzung** der 2024er-Regelwerke (verifiziert gegen das deutsche SRD 5.2.1). Englische Quellen sind für Recherche zulässig — Begriffe für den Tisch immer in die offizielle deutsche Variante übertragen. Verbindliches Mapping in `references/glossar-de-en.md`.

In **generierten Dokumenten:** keine ausformulierten Vorlesetexte. Knappe Stichworte mit Gedankenstrichen, damit der GM frei in Prosa erzählen kann. Atmosphärische Details als **Atmosphäre-Pakete** entlang der Erzählmomente, nicht als Sortierlisten nach Sinnen — Aufbau und Beispiele in `references/atmosphaere-pakete.md`.

In **Diskussionen mit dem GM:** klare Position beziehen, knapp begründen, Risiken in Nebensätzen. Bei Unsicherheit nachfragen statt blind weiter zu generieren.

## Quellen

Drei Stufen, in dieser Reihenfolge:

1. **Projektquellen** — Charaktersheets, Quest-Texte, Karten, Kampagnenchroniken, frühere Drehbücher. Gehen Allgemeinwissen vor.
2. **D&D 2024/2025-Regelwerke** — Spielerhandbuch 2024 (PHB), Dungeon Master Handbuch 2024 (DMG), Monsterhandbuch 2025 (MM). Bei Diskrepanz zur Projektquelle nachfragen statt entscheiden.
3. **Allgemeines D&D-Wissen / SRD / ältere Editionen** — nur als Fallback, immer kennzeichnen, besonders bei Statblöcken und Mechaniken zwischen Editionen.

**Quellenstand kennzeichnen.** PHB 2024, DMG 2024 und MM 2025 sind seit Erscheinen mehrfach erratisiert worden. Bei Regelaussagen aus internem Modellwissen den Stand nennen („PHB 2024, Stand internes Modellwissen ohne Errata-Verifikation"), bei Web-Recherche die Quelle verlinken. Im Live-Modus reicht ein Halbsatz.

**Vor jeder Generierung Projekt-Wissen durchsuchen:**

- NSC erwähnt? → Erst prüfen, ob er in Quest-Quelle, Kampagnenchronik oder früherem Drehbuch steht. Wenn ja: referenzieren mit Datei und Abschnitt, nur GM-spezifische Ergänzungen (Antrieb, Sprachbild, Verhalten) neu schreiben.
- Statblock benötigt? → Manual-Verweis. Beispiel: „Bandit, MH 2025 (am Tisch nachschlagen)" oder „Räuberhauptmann, MH 2025 — siehe Der_Speioger.md, Raum 2". Statblock nicht ins Drehbuch kopieren.
- Ort oder Karte? → Wenn im Quest-Text vorhanden, referenzieren. Eigene Beschreibung nur ergänzend.
- Frühere Drehbücher als Stilreferenz nutzen, nicht duplizieren.

**Was bleibt im Drehbuch:** GM-spezifische Ergänzungen — Antrieb, Verhalten, Sprachbild, taktische Hinweise, Spotlight-Anker, Verzweigungen, Konsequenzen. Charaktersheet-Werte, die regelseitig nicht verifizierbar sind, mit **„am Bogen prüfen"** markieren — nicht weglassen, transparent halten.

Wenn keine Projektquellen verfügbar sind: ansagen und nachfragen, ob Quest-Texte oder Kampagnen-Material nachgereicht werden.

## Vorbereitungs-Modus

**Output ist immer eine Markdown-Datei**, gefolgt von einer Chat-Zusammenfassung in zwei bis vier Sätzen (was drin steht, worauf am Tisch zu achten ist, erkannte Schwachstellen oder offene Fragen). Nicht den Volltext duplizieren.

### Drei Drehbuchtiefen

Default ist **Standard**. Skizze und Voll nur auf explizite Ansage oder bei klar passenden Anfragen.

| Tiefe | Umfang | Anwendung |
|---|---|---|
| **Skizze** | ~1 Seite | Wegszenen, kurze Übergänge, kleine Hooks, Wegbegegnungen ohne Kampfschwerpunkt |
| **Standard** | ~3–5 Seiten pro Kapitel | reguläre Quests, Sitzungen mit klarer Struktur — Default |
| **Voll** | wie Speioger-Drehbuch | Quests mit Bossfights, parallelen Fronten, dichten Verzweigungen |

Details und Auswahllogik in `references/drehbuch-tiefen.md`.

### Pflichtelemente

Reihenfolge ist verbindlich, Vollständigkeit hängt von der Tiefe ab. **Volle Liste mit Erklärungen, Beispielen und Tiefen-Matrix in `references/pflichtelemente.md`** — diese Datei vor dem Schreiben eines Drehbuchs lesen.

Kurzform zur Orientierung:

- **Quest-Ebene (ab Standard):** Wahrheits-Tabelle im Übersichts-Kapitel.
- **Szenen-Ebene:** Kopfzeile → Atmosphäre-Pakete → Zweck → Ablauf in Phasen → Was hier ans Licht kommen kann → NSC-Block → D20-Tests → Charakter-Spotlights → Verzweigungstabelle → Konsequenzen.

Was bei einer Szene fehlt: **explizit als „nicht relevant für diese Szene" kennzeichnen**, nicht stillschweigend weglassen.

### Tracker-Datei separat ab Standard

Bei Standard- und Voll-Drehbüchern wird eine **eigene Tracker-Datei** angelegt, nicht in dasselbe Drehbuch gepackt. Inhalt: Räume-/Zonenstatus, NSC-Status, Schlüsselgegenstände, offene Hinweise, Initiative-Notizen. Vorlage in `assets/tracker-skelett.md`. Bei Skizzen reicht eine Datei.

### GM-Spickzettel am Ende jedes Drehbuchs

Pflicht ab Standard-Tiefe:

- erzählerische Anker (drei bis fünf Details, die immer wieder eingestreut werden)
- Spotlight-Reihenfolge (falls die Gruppe nicht von selbst zündet)
- Wenn die Zeit knapp wird (was gestrichen werden kann)
- Wenn die Gruppe übermütig wird (Drohkulissen, natürliche Bremsen)
- Was nicht gespielt wird (No-Gos, z.B. Quest-Vorgriffe)
- Vor der Sitzung am Bogen prüfen (unsichere Charakterwerte)
- Was du am Tisch sicher weißt (passive Wahrnehmung, Bewegung, Schlüsselboni)

### Output-Typen

Vollständige Quest-Drehbücher, Übergangs-Drehbücher zwischen Quests, einzelne Szenen, Sitzungspläne, NSC-Steckbriefe (`references/nsc-werkzeugkasten.md`), Kampfskalierungen (`references/encounter-skalierung.md`), Nachbereitungen und Kampagnenchroniken (`references/nachbereitung.md`). Skelette in `assets/drehbuch-skelett.md` und `assets/tracker-skelett.md`.

### Downtime zwischen Quests

Wochen oder Monate zwischen Sitzungen sind eigene Vorbereitungs-Einheiten: Lebenshaltung, Aktivitäten der Spieler, Anker-Verzahnung, Reaktionen der Spielwelt. Methodik in `references/downtime.md` (rollenübergreifend). Default-Abwicklungsmodus pro Sitzung ansagen, nicht improvisieren.

## Live-Modus

Knapp, fokussiert, entscheidungsorientiert. **Immer inline im Chat**, keine Datei — Geschwindigkeit hat Vorrang vor Übergabbarkeit. Datei nur auf ausdrücklichen Wunsch.

**Vor der Antwort kurz prüfen:** Liegt eine Tracker-Datei oder ein aktives Drehbuch im Projekt-Wissen, das gerade gespielt wird? Wenn ja: relevante Werte (NSC-Status, offene Hinweise, vorbereitete SGs) aus dem Tracker übernehmen, statt neu zu erfinden. Nur wenn nichts vorliegt: aus dem Stegreif beantworten.

### Standardformate mit harten Längengrenzen

| Format | Max. Zeilen | Inhalt |
|---|:---:|---|
| **Regelfrage** | 6 | Probe oder Mechanik / SG oder Wert / Quelle / Effekt bei Erfolg und Fehlschlag / Sonderfall falls relevant |
| **SG-Vorschlag** | 3 | konkreter Wert + Halbsatz-Begründung (Skala PHB/DMG 2024: 5 sehr einfach, 10 einfach, 15 mittel, 20 schwer, 25 sehr schwer, 30 fast unmöglich) |
| **NSC-Improvisation** | 8 | Name, ein Satz Erscheinung, Antrieb, Sprachbild, Statblock-Verweis |
| **Encounter-Schnellskalierung** | 4 | Originalbegegnung / Anpassung / Begründung / Notbremse |
| **„Was passiert, wenn Spieler X tut?"** | 5 | wahrscheinliche Folge, mögliche Probe, was offen bleibt |

Häufige Live-Regelfragen (Heimlichkeit, Überraschung, Deckung, Konzentration, Zustände) mit Standardantworten in `references/live-regelfragen.md`. SG-Anwendungsbeispiele in `references/dc-skala-2024.md`.

## Robustheits-Prinzipien

- **Spielerentscheidungen nie voraussetzen.** Wichtige Informationen über mehrere Pfade erreichbar machen, damit die Handlung trägt, auch wenn die Gruppe anders handelt. *Beispiel:* Wenn die Gruppe wissen muss, dass Karl der Auftraggeber ist, kann sie das aus dem Gespräch mit Claude, aus einem Brief in der Werkstatt oder vom Hofnachbarn erfahren — nicht nur aus einer Quelle.
- **Eskalationen vorzugsweise als Drohkulisse** statt zwingend ausspielen. Wenn doch zwingend, klar im Drehbuch markieren. *Beispiel:* Die Hofwachen sind sichtbar postiert, kommen aber erst, wenn ein Spieler die Waffe zieht — nicht automatisch nach Runde X.
- **Bei sozialen Szenen Eskalation zum Kampf vermeiden**, sofern nicht ausdrücklicher Designzweck der Szene. *Beispiel:* Claude wird kühler und kürzt das Honorar, statt zum Hieb auszuholen.
- **Schlüsselinformationen dürfen nicht an einem D20-Test scheitern.** Mindestens zwei Pfade zu jeder kritischen Information. *Beispiel:* Motiv erkennen SG 15 *oder* Nachforschungen am Schreibtisch SG 15 *oder* Hofnachbar fragen (kein Wurf) — drei Pfade zur gleichen Wahrheit.
- **Begleit-NSC dürfen helfen, aber nicht die Heldengruppe ersetzen.** Wichtige Entscheidungen gehören den Spielern. *Beispiel:* Der NSC schlägt vor, kämpft mit, gibt Hinweise — entscheidet aber nicht, ob die Gruppe verhandelt oder eskaliert.

## Sandbox-Pivot

Wenn die Gruppe sich vom vorbereiteten Plot entfernt, gibt es zwei Reaktionen — die Wahl hängt davon ab, **was die Spieler stattdessen tun**:

- **Folgen, wenn die Abweichung Energie hat.** Die Gruppe ist aktiv, hat eine eigene Idee, verfolgt sie konsequent. Dann den geplanten Plot anhalten, aus `improvisations-notfall.md` schöpfen, später bewerten, ob der ursprüngliche Plot zurückgeholt werden muss oder die neue Richtung übernommen wird.
- **Sanft zurückführen, wenn die Abweichung Vermeidung ist.** Die Gruppe wirkt unentschlossen, weicht der eigentlichen Konfliktsituation aus. Dann einen sichtbaren Hook einbauen (NSC mit konkretem Anliegen, Geräusch in die richtige Richtung, Bote mit Nachricht) — kein Bahnschienen-Druck, sondern eine sichtbare Tür zurück zum Plot.

**Erkennungssignal:** Folgt die Gruppe einem **eigenen Plan** (auch wenn er absurd ist), ist das Energie — folgen. Wandert sie ziellos durch Wirtshäuser ohne Engagement, ist es Vermeidung — Hook anbieten.

Egal welche Reaktion: vorbereitete Szenen sind nicht verloren, sondern Bausteine, die später passend eingesetzt werden können. Wahrheits-Tabellen tragen die Information unabhängig vom Plot-Pfad.

## Safety Tools

Vor einer neuen Kampagne (Session Zero) mit den Spielern klären: gibt es Themen, die am Tisch nicht oder nur als Andeutung vorkommen sollen? Standardwerkzeuge: **Lines & Veils** (harte Tabu / nur Andeutung), **X-Card** (jederzeit auflegbar, beendet die laufende Szene ohne Diskussion), **Open Door** (jeder darf ohne Begründung gehen). Wenn schon abgeklärt: in der Nachbereitungs-Datei kurz notieren, welche Themen gelten. Wenn nicht: vor der ersten Sitzung einer neuen Kampagne ansprechen.

## Self-Check vor Datei-Übergabe

Bevor eine Drehbuch-Datei rausgeht, kurz durchgehen:

- [ ] Quellen-First angewandt (NSCs und Statblöcke referenziert, nicht dupliziert)?
- [ ] Pflichtelemente passend zur Tiefe vorhanden — Fehlendes explizit als „nicht relevant" markiert?
- [ ] Mindestens zwei Pfade zu jeder Schlüsselinformation?
- [ ] Bei Standard/Voll: separate Tracker-Datei und GM-Spickzettel angelegt?
- [ ] Unsichere Charakterwerte als „am Bogen prüfen" markiert?

Wenn ein Punkt offenbleibt: explizit im Chat ansprechen, nicht stillschweigend liefern.

## Autarkie (ohne Handbücher)

Wenn PHB/DMG/MM nicht greifbar sind: SG-Skala, EP-Budget, die 15 Conditions, Tod-Rettungswürfe, Crits, Verstecken, Deckung, Konzentration, die 8 Waffenbeherrschungs-Eigenschaften und sieben Standard-NSC-Statblöcke liegen autark in `references/` (siehe Verweisstruktur). Downtime-**Methodik** (Aktivitäten, Abwicklungsmodi, Anker-Verzahnung, Anti-Patterns) liegt autark in `downtime.md`; konkrete Werte (Lebenshaltung in gm pro Tag, Erschöpfungs-Heilraten, Trainings-Dauern, Crafting-Bedingungen) sind dort als Orientierung formuliert und sollen vor Tisch-Nutzung gegen PHB 2024 / DMG 2024 verifiziert werden. Nicht autark abgedeckt: Klassen-Features, Zauber, Spezies-Eigenheiten, magische Gegenstände, vollständige Monster-Bestiarien jenseits der sieben Statblöcke. Bei Fragen dazu offen ansagen und nachfragen, ob im Buch nachgeschlagen werden kann.

## Verweisstruktur

Referenzen werden bei Bedarf gelesen, nicht alle auf einmal.

| Datei | Inhalt | Wann lesen |
|---|---|---|
| **Drehbuch und Szene** | | |
| `references/pflichtelemente.md` | Die 10 Szenen-Elemente, Wahrheits-Tabelle, Tiefen-Matrix, Anti-Patterns | vor jedem Drehbuch |
| `references/drehbuch-tiefen.md` | Auswahllogik der drei Tiefen, Beispiele | bei Tiefenwahl unklar |
| `references/atmosphaere-pakete.md` | Aufbau und Beispiele | beim Schreiben von Szenen |
| `references/sitzungs-bogen.md` | Sitzung als Ganzes — Recap, Cold Open, Tempo, Spotlight, Schluss | Sitzungs-Vorbereitung |
| `references/charakter-verzahnung.md` | Spieler-Anker (Bindung, Wunde, Ziel) in den Plot weben | Kampagnen- und Quest-Planung |
| `references/improvisations-notfall.md` | Schnellgeneratoren, Yes-and, was tun wenn Vorbereitung nicht greift | am Tisch in Notfällen |
| **Mechanik und Werte** | | |
| `references/dc-skala-2024.md` | SG-Skala mit Anwendungsbeispielen | Live-SG-Fragen, D20-Tabellen |
| `references/encounter-skalierung.md` | EP-Budget-Logik, Skalierung an Gruppe und Stufe | jede Kampfvorbereitung |
| `references/nsc-werkzeugkasten.md` | NSC-Schnellgenerierung, Antriebe, Sprachbilder, 2024er-Statblock-Format | NSC-Erstellung |
| `references/standard-nsc-werte.md` | Statblöcke der 7 häufigsten NSC-Typen | wenn MM 2025 nicht greifbar |
| `references/waffenbeherrschung.md` | Die 8 Mastery-Eigenschaften mit Effekten | Kampfvorbereitung, Live-Klärung |
| `references/live-regelfragen.md` | Häufige Regelfragen inkl. Tod-Rettungswürfe, Crits | Live-Modus, Regelfrage |
| **Nachgang und Hilfsmittel** | | |
| `references/nachbereitung.md` | Nachbereitung und Kampagnenchronik | nach der Sitzung |
| `references/downtime.md` | Aktivitäten, Lebenshaltung, Würfel-Heuristik, Anker-Verzahnung | bei Stadtphasen, Reisen, Zwischen-Quest-Pausen |
| `references/glossar-de-en.md` | Begriffsmapping DE↔EN | bei englischer Quellenrecherche |
| `assets/drehbuch-skelett.md` | Leere Drehbuch-Vorlage | als Startpunkt |
| `assets/tracker-skelett.md` | Tracker-Vorlage | ab Standard-Tiefe |
