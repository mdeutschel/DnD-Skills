# Encounter-Skalierung

Skalierung von Kampfbegegnungen an Gruppengröße und Stufe nach den 2024er-Regeln. Quelle: DMG 2024 („Plan Encounters", Kapitel Creating Adventures), MM 2025 (Stat Blocks und HG-zu-EP-Werte).

## Grundprinzip 2024

Das DMG 2024 nutzt **EP-Budgets pro Charakter und Stufe** für drei Schwierigkeitsgrade: **Niedrig (Low) / Mittel (Moderate) / Hoch (High)**.

**Die Formel:**

```
Gruppen-Budget = (EP-Budget pro Char auf Stufe X für Schwierigkeit Y) × Anzahl Charaktere
Encounter-Soll = Summe der EP-Werte aller Gegner nach HG
Encounter-Soll ≤ Gruppen-Budget
```

**Vergleich zu 5e-2014:** Die 2014er-Encounter-Multiplikatoren (×1,5 für 3 Gegner, ×2 für 4–6 etc.) tauchen im DMG 2024 nicht mehr auf. Stattdessen wird einfach die EP-Summe direkt mit dem Gruppen-Budget verglichen. Das DMG sagt das nicht explizit als „abgeschafft", die alte Mechanik fehlt aber im neuen Encounter-Building-Kapitel.

## EP-Budget pro Charakter (DMG 2024, Auszug)

| Stufe | Niedrig | Mittel | Hoch |
|---:|---:|---:|---:|
| 1 | 50 | 75 | 100 |
| 2 | 100 | 150 | 200 |
| 3 | 150 | 225 | 400 |
| 4 | 250 | 375 | 500 |
| 5 | 500 | 750 | 1.100 |
| 6 | 600 | 1.000 | 1.400 |
| 7 | 750 | 1.300 | 1.700 |
| 8 | 1.000 | 1.700 | 2.100 |
| 9 | 1.300 | 2.000 | 2.600 |
| 10 | 1.600 | 2.300 | 3.100 |
| 15 | 3.300 | 5.400 | 7.800 |
| 20 | 6.400 | 13.200 | 22.000 |

Volle Tabelle (Stufen 1–20) im DMG 2024, Kapitel „Plan Encounters".

## HG-zu-EP-Konvertierung (MM 2025)

Identisch mit 5e-2014:

| HG | EP | HG | EP | HG | EP |
|---:|---:|---:|---:|---:|---:|
| 0 | 0 oder 10 | 5 | 1.800 | 14 | 11.500 |
| 1/8 | 25 | 6 | 2.300 | 15 | 13.000 |
| 1/4 | 50 | 7 | 2.900 | 16 | 15.000 |
| 1/2 | 100 | 8 | 3.900 | 17 | 18.000 |
| 1 | 200 | 9 | 5.000 | 20 | 25.000 |
| 2 | 450 | 10 | 5.900 | 25 | 75.000 |
| 3 | 700 | 11 | 7.200 | 30 | 155.000 |
| 4 | 1.100 | 13 | 10.000 | | |

## Rechenbeispiel

> Gruppe: 3 Charaktere Stufe 4, gewünschte Schwierigkeit Mittel.
> Gruppen-Budget = 375 × 3 = **1.125 EP**.
> Encounter-Variante A: 1× Räuberhauptmann (HG 2, 450 EP) + 3× Räuber (HG 1/8, 25 EP) = 525 EP → unter Niedrig (Niedrig wäre 250 × 3 = 750), eher leichter Filler.
> Encounter-Variante B: 1× Räuberhauptmann (450) + 1× Schläger (HG 1/2, 100) + 4× Räuber (4×25) = 650 EP → noch unter Mittel, leicht-bis-mittel.
> Encounter-Variante C: 2× Räuberhauptmann (900) + 2× Räuber (50) = 950 EP → solide Mittel.

## Anpassung an Gruppengröße

Die Budget-Formel skaliert linear mit der Charakterzahl, das ist die Hauptanpassung. Darüber hinaus pragmatisch (nicht aus dem DMG, sondern als Tisch-Erfahrung):

Bei drei Charakteren statt vier:

- **Gegnerzahl reduzieren**, nicht HG senken. Drei statt vier Räuber, zwei statt drei Goblins. Senkt das gesamte Encounter-EP, ohne den Boss seines Gewichts zu berauben.
- **Bei Bosskämpfen**: Boss bleibt, Begleitung wird halbiert. Der Boss soll erkennbar Boss bleiben.
- **Eine Reaktion pro Runde des Bosses streichen**, falls der Kampf zu drückend wird.

Bei fünf Charakteren:

- **Gegnerzahl erhöhen**, eine Mook-Gruppe oder einen Lieutenant ergänzen.
- **Bei Bosskämpfen**: Boss bekommt Begleitung dazu, oder die HP werden um 25–50 % erhöht.

## Anpassung an Stufen-Lücken innerhalb der Gruppe

Wenn ein Charakter eine Stufe niedriger ist als der Rest, am Encounter selbst nichts ändern, aber:

- Heilungsquellen näher an den unteren Charakter rücken
- nicht alle Gegner auf den schwächsten Charakter fokussieren
- bei Boss-Sondereffekten dem unteren Charakter eher Vorteilssituationen anbieten

## Faktoren, die einen Encounter härter machen, als die EP-Summe vermuten lässt

- **Begrenzter Raum** ohne Bewegungsoptionen — keine Deckung, kein Abstand möglich
- **Mehrere gleichzeitige Bedrohungen** (Gegner plus Falle plus Umweltgefahr)
- **Initiativenachteil** der Gruppe (Überraschung, Schwierigkeiten beim Initiativewurf)
- **Erschöpfte Ressourcen** der Gruppe (kurz vor langer Rast, leere Zauberplätze)
- **Massive Effekt-Synergien** der Gegner (Boss buffed Mooks, Mooks setzen Boss frei)
- **Spezielle Verwundbarkeiten** der Gruppe (kein Heiler, kein Fernkampf, keine Flächenmagie)

Wenn zwei oder mehr dieser Faktoren zusammenkommen, eine Stufe herunterstufen (Hoch → Mittel).

## Faktoren, die einen Encounter weicher machen

- **Offenes Gelände** mit guter Bewegungsfreiheit und Deckung
- **Gegner mit klaren Schwächen** (anfällig für Strahlungs- oder Feuerschaden, niedrige Konstitution)
- **Volle Ressourcen** der Gruppe (frische lange Rast)
- **Vorbereitete Gruppe** (Hinterhalt, Buffs vorab gewirkt)
- **Begleit-NSC**, der aktiv mitkämpft

## Boss-Encounter-Design

Best-Practice am Tisch (das DMG 2024 hat dazu kein eigenes Designkapitel — diese Tipps sind erprobte GM-Praxis, nicht Regelwerk):

Ein einzelner Boss gegen die ganze Gruppe ist taktisch schwierig — die Aktion-Ökonomie ist gegen ihn. Drei Lösungsansätze:

1. **Begleitung dazugeben**: zwei bis vier Mooks als Schadenspuffer und Aktion-Ökonomie-Ausgleich. Einfachste Lösung, immer geeignet.
2. **Lair-Aktionen** (wenn der Boss als Stat Block solche hat — viele MM-2025-Bosse haben sie) und Initiativen-zwischen-Spielern, sodass der Boss zwei bis drei Mal pro Runde handelt.
3. **Phasen-Boss** (Hausregel): Phase 1 mit normalen HP, dann Wechsel zu Phase 2 mit neuen Fähigkeiten und teilweise zurückgesetzten HP. Nicht im DMG kodifiziert — als optionale Variante markieren, wenn es im Drehbuch genutzt wird.

Für die Gruppe gefährlich, aber fair: Ansatz 1 ist am einfachsten umzusetzen.

## Beispielgruppe 3 Charaktere Stufe 4

Budget pro Schwierigkeit (3 × EP/Char):

| Schwierigkeit | EP-Budget | Anhaltspunkt |
|---|---:|---|
| Niedrig | 750 | drei Räuber (75) plus ein Schläger (100) = 175 → noch deutlich darunter; eher 1× Räuberhauptmann (450) + 4× Räuber (100) = 550 |
| Mittel | 1.125 | 2× Räuberhauptmann (900) + 2× Räuber (50) = 950, knapp unter Mittel |
| Hoch | 1.500 | 1× Räuberhauptmann (450) + 1× Schläger (100) + 1× Gegner HG 4 (1.100) = 1.650 → leicht über Hoch |

Werte im konkreten Encounter immer gegen die offizielle DMG-Tabelle und die Stat-Block-EP im MM 2025 prüfen.

## Live-Modus: Standardform für Skalierungsanfragen

> Originalbegegnung: [Gegnerliste]
> Empfohlene Anpassung für [Gruppengröße/Stufe]: [konkret]
> Begründung: [ein Halbsatz zu Aktion-Ökonomie oder EP-Summe]
> Wenn die Gruppe Probleme bekommt: [Notbremse]

**Beispiel:**
> Originalbegegnung: 4 Räuber + 2 Schläger
> Empfohlene Anpassung für 3 Charaktere Stufe 4: 3 Räuber + 1 Schläger
> Begründung: ein Schläger als Druck-Element reicht; Räuberzahl reduziert, weil ohne vierten Charakter weniger Aktion-Ökonomie auf Spielerseite
> Wenn die Gruppe Probleme bekommt: ein Räuber flieht in Runde 3, Schläger ergibt sich bei unter 10 HP
