#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/gitignore-secrets"
repo="$workspace/student-site"

echo "Creating gitignore and secrets demo in $repo"
rm -rf "$workspace"
mkdir -p "$repo"

git -C "$repo" init --initial-branch=main >/dev/null
git -C "$repo" config user.name "Course Tester"
git -C "$repo" config user.email "course.tester@example.com"

printf ".env\n*.log\n" > "$repo/.gitignore"
printf "DB_HOST=localhost\nDB_USER=replace_me\nDB_PASSWORD=replace_me\n" > "$repo/.env.example"
printf "DB_HOST=localhost\nDB_USER=student\nDB_PASSWORD=admin123\n" > "$repo/.env"
printf "temporary log data\n" > "$repo/app.log"
printf "<h1>Welcome</h1>\n" > "$repo/index.html"

git -C "$repo" add .gitignore .env.example index.html
git -C "$repo" commit -m "Add gitignore and environment example" >/dev/null

echo "Gitignore and secrets demo ready."
echo "git status should not show .env or app.log:"
git -C "$repo" status --short
echo "Searching for fake secret in tracked files:"
if git -C "$repo" grep -n "admin123"; then
  echo "Tracked files still contain the fake secret."
else
  echo "No tracked fake secret found."
fi
