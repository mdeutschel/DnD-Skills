#!/usr/bin/env bash
# Gemeinsame Helfer für sync-shared.sh und build-zips.sh.
#
# Manifest-Format (YAML), pro Skill optional unter <skill>/skill.manifest.yml:
#
#   shared:
#     references:
#       - glossar-de-en.md
#       - live-regelfragen.md
#
# Liest ausschliesslich shared.references als Liste von Dateinamen
# (Basename, ohne Pfad). Quelle ist immer _shared/references/<name>.

set -euo pipefail

# Gibt die im Manifest gelisteten Shared-References auf STDOUT aus,
# je Eintrag eine Zeile. Kein Manifest oder leere Liste -> kein Output.
#
# Argumente:
#   $1 manifest_path
manifest_shared_references() {
  local manifest="$1"
  [ -f "$manifest" ] || return 0
  # Minimal-YAML-Parser für genau diese Struktur:
  #   shared:
  #     references:
  #       - name.md
  awk '
    BEGIN { in_shared = 0; in_refs = 0 }
    /^[[:space:]]*#/ { next }
    /^shared:[[:space:]]*$/        { in_shared = 1; in_refs = 0; next }
    /^[^[:space:]]/                { in_shared = 0; in_refs = 0 }
    in_shared && /^[[:space:]]+references:[[:space:]]*$/ { in_refs = 1; next }
    in_shared && /^[[:space:]]+[a-zA-Z_]+:[[:space:]]*$/ { in_refs = 0 }
    in_refs && /^[[:space:]]+-[[:space:]]+/ {
      sub(/^[[:space:]]+-[[:space:]]+/, "", $0)
      sub(/[[:space:]]+$/, "", $0)
      gsub(/^["'\'']|["'\'']$/, "", $0)
      if (length($0) > 0) print $0
    }
  ' "$manifest"
}

# Validiert eine Liste von Shared-Dateinamen gegen das _shared-Verzeichnis
# und gegen Kollisionen mit bestehenden Skill-Referenzen.
#
# Argumente:
#   $1 skill_name (nur für Fehlermeldungen)
#   $2 shared_root   (z.B. /repo/_shared)
#   $3 skill_refs    (z.B. /repo/<skill>/references) — kann fehlen
#   restliche Args:  die Dateinamen
#
# Gibt 0 zurueck, wenn alles passt; sonst != 0 mit Meldung auf STDERR.
validate_shared_references() {
  local skill="$1"
  local shared_root="$2"
  local skill_refs="$3"
  shift 3
  local name path collision_path
  local fail=0
  for name in "$@"; do
    path="$shared_root/references/$name"
    if [ ! -f "$path" ]; then
      echo "FEHLER: Skill '$skill' verlangt Shared-Datei '$name', aber '$path' existiert nicht." >&2
      fail=1
    fi
    collision_path="$skill_refs/$name"
    if [ -n "$skill_refs" ] && [ -e "$collision_path" ]; then
      echo "FEHLER: Skill '$skill' hat eine eigene 'references/$name' — Kollision mit Shared-Datei. Eine der beiden umbenennen." >&2
      fail=1
    fi
  done
  return "$fail"
}
