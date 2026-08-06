#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
activity_dir="$(cd "$script_dir/.." && pwd)"
workspace="$activity_dir/demo-workspace"

echo "Removing demo workspace at $workspace"
rm -rf "$workspace"
echo "Cleanup complete."
