#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/origin-upstream"
official_repo="$workspace/official.git"
official_seed="$workspace/official-seed"
student_fork="$workspace/student-fork.git"
student_fork_seed="$workspace/student-fork-seed"
student_local="$workspace/student-local"

echo "Creating origin/upstream demo in $workspace"
rm -rf "$workspace"
mkdir -p "$workspace"

git init --bare --initial-branch=main "$official_repo" >/dev/null
git init --initial-branch=main "$official_seed" >/dev/null
git -C "$official_seed" config user.name "Course Tester"
git -C "$official_seed" config user.email "course.tester@example.com"
printf "# Official Project\n" > "$official_seed/README.md"
git -C "$official_seed" add README.md
git -C "$official_seed" commit -m "Create official project" >/dev/null
git -C "$official_seed" remote add origin "$official_repo"
git -C "$official_seed" push -u origin main >/dev/null
git -C "$official_repo" symbolic-ref HEAD refs/heads/main

git clone "$official_repo" "$student_fork_seed" >/dev/null
git -C "$student_fork_seed" config user.name "Course Tester"
git -C "$student_fork_seed" config user.email "course.tester@example.com"
git init --bare --initial-branch=main "$student_fork" >/dev/null
git -C "$student_fork_seed" remote rename origin upstream
git -C "$student_fork_seed" remote add origin "$student_fork"
git -C "$student_fork_seed" push -u origin main >/dev/null
git -C "$student_fork" symbolic-ref HEAD refs/heads/main

git clone "$student_fork" "$student_local" >/dev/null
git -C "$student_local" config user.name "Course Tester"
git -C "$student_local" config user.email "course.tester@example.com"
git -C "$student_local" remote add upstream "$official_repo"

printf "# Official Project\n\nOfficial security policy.\n" > "$official_seed/README.md"
git -C "$official_seed" add README.md
git -C "$official_seed" commit -m "Add security policy" >/dev/null
git -C "$official_seed" push origin main >/dev/null

git -C "$student_local" fetch upstream >/dev/null
git -C "$student_local" merge upstream/main --no-edit >/dev/null
git -C "$student_local" push origin main >/dev/null

echo "Origin/upstream demo ready."
git -C "$student_local" remote -v
