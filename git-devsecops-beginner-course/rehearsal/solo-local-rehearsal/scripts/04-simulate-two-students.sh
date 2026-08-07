#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/two-students"
remote_repo="$workspace/origin.git"
seed_repo="$workspace/seed"
student_a="$workspace/student-a"
student_b="$workspace/student-b"

echo "Creating two-student simulation in $workspace"
rm -rf "$workspace"
mkdir -p "$workspace"

git init --bare --initial-branch=main "$remote_repo" >/dev/null
git init --initial-branch=main "$seed_repo" >/dev/null
git -C "$seed_repo" config user.name "Course Tester"
git -C "$seed_repo" config user.email "course.tester@example.com"
printf "<h1>Welcome</h1>\n" > "$seed_repo/index.html"
git -C "$seed_repo" add index.html
git -C "$seed_repo" commit -m "Create homepage" >/dev/null
git -C "$seed_repo" remote add origin "$remote_repo"
git -C "$seed_repo" push -u origin main >/dev/null
git -C "$remote_repo" symbolic-ref HEAD refs/heads/main

git clone "$remote_repo" "$student_a" >/dev/null
git clone "$remote_repo" "$student_b" >/dev/null

for repo in "$student_a" "$student_b"; do
  git -C "$repo" config user.name "Course Tester"
  git -C "$repo" config user.email "course.tester@example.com"
done

printf "<h1>Welcome</h1>\n<p>Added by Student A</p>\n" > "$student_a/index.html"
git -C "$student_a" add index.html
git -C "$student_a" commit -m "Update homepage" >/dev/null
git -C "$student_a" push origin main >/dev/null

git -C "$student_b" pull --ff-only origin main >/dev/null

echo "Two-student simulation ready."
cat "$student_b/index.html"
