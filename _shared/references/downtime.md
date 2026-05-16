# Downtime

Methodik für die Zeit zwischen Sitzungen oder zwischen Quests — Tage, Wochen, Monate, in denen die Gruppe ruht, trainiert, forscht, Beziehungen pflegt, Geld verdient, Gegenstände herstellt oder ihre Bastion verwaltet. PHB 2024 und DMG 2024 haben das frühere „Downtime"-Subsystem aus den 2014er-Regeln **nicht** als geschlossenes Kapitel übernommen — kodifiziert sind nur Lifestyle Expenses, Crafting, Training-als-Belohnung und das Bastion-System ab Stufe 5. Alles andere ist narrativ + Skill Checks nach GM-Ermessen.

Diese Datei beschreibt erstens, was im PHB/DMG 2024 tatsächlich kodifiziert ist (mit Buchverweisen), und zweitens, wie die nicht kodifizierten Aktivitäten am Tisch methodisch behandelt werden können. Spielerseitige Spitze (Aktivitäten planen, mit Ankern verzahnen) in `downtime-spieler.md` im Spieler-Skill.

## Inhaltsverzeichnis

- [Wann Downtime entsteht](#wann-downtime-entsteht)
- [Was im PHB/DMG 2024 kodifiziert ist](#was-im-phbdmg-2024-kodifiziert-ist)
  - [Lebenshaltungskosten / Lifestyle Expenses (PHB 2024, Kapitel 6)](#lebenshaltungskosten--lifestyle-expenses-phb-2024-kapitel-6--srd-521)
  - [Nichtmagische Gegenstände herstellen (PHB 2024, Kapitel 6)](#nichtmagische-gegenstände-herstellen-phb-2024-kapitel-6--srd-521)
  - [Heiltränke brauen und Zauberschriftrollen verfassen (PHB 2024)](#heiltränke-brauen-und-zauberschriftrollen-verfassen-phb-2024-kapitel-6--srd-521)
  - [Training als Mark of Prestige (DMG 2024, Kapitel 3)](#training-als-mark-of-prestige-dmg-2024-kapitel-3)
  - [Magische Gegenstände herstellen (DMG 2024, Kapitel 7)](#magische-gegenstände-herstellen-dmg-2024-kapitel-7--srd-521)
  - [Bastions (DMG 2024, Kapitel 8)](#bastions-dmg-2024-kapitel-8)
  - [Erschöpfungs-Heilung](#erschöpfungs-heilung)
- [Nicht kodifizierte Aktivitäten (Methodik)](#nicht-kodifizierte-aktivitäten-methodik)
- [Würfel-Heuristik am Tisch](#würfel-heuristik-am-tisch)
- [Verzahnung mit Plot und Ankern](#verzahnung-mit-plot-und-ankern)
- [Drei Abwicklungsmodi am Tisch](#drei-abwicklungsmodi-am-tisch)
- [Anti-Patterns](#anti-patterns)

---

## Wann Downtime entsteht

Drei typische Situationen:

| Situation | Typische Dauer | Wer hat die Initiative |
|---|---|---|
| **Zwischen zwei Quests in derselben Region.** Gruppe wartet auf Auftrag, regeneriert, plant. | Tage bis Wochen | meist Spieler — sie sagen, was sie tun wollen |
| **Reise zwischen Regionen.** Tage oder Wochen unterwegs, Reiseproben, Begegnungen, Lager. | Tage bis Wochen | GM rahmt, Spieler füllen mit Reise-Aktivitäten |
| **Erzwungene Pause.** Verletzung, gesellschaftliche Pflichten, Wartezeit auf einen Termin, Quarantäne, Wintermonate. | Wochen bis Monate | GM rahmt eng, Spieler reagieren |

**Faustregel für die Dauer:** Wenn eine kodifizierte Aktivität läuft (Crafting, Training, Bastion-Turn-Frequenz), bestimmt deren Mindestdauer das Tempo. Sonst entscheidet der GM nach Plot-Tempo. Stadtphasen länger als zwei oder drei Wochen sollten am Tisch tatsächlich strukturiert abgewickelt werden, sonst werden Lebenshaltungskosten unübersichtlich und Anker verstauben.

---

## Was im PHB/DMG 2024 kodifiziert ist

### Lebenshaltungskosten / Lifestyle Expenses (PHB 2024, Kapitel 6 — SRD 5.2.1)

Wahl **am Anfang jeder Woche oder jedes Monats** (GM-Entscheidung). Sieben Lebensstile mit den offiziellen deutschen Bezeichnungen aus SRD 5.2.1:

| Lebensstil | Kosten pro Tag | Was es bedeutet |
|---|---:|---|
| **Jämmerlich** (Wretched) | gratis | überleben durch Zufall und Mildtätigkeit, schläft draußen, Naturgefahren ausgesetzt |
| **Ärmlich** (Squalid) | 1 SM | Minimum für grundlegendste Bedürfnisse, ungesunde Bedingungen und Gelegenheitsverbrecher |
| **Schlecht** (Poor) | 2 SM | sparsame Versorgung der Bedürfnisse |
| **Einfach** (Modest) | 1 GM | durchschnittlicher Lebensstil — Default für Abenteurer |
| **Komfortabel** (Comfortable) | 2 GM | etwas Luxus, gute Unterkunft |
| **Wohlhabend** (Wealthy) | 4 GM | feinere Seiten des Lebens, evtl. Bedienstete |
| **Edel** (Aristocratic) | 10 GM | das Beste, sichtbarer Reichtum mit eigenen Risiken |

**Achtung Übersetzungs-Falle:** „Ärmlich" und „Schlecht" sind in der offiziellen WotC-DE-Übersetzung gegenüber der intuitiven Erwartung umgekehrt — Ärmlich (1 SM) entspricht dem englischen Squalid, Schlecht (2 SM) dem englischen Poor. Mapping in `glossar-de-en.md`.

**Wichtig:** SRD 5.2.1 DE sagt ausdrücklich „Ein Lebensstil hat an sich keine Konsequenzen" — wirkt **nicht** mechanisch auf Krankheits-Saves, Heilung oder ähnliches. Der GM kann den Lebensstil bei Risiko-Einschätzung und dem Eindruck auf andere NSCs berücksichtigen.

**Am Tisch:** Pro Stadtaufenthalt einmal pauschal abrechnen („zwei Wochen einfach macht 14 GM, du hast 87"), nicht täglich nachhalten.

### Nichtmagische Gegenstände herstellen (PHB 2024, Kapitel 6 — SRD 5.2.1)

- **Werkzeug:** Charakter braucht passendes Werkzeug und Übung im Umgang damit (Werkzeug-Liste in PHB Kapitel 6). Helfer brauchen ebenfalls Übung.
- **Rohmaterial:** Hälfte des Verkaufspreises in GM, abgerundet. Beispiel: Ritterrüstung (1.500 GM) → 750 GM Rohmaterial.
- **Zeit:** Verkaufspreis ÷ 10 = Tage Arbeit (je 8 Stunden), angebrochene Tage aufgerundet. Beispiel: schwere Armbrust (50 GM) → 5 Tage. Tage müssen nicht zusammenhängend sein.
- **Helfer:** Zeit teilbar durch Anzahl der Mitwirkenden. Standard: ein Helfer zusätzlich, GM kann mehr erlauben.

### Heiltränke brauen und Zauberschriftrollen verfassen (PHB 2024, Kapitel 6 — SRD 5.2.1)

- **Heiltrank brauen:** Übung im Umgang mit Kräuterkundeausrüstung (Herbalism Kit), 25 GM Rohmaterial, 1 Tag (8 Stunden) Arbeit.
- **Zauberschriftrolle verfassen:** Übung in der Fertigkeit Arkane Kunde (Arcana) **oder** im Umgang mit Kalligrafiewerkzeug (Calligrapher's Supplies), Zauber an jedem Tag des Verfassens vorbereitet, Materialkomponenten verfügbar. Verbrauchskomponenten werden erst bei Fertigstellung verbraucht. Zeit und Kosten nach Tabelle „Kosten für Zauberschriftrollen" (Stufe 1: 1 Tag / 25 GM bis Stufe 9: 120 Tage / 50.000 GM).

### Training als Mark of Prestige (DMG 2024, Kapitel 3)

Spezialtraining, das nicht allgemein verfügbar ist. **30 Tage mit Trainer**, gewährt **eine** Belohnung aus:

- Übung in einer Fertigkeit (Skill Proficiency)
- Übung mit einem Werkzeug (Tool Proficiency)
- Eine neue Sprache

**Wichtig:** DMG 2024 nennt **kein** „Talent durch Training". Die Talent-Erwerbung über Downtime aus älteren Editionen ist nicht offiziell übernommen; wenn das am Tisch gewollt ist, **ausdrückliche Hausregel** mit dem GM klären, nicht als selbstverständlich annehmen.

### Magische Gegenstände herstellen (DMG 2024, Kapitel 7 — SRD 5.2.1)

- **Voraussetzung:** Übung in der Fertigkeit Arkane Kunde bei Hersteller und allen Helfern.
- **Werkzeug:** je nach Kategorie (z. B. Ring → Juwelierwerkzeug, Zauberstab → Holzschnitzwerkzeug, Trank → Alchemistenausrüstung oder Kräuterkundeausrüstung) — Tabelle „Werkzeug für magische Gegenstände" im DMG.
- **Material-Verfügbarkeit:** Stadt 75 %, andere Siedlungen 25 %; wenn nicht verfügbar, mindestens 7 Tage warten bis zur nächsten Prüfung.
- **Dauer und Kosten nach Seltenheit** (8 Stunden Arbeit pro Tag, halbiert für Verbrauchsgegenstände außer Zauberschriftrollen):

| Seltenheit | Dauer | Kosten |
|---|---:|---:|
| Gewöhnlich (Common) | 5 Tage | 50 GM |
| Ungewöhnlich (Uncommon) | 10 Tage | 200 GM |
| Selten (Rare) | 50 Tage | 2.000 GM |
| Sehr selten (Very Rare) | 125 Tage | 20.000 GM |
| Legendär (Legendary) | 250 Tage | 100.000 GM |

- **Wenn der magische Gegenstand einen Basisgegenstand mit Kaufpreis enthält** (z. B. Rüstung +1 (Ritterrüstung)), Basiskosten zusätzlich zahlen oder Basisgegenstand selbst herstellen. SRD-Beispiel: Rüstung +1 (Ritterrüstung) — entweder 3.500 GM zahlen (2.000 GM Crafting + 1.500 GM Ritterrüstung) oder 2.000 GM zahlen und die Ritterrüstung selbst herstellen.
- **Wenn der Gegenstand Zauber wirkt:** alle diese Zauber müssen an jedem Herstellungstag vorbereitet sein.

### Bastions (DMG 2024, Kapitel 8)

Optionales System, vom GM zugelassen oder nicht. Charaktere bekommen ab **Stufe 5** eine Bastion — Heimstatt mit Basic Facilities (Bedroom, Kitchen, Storage, ...) und Special Facilities (Workshops, Libraries, Garrison, ...). Spieler-Charaktere geben **Orders** an Facilities, was zu narrativen und mechanischen Outcomes führt (Magic Item Crafting, Forschung, Geld, Verbündete, Defender).

**Bastion Turn:** alle **7 Tage In-Game-Zeit** (vom GM auch monatlich anpassbar). Auch wenn der Charakter abwesend ist, läuft die Bastion weiter — Maintain-Order plus Bastion-Events-Wurf.

**Was das für Downtime bedeutet:** Wenn am Tisch Bastions verwendet werden, sind sie das **primäre** Downtime-System ab Stufe 5. Vieles, was in dieser Datei als „nicht kodifiziert" geführt wird (Forschen, Magic Item Crafting, Beziehung pflegen, Geldverdienen), läuft dann über Bastion-Facilities und ihre Orders. Detail-Mechanik in DMG Kapitel 8 (Facility-Liste, Bastion-Events-Tabelle, Bastion-Tracker).

### Erschöpfungs-Heilung (PHB 2024 / SRD 5.2.1)

Erschöpfung (Exhaustion) heilt mit **einer Erschöpfungsstufe pro lange Rast**. Es gibt keine zusätzliche „pro Tag in zivilisierter Umgebung"-Beschleunigung über die Druckregeln hinaus. Wer mit drei Erschöpfungsstufen in eine Stadtphase geht, braucht mindestens drei lange Rasten zur Genesung.

Effekte pro Stufe nach 2024er-Mechanik (kumulativ, Skala 1–6):

- Beeinträchtigte W20-Prüfungen: −2 pro Erschöpfungsstufe auf alle Proben, Rettungswürfe und Angriffe
- Verringerte Bewegungsrate: −1,5 m pro Erschöpfungsstufe
- Sechs Erschöpfungsstufen = Tod

Achtung: Die ältere 2014er-Mechanik (Stufe 3 halbiert Bewegung, Stufe 5 setzt Geschwindigkeit auf 0) gilt in 2024 **nicht** mehr.

---

## Nicht kodifizierte Aktivitäten (Methodik)

Aktivitäten wie **Beruf ausüben**, **Forschen**, **Beziehungen pflegen**, **Erholen über Long Rest hinaus** sind in PHB/DMG 2024 nicht als geschlossenes Subsystem mit SG-Tabellen ausgearbeitet. Sie laufen narrativ + Skill Checks nach GM-Ermessen. Wenn am Tisch Bastions verwendet werden, übernehmen Bastion-Facilities einen Großteil dieser Funktionen.

Für nicht-Bastion-Tische funktioniert folgende Methodik:

### Beruf ausüben

Charakter geht einer Tätigkeit nach, die Geld bringt oder die Lebenshaltung deckt. Eine Probe auf ein passendes Werkzeug oder eine Fertigkeit. Erfolg deckt die Lebenshaltung eines GM-festgelegten Lebensstils. **SGs:** GM-Ermessen — als Anhalt 10/15/20 für Einfach/Komfortabel/Wohlhabend.

**Beispiele:**
- Schmied in Werkstatt — Werkzeug-Probe (Schmiedewerkzeug).
- Unterhalter in Schenke — CHA-Probe (Auftreten).
- Gelehrter kopiert Manuskripte — INT-Probe (Kalligraphie).

### Forschen

Charakter recherchiert ein konkretes Thema in Bibliothek, Archiv, mit einem NSC. Tage bis Wochen. Probe: INT (Nachforschungen) oder spezielle Wissens-Probe. Ergebnis: Information, oft mit Folgequest-Hook.

**Wichtig für die Verzahnung:** Forschungsziele sollten **konkret** sein — „Was war die *Albatros*?" lässt sich beantworten, „Was weiß man über Magie?" nicht.

### Beziehung pflegen

Zeit mit einer wichtigen Person verbringen — Bindung, Mentor, Verbündeter, Gilde, Adelshof. Keine Probe nötig; Effekt ist narrativ. Stärkt Anker, öffnet Hilfsoptionen, kann Quest-Hooks erzeugen.

**Faustregel:** Eine Bindung, die zwei Sitzungen lang nicht gepflegt wurde, beginnt zu erodieren. Briefe, Geld, Botschaften reichen für die Mindestpflege; persönliche Treffen für echte Vertiefung.

### Frei improvisierte Aktivitäten

Nicht alles muss in eine Kategorie passen. „Ich suche meinen Mentor in der Stadt" ist Forschung + Beziehung + Bewegung; „Ich kümmere mich um die Werkstatt meines verstorbenen Vaters" ist Beruf + Beziehung + Sentiment.

**GM-Logik:** Wenn die Aktivität ein klares Ziel hat, eine Probe (oder mehrere über Zeit) zulassen und Erfolg/Misserfolg/Teil-Erfolg vorbereiten. Wenn das Ziel diffus ist, in eine konkrete Frage übersetzen — „Was willst du in dieser Zeit konkret erreichen?"

---

## Würfel-Heuristik am Tisch

Pro Downtime-Phase **nicht jeden Tag würfeln**, sondern **einen Sammel-Wurf pro Aktivität** (für nicht kodifizierte Aktivitäten — Crafting, Bastion-Turns folgen ihren eigenen Regeln):

| Dauer | Anzahl Würfe |
|---|---:|
| bis 3 Tage | 1 Probe |
| 1 Woche | 1–2 Proben |
| 2–4 Wochen | 2–3 Proben |
| mehrere Monate | 3–4 Proben + ein gerichteter Zwischenfall |

**SGs:** SG 10 für „läuft routiniert", SG 15 für „braucht etwas Können", SG 20 für „echte Herausforderung". Vorteil/Nachteil aus situativen Faktoren (Lehrer, Werkzeug, Ruhe). SG-Anwendungsbeispiele in `dc-skala-2024.md`.

**Erfolgsstufen:** Zwei oder mehr Erfolge → klarer Fortschritt. Gemischt → Teilerfolg mit Komplikation. Zwei oder mehr Fehlschläge → Misserfolg mit Konsequenz.

**Wichtig:** Würfe sollen **nicht** im Vakuum stattfinden. Jeder Würfelvorgang braucht eine narrative Aufhängung (ein Lehrer, ein Auftrag, ein Mentor) — sonst entsteht Buchhaltung ohne Drama.

---

## Verzahnung mit Plot und Ankern

Downtime ist die natürlichste Stelle, um **Anker zu adressieren** (siehe Spieler: `spieler-anker.md`, GM: `charakter-verzahnung.md`).

Drei Verzahnungs-Pattern:

| Pattern | Beispiel |
|---|---|
| **Aktivität trifft Bindung** | Spieler schickt Geld an Mira (Schwester aus dem Spieler-Anker) — was kommt zurück? Ein Brief mit Dank, ein Brief mit Bitte um Hilfe, gar nichts. |
| **Aktivität trifft Wunde** | Spieler forscht nach seinem alten Mentor Karric — die Recherche fördert ein neues Detail zutage, das die Wunde wieder öffnet. |
| **Aktivität trifft Ziel** | Spieler verfolgt die Spur der *Albatros* in Hafenarchiven — bekommt eine Teilantwort, die zur nächsten Quest führt. |

**Faustregel für den GM:** Wer in der Downtime einen Anker adressiert, bekommt **mindestens eine spürbare Reaktion** der Spielwelt zurück — nicht zwingend Auflösung, aber Bewegung. Wenn drei Sitzungen lang ein gepflegter Anker keine Reaktion erzeugt, fühlt sich Pflege wie Verschwendung an.

**Faustregel für den Spieler:** Downtime-Aktivitäten **konkret formulieren** — nicht „ich erhole mich", sondern „ich versuche, Mira einen Brief zu schreiben, ohne dass meine Schuld sichtbar wird". Das gibt dem GM Material zum Reagieren.

---

## Drei Abwicklungsmodi am Tisch

Welcher Modus passt, hängt davon ab, wie viel Tischzeit die Gruppe für Downtime hat:

### Modus 1: Erzählung in fünf Minuten

Jeder Spieler sagt in zwei bis drei Sätzen, was sein Charakter in der Downtime macht. GM hört zu, antwortet mit einem narrativen Echo, würfelt höchstens eine Probe pro Charakter. Geeignet, wenn der Plot weiterdrängt und Downtime nur Atemzug ist.

### Modus 2: Strukturierte Runde

Jeder Spieler bekommt fünf bis zehn Minuten Spotlight für seine Downtime-Aktivität. GM rollt Würfel mit, baut kleine Szenen oder NSC-Begegnungen, kann einen Hook für die nächste Quest einstreuen. Geeignet, wenn zwei bis vier Wochen Spielzeit abzubilden sind und Charakter-Anker gepflegt werden sollen.

### Modus 3: Eigene Downtime-Sitzung

Eine ganze Sitzung wird der Downtime gewidmet — Stadtphase, Training, Recherche, Beziehungen, Bastion-Turns. Geeignet vor Kampagnen-Wendepunkten, nach großen Quests, oder wenn Charaktere mechanisch (Stufenaufstieg, Training-als-Belohnung, Crafting) oder narrativ (Anker zu pflegen, Geheimnisse zu klären) viel offen haben. Bei Bastion-Spielen oft mehrere Bastion-Turns in einer Sitzung.

**Mode-Wahl per Sitzung:** GM entscheidet vorab, welcher Modus passt, und sagt es klar an: „Wir machen heute Downtime in Modus 2 — je fünf Minuten pro Charakter, eine Probe."

---

## Anti-Patterns

- **„Zwei Wochen später."** Pauschale Zeitsprünge ohne Spieler-Beitrag verschenken Material und Anker-Pflege. Mindestens drei Sätze pro Charakter sollten gefallen sein.
- **Buchhaltung über Drama.** Wenn Downtime nur Würfeln von Proben und Lebenshaltungs-Abzügen ist, langweilt sie. Eine kleine Szene pro Aktivität reicht oft.
- **Anker ignorieren.** Drei Wochen Downtime ohne Bindungs-Pflege erodiert die Bindung — und es kommt nichts dafür zurück. Das ist verschenkt.
- **Magische Gegenstände herstellen als Selbstbedienungsladen.** Tabelle aus DMG Kapitel 7 ist verbindlich (Übung in Arkaner Kunde, Werkzeug, Material-Verfügbarkeits-Prüfung, Zauber-Vorbereitung) — Material-Knappheit (75 % Stadt / 25 % andere Siedlung) ist ein wichtiger Bremsfaktor und sollte nicht stillschweigend gestrichen werden.
- **„Talent über Training" als Selbstverständlichkeit.** DMG 2024 nennt es nicht. Nur als ausdrückliche Hausregel.
- **Forschung ohne konkrete Frage.** „Ich forsche in der Bibliothek" ohne Ziel ergibt nichts — der GM braucht eine Frage, um eine Antwort zu generieren.
- **Lebensstil mit erfundenen Konsequenzen.** SRD 5.2.1 DE sagt klar, ein Lebensstil hat an sich keine Konsequenzen. Wer Jämmerlich oder Ärmlich spielt, ist nicht automatisch krank — das ist GM-Ermessen, nicht Regel.
