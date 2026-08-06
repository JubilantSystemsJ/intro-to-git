#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"

echo "Removing generated demo folders"
rm -rf \
  "$activity_dir/demo-remote" \
  "$activity_dir/demo-student-a" \
  "$activity_dir/demo-student-b" \
  "$activity_dir/demo-seed"
echo "Cleanup complete."
