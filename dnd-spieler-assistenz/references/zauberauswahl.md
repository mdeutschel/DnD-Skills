# Zauberauswahl

Methodik für die Zauberauswahl nach 2024er-Regeln. Die Klassen unterscheiden sich darin, wie sie Zauber lernen, vorbereiten und wirken — die Mechaniken werden im Live-Spiel ständig verwechselt.

## Grundbegriffe

| Begriff | Bedeutung |
|---|---|
| **Cantrip** | Zauber Stufe 0. Unbegrenzt wirkbar, kein Slot. Skaliert mit Charakterstufe (5, 11, 17). |
| **Zauberslot** | Ressource pro Slot-Stufe. Wird durch Wirken eines Zaubers verbraucht, kommt auf langer Rast zurück (Ausnahme: Hexenmeister auf kurzer Rast). |
| **Bekannter Zauber** | Steht im Charakter-Repertoire, kann jederzeit gewirkt werden, solange ein passender Slot da ist. |
| **Vorbereiteter Zauber** | Aus der Klassen-Liste pro Tag (lange Rast) ausgewählt. Was nicht vorbereitet ist, kann nicht gewirkt werden. |
| **Zauber-Attribut** | Klassen-spezifisch: INT (Magier), WEI (Kleriker, Druide, Waldläufer), CHA (Barde, Hexenmeister, Paladin, Zauberer). |
| **Zauber-SG** | `8 + Übungsbonus + Zauber-Attribut-Mod`. Der Wert, gegen den Gegner Rettungswürfe machen. |
| **Zauber-Angriffsbonus** | `Übungsbonus + Zauber-Attribut-Mod`. Bei Zauber-Angriffswurf. |
| **Konzentration** | Manche Zauber bleiben nur aktiv, solange der Caster konzentriert. Max. **ein** Konzentrationszauber gleichzeitig. Schaden → KON-Rettung SG max(10, halber Schaden). |
| **Ritual** | Zauber mit Ritual-Tag, gegen 10 zusätzliche Minuten Wirkzeit ohne Slot wirkbar (klassenabhängig). |
| **Komponenten** | V (verbal), G (gestisch), M (materiell). M-Komponenten mit Goldwert müssen vorhanden sein und werden teils verbraucht. |
| **Up-Casting** | Niedrigstufigen Zauber mit höherem Slot wirken — manche Zauber bekommen dadurch stärkere Wirkung. |

## Klassen-Logik (vereinfacht)

### Caster nach Slot-Progression

- **Voll-Caster (Slots bis Stufe 9 auf Charakterstufe 17+):** Magier, Kleriker, Druide, Barde, Zauberer.
- **Halb-Caster (Slots bis Stufe 5 auf Charakterstufe 17+):** Paladin, Waldläufer. Beginnen Zauberwirken auf Stufe 2.
- **Drittel-Caster (Slots bis Stufe 4 auf Charakterstufe 19+):** Eldritch Knight (Kämpfer), Arcane Trickster (Schurke). Subklassen-Sache.
- **Pact Caster:** Hexenmeister hat eigene Pact-Magic-Progression — wenig Slots, immer auf höchster verfügbarer Stufe, kommen auf **kurzer** Rast zurück. Plus Mystic Arcanum ab Stufe 11.

### Vorbereitete vs. bekannte Zauber

**Magier** lernt Zauber ins Zauberbuch (2 pro Stufe gratis, weitere käuflich), bereitet daraus pro Tag vor. Buch kann theoretisch unbegrenzt wachsen.

**Kleriker, Druide, Paladin** bereitet aus der **gesamten Klassen-Zauberliste** pro Tag vor. Anzahl = Klassenstufe + Zauber-Attribut-Mod (Min. 1 Zauber).

**Hexenmeister, Zauberer, Waldläufer, Barde** lernt eine **feste Liste** bekannter Zauber, die nur beim Stufenaufstieg austauschbar ist (2024er-Regel: ein gelernter Zauber pro Stufe austauschbar). Wirkt direkt aus dieser Liste, keine tägliche Vorbereitung.

## Cantrips wählen

Cantrips sind die Default-Aktion zwischen Slot-Verbrauch. Auf Stufe 5, 11, 17 verdoppelt/verdreifacht sich der Schaden. Drei Kriterien für die Wahl:

1. **Mindestens ein Schaden-Cantrip** (Feuerstrahl, Eldritch Blast, Heiliges Feuer, Mageklinge), damit kein Slot für Standard-Schaden verbraucht werden muss.
2. **Mindestens ein Utility-Cantrip** (Licht, Hinweis, Magierhand, Heilende Wort kein Cantrip — sondern Stufe 1; aber Druiden-Cantrip Stab oder Magier-Cantrip Säuregabel etc.).
3. **Ein Konzept-Cantrip**, der zur Figur passt — auch wenn nicht optimal, hält den Charakter lebendig (Kleines Wunder, Gaukelei, Niedrige Sprache).

## Konzentration als knappes Gut

Nur **ein** Konzentrationszauber gleichzeitig. Bei Schaden: KON-Rettung mit SG max(10, halber erlittener Schaden).

