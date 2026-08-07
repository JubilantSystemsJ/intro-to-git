#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/branch-workflow"
repo="$workspace/student-site"

echo "Creating branch workflow demo in $repo"
rm -rf "$workspace"
mkdir -p "$repo"

git -C "$repo" init --initial-branch=main >/dev/null
git -C "$repo" config user.name "Course Tester"
git -C "$repo" config user.email "course.tester@example.com"
printf "<h1>About</h1>\n" > "$repo/about.html"
git -C "$repo" add about.html
git -C "$repo" commit -m "Add about page" >/dev/null

git -C "$repo" switch -c feature/add-about-heading >/dev/null
printf "<h1>About our DevSecOps class</h1>\n" > "$repo/about.html"
git -C "$repo" add about.html
git -C "$repo" commit -m "Update about heading" >/dev/null
git -C "$repo" switch main >/dev/null
git -C "$repo" merge feature/add-about-heading --no-edit >/dev/null

echo "Branch workflow demo ready."
git -C "$repo" log --oneline --decorate -n 4
