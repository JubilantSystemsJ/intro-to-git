#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"
workspace="$activity_dir/demo-workspace"
working_repo="$workspace/local-working-repo"
remote_repo="$workspace/remote/origin.git"

echo "Preparing demo workspace at $workspace"
rm -rf "$workspace"
mkdir -p "$workspace/remote" "$working_repo"

echo "Creating local bare remote at $remote_repo"
git init --bare --initial-branch=main "$remote_repo" >/dev/null

echo "Initializing working repository"
git -C "$working_repo" init --initial-branch=main >/dev/null
git -C "$working_repo" config user.name "Course Tester"
git -C "$working_repo" config user.email "course.tester@example.com"

cp "$activity_dir/starter/README.md" "$working_repo/README.md"
cp "$activity_dir/starter/index.html" "$working_repo/index.html"
cp "$activity_dir/starter/contact.html" "$working_repo/contact.html"

git -C "$working_repo" add README.md index.html contact.html
git -C "$working_repo" commit -m "Create starter site" >/dev/null

git -C "$working_repo" remote add origin "$remote_repo"

echo "Pushing main to origin"
git -C "$working_repo" push -u origin main >/dev/null

echo "Demo ready."
echo "Working repo: $working_repo"
echo "Remote repo:  $remote_repo"
