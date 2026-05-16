#!/usr/bin/env bash
# Lokaler Dry-Run des Release-Builds.
#
# Spiegelt das Verhalten der GitHub-Action wider: pro Top-Level-Verzeichnis
# mit SKILL.md ein ZIP, inklusive Manifest-basierter Shared-Injection,
# LICENSE und NOTICE.md. Output in dist/.
#
# Aufruf:
#   scripts/build-zips.sh             # alle Skills
#   scripts/build-zips.sh <skill>     # nur einen Skill
#
# Versionsstring: vlocal (klar erkennbar als Nicht-Release).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
# shellcheck source=lib-shared.sh
source "$SCRIPT_DIR/lib-shared.sh"

VERSION="vlocal"
SHARED_ROOT="$REPO_ROOT/_shared"
DIST="$REPO_ROOT/dist"

filter="${1:-}"
mkdir -p "$DIST"

count=0
for dir in "$REPO_ROOT"/*/; do
  skill="$(basename "$dir")"
  [ -f "$dir/SKILL.md" ] || continue
  [ -z "$filter" ] || [ "$filter" = "$skill" ] || continue

  zipname="${skill}-${VERSION}.zip"
  echo "Packaging $skill -> dist/$zipname"
  staging="$(mktemp -d)"
  trap 'rm -rf "$staging"' RETURN
  cp -R "$dir." "$staging/"

  manifest="$staging/skill.manifest.yml"
  if [ -f "$manifest" ]; then
    mapfile -t shared_refs < <(manifest_shared_references "$manifest")
    if [ "${#shared_refs[@]}" -gt 0 ]; then
      mkdir -p "$staging/references"
      validate_shared_references "$skill" "$SHARED_ROOT" "$dir/references" "${shared_refs[@]}"
      for name in "${shared_refs[@]}"; do
        cp "$SHARED_ROOT/references/$name" "$staging/references/$name"
      done
    fi
    rm -f "$manifest"
  fi

  [ -f "$staging/references/.gitignore" ] && rm -f "$staging/references/.gitignore"
  [ -f "$REPO_ROOT/LICENSE" ] && cp "$REPO_ROOT/LICENSE" "$staging/LICENSE"
  [ -f "$REPO_ROOT/NOTICE.md" ] && cp "$REPO_ROOT/NOTICE.md" "$staging/NOTICE.md"

  rm -f "$DIST/$zipname"
  (cd "$staging" && zip -rq "$DIST/$zipname" . -x "*.DS_Store" "__MACOSX/*")
  rm -rf "$staging"
  trap - RETURN
  count=$((count + 1))
done

if [ "$count" -eq 0 ]; then
  if [ -n "$filter" ]; then
    echo "Kein Skill '$filter' gefunden." >&2
  else
    echo "Keine Skills gefunden (kein Top-Level-Verzeichnis mit SKILL.md)." >&2
  fi
  exit 1
fi

echo
ls -la "$DIST"/*.zip
