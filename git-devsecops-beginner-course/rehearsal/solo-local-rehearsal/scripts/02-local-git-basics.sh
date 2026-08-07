#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/local-git-basics"
repo="$workspace/devsecops-student-site"

echo "Creating local Git basics demo in $repo"
rm -rf "$workspace"
mkdir -p "$repo"

git -C "$repo" init --initial-branch=main >/dev/null
git -C "$repo" config user.name "Course Tester"
git -C "$repo" config user.email "course.tester@example.com"

printf "# DevSecOps Student Site\n" > "$repo/README.md"
git -C "$repo" add README.md
git -C "$repo" commit -m "Add README" >/dev/null

printf "<h1>Welcome</h1>\n" > "$repo/index.html"
git -C "$repo" add index.html
git -C "$repo" commit -m "Add homepage" >/dev/null

echo "Local Git basics demo ready."
git -C "$repo" status --short
git -C "$repo" log --oneline
