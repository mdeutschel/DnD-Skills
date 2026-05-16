#!/usr/bin/env bash
# Kopiert die im Skill-Manifest gelisteten Shared-References in den
# Skill-Ordner zum lokalen Testen (wenn der Skill direkt als Quelle genutzt
# wird, ohne den ZIP-Build).
#
# Auch generiert/aktualisiert <skill>/references/.gitignore, damit die
# Kopien nicht versehentlich committet werden.
#
# Aufruf:
#   scripts/sync-shared.sh <skill>      # einzelner Skill
#   scripts/sync-shared.sh --all        # alle Skills mit Manifest

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
# shellcheck source=lib-shared.sh
source "$SCRIPT_DIR/lib-shared.sh"

SHARED_ROOT="$REPO_ROOT/_shared"

sync_one() {
  local skill="$1"
  local skill_dir="$REPO_ROOT/$skill"
  local manifest="$skill_dir/skill.manifest.yml"

  if [ ! -f "$skill_dir/SKILL.md" ]; then
    echo "FEHLER: '$skill' ist kein Skill-Verzeichnis (kein SKILL.md)." >&2
    return 1
  fi

  if [ ! -f "$manifest" ]; then
    echo "$skill: kein Manifest, nichts zu synchronisieren."
    return 0
  fi

  mapfile -t shared_refs < <(manifest_shared_references "$manifest")
  if [ "${#shared_refs[@]}" -eq 0 ]; then
    echo "$skill: Manifest leer, nichts zu synchronisieren."
    return 0
  fi

  mkdir -p "$skill_dir/references"
  # Vor dem Kopieren prüfen: bestehende Kollisionen mit echten Skill-Dateien
  # melden (wir vergleichen gegen den committed Stand, der unterscheidet sich
  # nicht von dem im Verzeichnis, solange nichts manuell hier liegt).
  local existing=()
  for name in "${shared_refs[@]}"; do
    if [ -e "$skill_dir/references/$name" ] && ! grep -Fxq "$name" "$skill_dir/references/.gitignore" 2>/dev/null; then
      existing+=("$name")
    fi
  done
  if [ "${#existing[@]}" -gt 0 ]; then
    echo "FEHLER: $skill — die folgenden Shared-Dateien kollidieren mit committed Skill-Dateien:" >&2
    printf '  - %s\n' "${existing[@]}" >&2
    return 1
  fi

  for name in "${shared_refs[@]}"; do
    local src="$SHARED_ROOT/references/$name"
    if [ ! -f "$src" ]; then
      echo "FEHLER: '$src' fehlt." >&2
      return 1
    fi
    cp "$src" "$skill_dir/references/$name"
    echo "  + $skill/references/$name"
  done

  # .gitignore neu schreiben — managed file, lieber idempotent als appendend.
  {
    echo "# Auto-managed by scripts/sync-shared.sh — nicht editieren."
    echo "# Diese Dateien werden vom Build aus _shared/ injiziert."
    for name in "${shared_refs[@]}"; do
      echo "$name"
    done
  } > "$skill_dir/references/.gitignore"

  echo "$skill: ${#shared_refs[@]} Shared-Datei(en) synchronisiert."
}

if [ "$#" -lt 1 ]; then
  echo "Aufruf: $0 <skill> | --all" >&2
  exit 1
fi

if [ "$1" = "--all" ]; then
  for dir in "$REPO_ROOT"/*/; do
    skill="$(basename "$dir")"
    [ -f "$dir/SKILL.md" ] || continue
    sync_one "$skill"
  done
else
  sync_one "$1"
fi
