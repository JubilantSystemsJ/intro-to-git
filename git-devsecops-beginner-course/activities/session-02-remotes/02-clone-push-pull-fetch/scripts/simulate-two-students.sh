#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"
workspace="$activity_dir"
remote_repo="$workspace/demo-remote/origin.git"
student_a="$workspace/demo-student-a"
student_b="$workspace/demo-student-b"
seed_repo="$workspace/demo-seed"

echo "Cleaning existing demo folders"
rm -rf "$remote_repo" "$student_a" "$student_b" "$seed_repo" "$workspace/demo-remote"
mkdir -p "$workspace/demo-remote"

echo "Creating local bare remote"
git init --bare --initial-branch=main "$remote_repo" >/dev/null

echo "Seeding main branch"
git init --initial-branch=main "$seed_repo" >/dev/null
git -C "$seed_repo" config user.name "Course Tester"
git -C "$seed_repo" config user.email "course.tester@example.com"
cp "$activity_dir/starter/README.md" "$seed_repo/README.md"
cp "$activity_dir/starter/index.html" "$seed_repo/index.html"
git -C "$seed_repo" add README.md index.html
git -C "$seed_repo" commit -m "Create starter site" >/dev/null
git -C "$seed_repo" remote add origin "$remote_repo"
git -C "$seed_repo" push -u origin main >/dev/null
git -C "$remote_repo" symbolic-ref HEAD refs/heads/main

echo "Cloning remote twice"
git clone "$remote_repo" "$student_a" >/dev/null
git clone "$remote_repo" "$student_b" >/dev/null

for repo in "$student_a" "$student_b"; do
  git -C "$repo" config user.name "Course Tester"
  git -C "$repo" config user.email "course.tester@example.com"
done

echo "Student A makes a change and pushes"
printf "<h1>Welcome</h1>\n<p>Added by Student A</p>\n" > "$student_a/index.html"
git -C "$student_a" add index.html
git -C "$student_a" commit -m "Add student note to homepage" >/dev/null
git -C "$student_a" push origin main >/dev/null

echo "Student B fetches and pulls the change"
git -C "$student_b" fetch origin >/dev/null
git -C "$student_b" pull --ff-only origin main >/dev/null

echo "Demo ready."
echo "Student B now sees:"
cat "$student_b/index.html"
