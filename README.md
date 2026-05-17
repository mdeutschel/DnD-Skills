# D&D Skills

Sammelort für Anthropic-Agent-Skills rund um D&D 5e (2024/2025-Regelwerke).

## Inhalt

- **`dnd-gm-assistenz/`** — Methodik-Skill für Spielleitung. Vorbereitungs-Modus liefert Drehbücher, Tracker, NSC-Steckbriefe, Sitzungspläne; Live-Modus knappe Antworten am Tisch (SGs, Encounter-Skalierung, Regelfragen). Outputs durchgängig auf Deutsch nach den 2024er-Begriffen.
- **`dnd-spieler-assistenz/`** — Methodik-Skill für Spieler:innen. Vorbereitung deckt Charaktererstellung, Stufenaufstieg, Build-Diskussion, Zauberauswahl und Charakterbogen-Pflege ab; Live-Modus knappe Antworten aus Spielersicht („Welche Probe für X?", „Was tut diese Eigenschaft?"). Gleicher Stil und gleiche Quellenlage wie der GM-Skill.
- **`_shared/`** — Rollen-übergreifende References (Glossar, Live-Regelfragen, SG-Skala, Waffenbeherrschung), die per Skill-Manifest beim Build in die jeweiligen Skill-ZIPs gespiegelt werden.
- **`SYSTEM_PROMPT.md`** — generischer System-Prompt zum Einsatz der Skills in anderen Tools (Custom GPTs, Anthropic Console, andere Agenten-Plattformen). Rollenoffen, deckt Rollen-Erkennung, Quellenpriorität, Sprache und Ton ab — projekt-spezifische Annahmen bewusst ausgeklammert.
- **`PROJECT_PROMPT_EXAMPLE.md`** — Beispiel für eine Projekt-Schicht, die über `SYSTEM_PROMPT.md` gelegt wird: Default-Rolle, Erfahrungsstand, laufende Kampagne, Hausregeln, verfügbare Quellen. Pro Tisch anpassen oder kürzen.

## Verwendung

**Als Anthropic-Skill (Claude.ai / Claude Code):** Den jeweiligen Skill-Ordner (`dnd-gm-assistenz/` oder `dnd-spieler-assistenz/`) in eine Skill-fähige Umgebung übernehmen. Wenn der Skill-Ordner direkt (nicht als ZIP) genutzt wird, vorher `scripts/sync-shared.sh <skill>` ausführen, damit die Shared-References lokal verfügbar sind. Der GM-Skill aktiviert bei GM-Anfragen, der Spieler-Skill bei Spieler-Anfragen.

**Als fertiges ZIP:** Jeder Push auf `master` baut über die GitHub-Action `Release Skills` automatisch ein Release. Pro Skill (jedes Top-Level-Verzeichnis mit `SKILL.md`) entsteht ein ZIP nach dem Schema `<skill>-v<N>.zip` (z. B. `dnd-gm-assistenz-v1.zip`). Die Versionsnummer `v<N>` zählt fortlaufend hoch und ist auch der Release-Tag. Aktuelle Releases siehe Reiter [Releases](../../releases).

**Als Projekt-Prompt in anderen Tools:** Den Inhalt von `SYSTEM_PROMPT.md` als generische System-Schicht einsetzen, darüber eine konkrete Projekt-Schicht legen (Vorlage in `PROJECT_PROMPT_EXAMPLE.md` — Default-Rolle, Erfahrungsstand, Kampagne, Hausregeln). Quelldateien des jeweiligen Skills (SKILL.md, alle References und Assets, plus die Shared-References aus `_shared/`) sowie die offiziellen Handbücher (PHB 2024, DMG 2024, MM 2025) als Projekt- oder Wissens-Dateien hinterlegen. Wie die zwei Schichten je nach Tool kombiniert werden (eine konkatenierte System-Nachricht, zwei aufeinanderfolgende System-Messages, etc.), steht im Kopf von `PROJECT_PROMPT_EXAMPLE.md`.

## Architektur: Shared-Inhalte zwischen Skills

Anthropic-Skills sind monolithische Bundles — jedes ZIP muss selbstgenügsam sein. Einige Referenzen (Glossar, Live-Regelfragen, SG-Skala, Waffenbeherrschung) gelten aber rollenübergreifend und sollen nicht parallel in mehreren Skills gepflegt werden. Lösung: Single Source of Truth in `_shared/`, der Build-Schritt kopiert pro Skill genau die im **Skill-Manifest** gelisteten Dateien ins ZIP-Staging.

**Manifest pro Skill** (optional, in `<skill>/skill.manifest.yml`):

```yaml
shared:
  references:
    - glossar-de-en.md
    - live-regelfragen.md
```

Wirkung: jede gelistete Datei wird beim Build von `_shared/references/<name>` nach `<skill>/references/<name>` in die ZIP-Stage kopiert. Skills ohne Manifest verhalten sich wie bisher (keine Shared-Dateien). Kollisionen mit skill-eigenen `references/`-Dateien lassen den Build hart fehlschlagen — Umbenennung in `_shared/` oder im Skill ist erforderlich.

**Lokal arbeiten (ohne ZIP-Build):** `scripts/sync-shared.sh <skill>` kopiert die im Manifest gelisteten Dateien temporär in den Skill-Ordner. Eine pro Skill auto-generierte `<skill>/references/.gitignore` verhindert, dass diese Kopien versehentlich committet werden. Vor dem Push aus dem Skill-Ordner wieder löschen oder einfach ignorieren (das `.gitignore` deckt's ab).

**Build lokal testen:** `scripts/build-zips.sh` macht den Action-Build 1:1 lokal nach (Output in `dist/`), inklusive Manifest-Verarbeitung und Kollisionserkennung.

## Quellen

Skill nutzt die D&D-2024/2025-Regelwerke als primäre Quelle:

- Player's Handbook 2024 (PHB)
- Dungeon Master's Guide 2024 (DMG)
- Monster Manual 2025 (MM)

Bei Diskrepanz zwischen Skill-Inhalt und Druckausgabe gilt das Druckwerk. Errata werden nicht automatisch nachgeführt — bei Regelfragen den aktuellen Stand prüfen.

## Lizenz und Attribution

Dieses Repository steht unter der **Creative Commons Attribution 4.0 International License (CC BY 4.0)**. Volltext in [`LICENSE`](LICENSE).

Teile der Skills enthalten Material aus dem **System Reference Document 5.2.1** (Wizards of the Coast LLC, ebenfalls CC BY 4.0) — betroffen sind unter anderem die Statblöcke in `dnd-gm-assistenz/references/standard-nsc-werte.md`, die Zustände und Regelaussagen in `_shared/references/live-regelfragen.md`, die acht Eigenschaften in `_shared/references/waffenbeherrschung.md`, die SG- und EP-Tabellen sowie das deutsche Begriffsmapping. Vollständige Attribution und Datei-Liste in [`NOTICE.md`](NOTICE.md).

"Dungeons & Dragons", "D&D" und "Wizards of the Coast" sind Marken von Wizards of the Coast LLC. Dieses Projekt ist inoffizieller Fan-Content und steht in keinerlei Verbindung zu Wizards of the Coast.
