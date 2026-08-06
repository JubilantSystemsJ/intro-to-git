#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
course_root="$repo_root/git-devsecops-beginner-course"

require_file() {
  local path="$1"
  [[ -f "$path" ]] || {
    echo "Missing file: $path" >&2
    exit 1
  }
}

require_dir() {
  local path="$1"
  [[ -d "$path" ]] || {
    echo "Missing directory: $path" >&2
    exit 1
  }
}

section_line() {
  local file="$1"
  local header="$2"
  grep -n -F "$header" "$file" | head -n 1 | cut -d: -f1
}

check_activity_readme() {
  local file="$1"
  local previous=0
  local current=0
  local sections=(
    "# Activity:"
    "## Goal"
    "## Scenario"
    "## What problem does this solve?"
    "## Why does this exist?"
    "## What did people do before this?"
    "## What was wrong or limited about the old way?"
    "## Is this the simplest solution? If not, why accept the complexity?"
    "## Trade-offs and downsides"
    "## Starter files"
    "## Instructions"
    "## Expected result"
    "## Check your work"
    "## Common mistakes"
    "## Discussion questions"
    "## Reference solution"
  )

  for section in "${sections[@]}"; do
    current="$(section_line "$file" "$section")"
    [[ -n "$current" ]] || {
      echo "Missing section '$section' in $file" >&2
      exit 1
    }
    if (( current <= previous )); then
      echo "Section order error for '$section' in $file" >&2
      exit 1
    fi
    previous="$current"
  done
}

require_dir "$course_root"
require_dir "$course_root/student-guide"
require_dir "$course_root/instructor-guide"
require_dir "$course_root/platform-guides"
require_dir "$course_root/activities"
require_dir "$course_root/rehearsal/solo-local-rehearsal/scripts"

require_file "$course_root/README.md"
require_file "$course_root/student-guide/course-overview.md"
require_file "$course_root/instructor-guide/troubleshooting.md"
require_file "$course_root/platform-guides/offline-local-only.md"
require_file "$course_root/rehearsal/solo-local-rehearsal/README.md"

while IFS= read -r activity_dir; do
  require_file "$activity_dir/README.md"
  require_dir "$activity_dir/starter"
  require_dir "$activity_dir/reference-solution"
  check_activity_readme "$activity_dir/README.md"
done < <(find "$course_root/activities" -mindepth 2 -maxdepth 2 -type d | sort)

grep -F "Git exists because manual file sharing does not scale." \
  "$course_root/activities/session-01-local-git/01-manual-chaos-before-git/README.md" >/dev/null
grep -F "origin = my remote copy" \
  "$course_root/activities/session-02-remotes/03-origin-vs-upstream/README.md" >/dev/null
grep -F "merge to \`main\` only deploys if CI/CD is configured that way" \
  "$course_root/activities/session-04-devsecops-workflow/01-branching-strategies/README.md" >/dev/null
grep -F "Do not commit real passwords, API keys, tokens, private keys, certificates, or cloud credentials." \
  "$course_root/activities/session-04-devsecops-workflow/03-secrets-and-devsecops-safety/reference-solution/security-note.md" >/dev/null

if find "$course_root" \
  \( \
    -path '*/demo-workspace/*' -o \
    -path '*/demo-remote/*' -o \
    -path '*/demo-student-a/*' -o \
    -path '*/demo-student-b/*' -o \
    -path '*/demo-seed/*' \
  \) -prune -o -type d -name .git -print | grep -q .; then
  echo "Unexpected nested .git directory found under course root" >&2
  exit 1
fi

bash -n "$course_root"/rehearsal/solo-local-rehearsal/scripts/*.sh
bash -n "$course_root"/activities/session-02-remotes/01-local-vs-remote/scripts/*.sh
bash -n "$course_root"/activities/session-02-remotes/02-clone-push-pull-fetch/scripts/*.sh
bash -n "$course_root"/activities/session-02-remotes/03-origin-vs-upstream/scripts/*.sh
bash -n "$course_root"/activities/session-03-branches-prs-conflicts/03-merge-conflict/scripts/*.sh

echo "Course validation passed."
