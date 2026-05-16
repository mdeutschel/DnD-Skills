# Nachbereitung und Kampagnenchronik

Was direkt nach einer Sitzung notiert werden soll und wie eine Kampagnenchronik gepflegt wird. Beides dient dazu, **Kontinuität über Sitzungen hinweg** zu sichern und der nächsten Vorbereitung Material zu geben.

## Inhaltsverzeichnis

- [Nachbereitung pro Sitzung](#nachbereitung-pro-sitzung)
- [Kampagnenchronik](#kampagnenchronik)
- [Übergang zur nächsten Vorbereitung](#übergang-zur-nächsten-vorbereitung)

---

## Nachbereitung pro Sitzung

**Direkt nach der Sitzung** ausfüllen, nicht später. Spätestens am Folgetag — sonst gehen Details verloren.

### Standardform

```md
# Nachbereitung Sitzung X — [Titel]

**Datum:** [Datum]
**Spielzeit:** [Stunden]
**Anwesend:** [Charaktere; Spielernamen optional weglassen]

## Was ist passiert?

- chronologisch, knapp
- pro Szene zwei bis fünf Stichworte
- wichtige Würfelergebnisse oder Entscheidungen markieren

## Entscheidungen der Gruppe

- konkrete Entscheidungen, die Konsequenzen haben werden
- ablehnte Optionen, falls relevant für später

## Bekannte Informationen

- was die Gruppe jetzt sicher weiß
- wovon sie Hinweise hat, ohne sie ganz zu verstehen

## Falsche Annahmen der Gruppe

- was die Gruppe glaubt, das nicht stimmt — wichtig für Plot-Spannung

## NSC-Status

| NSC | Status | Disposition zur Gruppe | Nächster Schritt |
|---|---|---|---|
| Name | lebt / verletzt / verschwunden / tot | freundlich / neutral / misstrauisch / feindselig | tut X, taucht bei Y wieder auf |

## Offene Fäden

- was ist noch nicht abgeschlossen
- was wurde angekündigt, aber nicht eingelöst

## Folgen für die Welt

- was reagiert in der Spielwelt auf die Aktionen der Gruppe
- wer hat von den Geschehnissen erfahren

## Vorbereitung für nächste Sitzung

- Karte: [welche, falls neu]
- Gegner: [welche müssen vorbereitet werden]
- NSC: [welche werden auftreten oder neu vorgestellt]
- Hinweise: [was muss platziert werden]
- Schätze: [welche Belohnungen stehen aus]
- Regelthemen: [Regeln, die nächste Sitzung wahrscheinlich auftauchen]
- Stufenaufstieg: [ja/nein, an welcher Stelle]

## Was diese Sitzung gut funktioniert hat

- ein bis drei Stichworte — was lief am Tisch besonders rund

## Was diese Sitzung schwierig war

- ein bis drei Stichworte — wo gab es Hänger, Regelunklarheiten, Stimmungsbrüche
- Lehre für nächste Sitzung
```

### Wann was rauslassen

Bei sehr kurzen Sitzungen oder Mini-Übergangs-Sitzungen reichen die Abschnitte „Was ist passiert", „Entscheidungen", „NSC-Status" und „Vorbereitung für nächste Sitzung". Die anderen entfallen oder werden in einem Satz abgehandelt.

## Kampagnenchronik

Die **Kampagnenchronik** ist die Langzeit-Erinnerung der Kampagne. Sie wird **nicht** nach jeder Sitzung neu geschrieben, sondern in zwei Modi gepflegt:

1. **Lesefassung pro Quest** — eine erzählende Zusammenfassung dessen, was in einer abgeschlossenen Quest passiert ist. Wird einmal nach Abschluss der Quest geschrieben, in lesbarer Prosa.
2. **NSC- und Welt-Status laufend** — eine Liste aller wiederkehrenden NSCs und ihrer aktuellen Disposition, plus offener Fäden, die sich über mehrere Quests ziehen.

### Lesefassung pro Quest

Format:

```md
# Quest X: [Titel]

**Spieldauer:** [Anzahl Sitzungen, Spielzeit]
**Stand bei Quest-Beginn:** [Stufe der Charaktere, wichtige Beziehungen]
**Stand bei Quest-Ende:** [Stufe, neue Beziehungen, neue Ressourcen]

## Erzählung

[Drei bis sechs Absätze in Prosa, wie eine Geschichte. Keine Stichpunkte.
Hauptkonflikt, wichtige Entscheidungen, dramatische Wendungen, Auflösung.
Lesbar für die Gruppe, falls jemand zwischen Sitzungen nachlesen will.]

## Was die Gruppe erreicht hat

- konkrete Erfolge
- gewonnene Verbündete
- gewonnene Ressourcen oder Gegenstände

## Was offen bleibt

- ungeklärte Fragen
- entschuldete oder offene Versprechen
- bekannte Bedrohungen, die noch nicht abgewehrt sind

## Folgen für die Welt

- wer hat erfahren, was die Gruppe getan hat
- was hat sich in der Spielwelt verändert
```

Die Lesefassung ist absichtlich erzählend, nicht stichwortartig — sie soll am Anfang einer langen Spielpause oder beim Wiedereinstieg neuer Spieler funktionieren.

### NSC- und Welt-Status laufend

Eine **eigene Datei**, die kontinuierlich gepflegt wird:

```md
# Kampagnen-Status

## Wiederkehrende NSC

| Name | Beziehung | Letzter Stand | Letzte Sitzung | Offene Fragen |
|---|---|---|---|---|
| Claude Lieberfeld | Auftraggeber, neutral | NDA gewahrt, möglicher Folgeauftrag | Sitzung 5 | weiß nicht von Karls Tod |

## Offene Fäden

| Faden | Was bekannt ist | Nächste mögliche Auflösung |
|---|---|---|
| Speioger zweite Funktion | Gruppe weiß, dass es eine gibt — nicht welche | Forschung in Süderdock |

## Welt-Ereignisse

| Ereignis | Wann | Wer weiß davon | Konsequenz |
|---|---|---|---|
| Brand auf Hof Hofer | vor Quest 1 | Greta, Gruppe | offene Schuld |

## Downtime-Phasen

| Phase | Dauer | Charakter | Aktivität | Stand |
|---|---|---|---|---|
| nach Quest 2 | 3 Wochen Sturmkrone | Naeris | Archivsuche Albatros | Teilantwort, Folgehinweis offen |
| nach Quest 2 | 3 Wochen Sturmkrone | Raiku | Fechtunterricht Bertram | abgeschlossen, Polearm Master verfügbar |
```

Diese Datei wird **bei jeder Sitzung aktualisiert**, nicht nur bei Quest-Abschluss. Downtime-Phasen pro Charakter laufend mitführen — sonst gehen Anker-Pflege-Schritte, offene Trainings und Lebenshaltungs-Stand zwischen Sitzungen verloren. Methodik in `downtime.md`.

## Übergang zur nächsten Vorbereitung

Vor der nächsten Sitzungs-Vorbereitung **drei Dinge** durchgehen:

1. **Letzte Nachbereitung lesen** — was muss aufgegriffen werden? Was hat die Gruppe nicht abgeschlossen, was sollte zurückkommen?
2. **NSC- und Welt-Status prüfen** — welche NSCs könnten in der nächsten Sitzung auftauchen? Welche Welt-Ereignisse könnten reagieren?
3. **Charaktersheets prüfen** — Stufenaufstieg passiert? Ressourcen nach langer Rast zurück? Verletzungen oder Zustände, die noch wirken?

Erst danach den eigentlichen Drehbuch-Entwurf angehen.

## Tipp: Live-Notizen während der Sitzung

Wenn am Tisch Zeit ist, einen sehr knappen **Live-Mitschrieb** führen — drei bis fünf Stichworte pro Szene, Würfelergebnisse, Entscheidungen, neue NSC-Namen. Der Mitschrieb dient nur als Gedächtnisstütze für die Nachbereitung am gleichen Tag, nicht als finale Dokumentation.
