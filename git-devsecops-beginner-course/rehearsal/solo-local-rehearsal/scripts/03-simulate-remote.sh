#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/simulate-remote"
remote_repo="$workspace/remote/origin.git"
repo="$workspace/local-working-repo"

echo "Creating local remote simulation in $workspace"
rm -rf "$workspace"
mkdir -p "$workspace/remote" "$repo"

git init --bare --initial-branch=main "$remote_repo" >/dev/null
git -C "$repo" init --initial-branch=main >/dev/null
git -C "$repo" config user.name "Course Tester"
git -C "$repo" config user.email "course.tester@example.com"

printf "# DevSecOps Student Site\n" > "$repo/README.md"
git -C "$repo" add README.md
git -C "$repo" commit -m "Add README" >/dev/null
git -C "$repo" remote add origin "$remote_repo"
git -C "$repo" push -u origin main >/dev/null

echo "Remote simulation ready."
git -C "$repo" remote -v
