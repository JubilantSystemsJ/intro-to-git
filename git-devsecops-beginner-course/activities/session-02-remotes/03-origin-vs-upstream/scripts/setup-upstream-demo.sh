#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"
workspace="$activity_dir/demo-workspace"
official_repo="$workspace/official.git"
official_seed="$workspace/official-seed"
student_fork="$workspace/student-fork.git"
student_fork_seed="$workspace/student-fork-seed"
student_local="$workspace/student-local"

echo "Resetting demo workspace"
rm -rf "$workspace"
mkdir -p "$workspace"

echo "Creating official upstream bare repository"
git init --bare --initial-branch=main "$official_repo" >/dev/null
git init --initial-branch=main "$official_seed" >/dev/null
git -C "$official_seed" config user.name "Course Tester"
git -C "$official_seed" config user.email "course.tester@example.com"
cp "$activity_dir/exercise-starter/README.md" "$official_seed/README.md"
git -C "$official_seed" add README.md
git -C "$official_seed" commit -m "Create official project" >/dev/null
git -C "$official_seed" remote add origin "$official_repo"
git -C "$official_seed" push -u origin main >/dev/null
git -C "$official_repo" symbolic-ref HEAD refs/heads/main

echo "Simulating a student fork"
git clone "$official_repo" "$student_fork_seed" >/dev/null
git -C "$student_fork_seed" config user.name "Course Tester"
git -C "$student_fork_seed" config user.email "course.tester@example.com"
git init --bare --initial-branch=main "$student_fork" >/dev/null
git -C "$student_fork_seed" remote rename origin upstream
git -C "$student_fork_seed" remote add origin "$student_fork"
git -C "$student_fork_seed" push -u origin main >/dev/null
git -C "$student_fork" symbolic-ref HEAD refs/heads/main

echo "Cloning the student's fork"
git clone "$student_fork" "$student_local" >/dev/null
git -C "$student_local" config user.name "Course Tester"
git -C "$student_local" config user.email "course.tester@example.com"
git -C "$student_local" remote add upstream "$official_repo"

echo "Upstream project receives a new change"
printf "# Official Project\n\nOfficial security policy.\n" > "$official_seed/README.md"
git -C "$official_seed" add README.md
git -C "$official_seed" commit -m "Add official security policy" >/dev/null
git -C "$official_seed" push origin main >/dev/null

echo "Student fetches upstream and merges"
git -C "$student_local" remote -v
git -C "$student_local" fetch upstream >/dev/null
git -C "$student_local" merge upstream/main --no-edit >/dev/null
git -C "$student_local" push origin main >/dev/null

echo "Demo ready."
echo "Final README:"
cat "$student_local/README.md"
