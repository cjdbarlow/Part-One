#!/usr/bin/env bash

set -Eeuo pipefail

die() {
  printf 'Error: %s\n' "$1" >&2
  exit 1
}

if [[ $# -ne 1 || -z "${1//[[:space:]]/}" ]]; then
  printf 'Usage: %s "commit message"\n' "$(basename "$0")" >&2
  exit 2
fi

commitMessage="$1"
repoRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$repoRoot"

command -v git >/dev/null 2>&1 || die "Git is not available."
command -v quarto >/dev/null 2>&1 || die "Quarto is not available."

if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" != "true" ]]; then
  die "The script is not inside a Git repository."
fi

if ! branchName="$(git symbolic-ref --quiet --short HEAD)"; then
  die "The repository is in a detached HEAD state. Check out a branch first."
fi

if ! upstream="$(git rev-parse --abbrev-ref '@{upstream}' 2>/dev/null)"; then
  die "Branch '$branchName' has no configured upstream."
fi

if [[ -z "$(git status --porcelain)" ]]; then
  die "There are no changes to commit."
fi

printf 'Rendering PDF...\n'
quarto render --to pdf

printf 'Rendering HTML...\n'
quarto render --to html --no-clean

[[ -s _book/Part-One.pdf ]] || die "The PDF render did not create _book/Part-One.pdf."
[[ -s _book/index.html ]] || die "The HTML render did not create _book/index.html."

printf 'Both renders completed. Staging changes...\n'
git add --all

if git diff --cached --quiet; then
  die "There are no staged changes to commit."
fi

git commit -m "$commitMessage"

printf 'Pushing %s to %s...\n' "$branchName" "$upstream"
git push

printf 'Publishing rendered book to GitHub Pages...\n'
quarto publish gh-pages --no-render --no-prompt --no-browser

printf 'Published successfully.\n'
