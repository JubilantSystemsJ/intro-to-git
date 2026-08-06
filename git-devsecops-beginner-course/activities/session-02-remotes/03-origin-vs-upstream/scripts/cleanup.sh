#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"

echo "Removing demo workspace"
rm -rf "$activity_dir/demo-workspace"
echo "Cleanup complete."
