#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rehearsal_dir="$(cd "$script_dir/.." && pwd)"
workspace="$rehearsal_dir/demo-workspace/manual-chaos"

echo "Creating manual chaos demo in $workspace"
rm -rf "$workspace"
mkdir -p "$workspace/student-a" "$workspace/student-b" "$workspace/student-c" "$workspace/release-manager"

printf "Welcome to our school website.\n" > "$workspace/student-a/homepage.txt"
cp "$workspace/student-a/homepage.txt" "$workspace/student-b/homepage.txt"
cp "$workspace/student-a/homepage.txt" "$workspace/student-c/homepage.txt"

printf "Welcome to our Git class.\n" > "$workspace/student-a/homepage.txt"
printf "Welcome to our school website.\nContact: class@example.com\n" > "$workspace/student-b/homepage.txt"
printf "Welcome to our school website.\nCourse: Introduction to Git for DevSecOps\n" > "$workspace/student-c/homepage.txt"

cat > "$workspace/release-manager/homepage-final.txt" <<'EOF'
Welcome to our Git class.
Contact: class@example.com
Course: Introduction to Git for DevSecOps
EOF

echo "Manual chaos demo ready."
echo "Compare the student files, then inspect:"
echo "  $workspace/release-manager/homepage-final.txt"
