#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"
workspace="$activity_dir/demo-workspace"
remote_repo="$workspace/origin.git"
seed_repo="$workspace/seed"
student_a="$workspace/student-a"
student_b="$workspace/student-b"

echo "Resetting conflict demo workspace"
rm -rf "$workspace"
mkdir -p "$workspace"

git init --bare --initial-branch=main "$remote_repo" >/dev/null
git init --initial-branch=main "$seed_repo" >/dev/null
git -C "$seed_repo" config user.name "Course Tester"
git -C "$seed_repo" config user.email "course.tester@example.com"
cp "$activity_dir/exercise-starter/index.html" "$seed_repo/index.html"
git -C "$seed_repo" add index.html
git -C "$seed_repo" commit -m "Create exercise starter page" >/dev/null
git -C "$seed_repo" remote add origin "$remote_repo"
git -C "$seed_repo" push -u origin main >/dev/null
git -C "$remote_repo" symbolic-ref HEAD refs/heads/main

git clone "$remote_repo" "$student_a" >/dev/null
git clone "$remote_repo" "$student_b" >/dev/null

for repo in "$student_a" "$student_b"; do
  git -C "$repo" config user.name "Course Tester"
  git -C "$repo" config user.email "course.tester@example.com"
done

printf "<h1>Welcome to our DevSecOps class</h1>\n" > "$student_a/index.html"
git -C "$student_a" add index.html
git -C "$student_a" commit -m "Update welcome heading for DevSecOps" >/dev/null
git -C "$student_a" push origin main >/dev/null

printf "<h1>Welcome to our Git class</h1>\n" > "$student_b/index.html"
git -C "$student_b" add index.html
git -C "$student_b" commit -m "Update welcome heading for Git class" >/dev/null

set +e
git -C "$student_b" pull --no-rebase origin main
pull_status=$?
set -e

if [[ "$pull_status" -eq 0 ]]; then
  echo "Expected a merge conflict, but pull succeeded."
  exit 1
fi

echo "Conflict created in $student_b/index.html"
echo "Resolve it manually to:"
echo "<h1>Welcome to our Git for DevSecOps class</h1>"
