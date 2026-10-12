#!/usr/bin/env bash
# Sync notes from the Obsidian vault into this Quartz site, build, and publish.
#
#   ./publish.sh           sync → build → commit → push (Vercel deploys)
#   ./publish.sh --serve   sync → local preview on http://localhost:8080, no push
#   ./publish.sh --dry     show what would be synced, change nothing
#
# The vault stays the source of truth; content/ is a disposable copy of it.
set -euo pipefail
cd "$(dirname "$0")"

VAULT_DIR="$HOME/Documents/cicely_ak/octomoon/ocuwise"
EXCLUDES=(--exclude 'zzzarchive' --exclude 'zzzattachments' --exclude '.obsidian' --exclude '.DS_Store' --exclude '.trash')

[ -d "$VAULT_DIR" ] || { echo "vault folder not found: $VAULT_DIR" >&2; exit 1; }

if [ "${1:-}" = "--dry" ]; then
	rsync -a --delete --dry-run --itemize-changes "${EXCLUDES[@]}" "$VAULT_DIR"/ content/
	exit 0
fi

rsync -a --delete "${EXCLUDES[@]}" "$VAULT_DIR"/ content/
echo "synced $(find content -name '*.md' | wc -l | tr -d ' ') notes from $VAULT_DIR"

if [ "${1:-}" = "--serve" ]; then
	exec npx quartz build --serve
fi

npx quartz build >/dev/null
echo "build ok"

git add -A
if git diff --cached --quiet; then
	echo "nothing changed, nothing to publish"
	exit 0
fi
git commit -q -m "notes sync $(date '+%Y-%m-%d %H:%M')"
git push -q
echo "pushed to $(git remote get-url origin) — Vercel will deploy shortly"
