#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/environment-branch-drift"
repo="$workspace/app-repo"

echo "Creating environment branch drift demo in $repo"
rm -rf "$workspace"
mkdir -p "$repo"

git -C "$repo" init --initial-branch=main >/dev/null
git -C "$repo" config user.name "Course Tester"
git -C "$repo" config user.email "course.tester@example.com"

printf "version=1\n" > "$repo/config.txt"
git -C "$repo" add config.txt
git -C "$repo" commit -m "Add base config" >/dev/null

git -C "$repo" switch -c dev >/dev/null
printf "version=2-dev\n" > "$repo/config.txt"
git -C "$repo" add config.txt
git -C "$repo" commit -m "Update config in dev" >/dev/null

git -C "$repo" switch main >/dev/null
git -C "$repo" switch -c staging >/dev/null
printf "version=2-staging\n" > "$repo/config.txt"
git -C "$repo" add config.txt
git -C "$repo" commit -m "Update config in staging" >/dev/null

git -C "$repo" switch main >/dev/null
git -C "$repo" switch -c production >/dev/null

echo "Environment branch drift demo ready."
echo "Compare branch tips:"
git -C "$repo" log --oneline --decorate --all --graph