**Verbessern:**

- KON nicht unter 14, idealerweise 16+.
- Übung in KON-Rettung (Klassen: Barbar, Kämpfer, Paladin, Druide, Zauberer; per Talent „Resilient KON" oder „War Caster" auch andere).
- War-Caster-Talent: Vorteil auf Konzentrations-Rettungen (plus Reaktionszauber).

**In der Auswahl bedenken:** wenn die Klasse stark auf Konzentrationszauber baut (Druide, Zauberer, Magier), sehr selektiv sein — drei Konzentrationszauber dabei zu haben, aber nur einen wirken zu können, frustriert.

## Slot-Ökonomie

**Pro Spieltag rechnen, nicht pro Kampf.** Eine Tagesplanung mit 3–4 Begegnungen bedeutet:

- Niedrigstufige Slots (1–2) für Utility, Heilen, Buffs.
- Mittlere Slots (3–5) für signature Spells in wichtigen Kämpfen.
- Höchste Slots (6+) selten, oft 1× pro Tag, für Bossfights.

**Up-Casting prüfen.** Manche niedrigstufigen Zauber skalieren stark (Heilen Wort, Magisches Geschoss, Brennende Hände); andere kaum. Bei letzteren lieber den Slot für einen Zauber dieser Slot-Stufe sparen.

**Pact-Magic-Sonderfall (Hexenmeister).** Wenige Slots (z. B. nur 2 auf Stufe 5), aber immer auf höchster verfügbarer Stufe. Auf kurzer Rast zurück — dadurch verlockend, Slots aggressiver auszugeben. Eldritch Invocations sind die unbegrenzten Werkzeuge dazwischen.

## Ritual-Zauber

Mit Ritual-Tag wirkbar: 10 Min. zusätzlich, kein Slot. Klassenabhängig, wer das überhaupt kann:

- **Bardisches Ritual-Wirken**, **Druidisches**, **Magisches** (Magier), **Klerikales** — Voll-Caster lernen Rituale aus der Klassen-Liste.
- **Hexenmeister:** Pact-of-Tome-Boon plus Book of Ancient Secrets-Invocation gibt zugang.
- **Waldläufer, Paladin, Sorcerer:** kein Standard-Ritualzauberer.

Außerhalb des Kampfes immer prüfen, ob ein Slot-freier Ritual-Zug reicht statt einen Slot zu verbrennen (Erkennen von Magie, Identifizieren, Hilfsbereiter Vertrauter, Sprich mit Tieren).

## Klassenspezifische Eigenheiten

- **Magier:** beim Stufenaufstieg 2 Zauber gratis ins Buch. Weitere Zauber aus Schriftrollen oder gekauft (50 GM × Slot-Stufe). Vorbereitete Anzahl: Stufe + INT-Mod.
- **Kleriker:** zauberlist umfasst nur Kleriker-Zauber, plus Domänen-spezifische (vom Subklass-Gelübde gegeben). Domain-Zauber sind immer vorbereitet (Bonus).
- **Druide:** ähnlich Kleriker — Klassen-Liste plus Zirkel-spezifische Bonuszauber.
- **Paladin:** Halb-Caster, Smite-Slots-Ökonomie (Slots wahlweise für Zauber oder für Bonusschaden auf Crit/Hit). Aufpassen, dass Smite nicht alle Slots auffrisst — Bless-Konzentration ist oft wertvoller.
- **Waldläufer:** Hunter's Mark als Konzentration ist auf Stufe 1 frei (klassenmerkmal), aber andere Konzentrationen kollidieren.
- **Zauberer:** Metamagie + Sorcery Points sind das Hauptwerkzeug. Slots in Sorcery Points umwandeln (und umgekehrt) erlaubt — Flexibilität, aber auch Ressourcen-Drift.
- **Hexenmeister:** Eldritch Blast + Agonizing Blast ist Default-Schaden; Slots für die signature Spells (Hex, Verwandlung-ähnliche, Hold Person). Mystic Arcanum auf 11+ für die wirklich starken Stufe-6-bis-9-Zauber.
- **Barde:** Bardische Inspiration ist die Hauptressource; Zauber-Liste ist breit, kann auch andere Klassen-Zauber lernen (Magische Geheimnisse ab Stufe 10).

## Häufige Fehler

- **Zwei Konzentrationszauber gleichzeitig anwirken** — der zweite überschreibt den ersten, keine Slot-Erstattung.
- **Ritual nicht erkannt** und unnötig einen Slot verbrannt.
- **Up-Casting vergessen** — Heilen Wort Stufe 1 auf Stufe 5 wirken bringt deutlich mehr.
- **Vorbereitungs-Liste nicht aktualisiert** nach langer Rast — die meisten Caster dürfen sie auf jeder langen Rast umstellen.
- **Komponenten fehlen.** Bei materiellen Komponenten mit Goldwert (z. B. 300 GM Diamant für Wiederbelebung) gilt: kein Material → kein Zauber.
- **Konzentration übersehen** — wenn ein neuer Konzentrationszauber gewirkt wird, fällt der alte sofort weg.
