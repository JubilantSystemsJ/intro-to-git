# Git DevSecOps Beginner Course Implementation Checklist

## Status

- Source prompt: `/home/systemsj/.codex/attachments/0ee148fd-8dd3-4660-be70-597334edefbf/pasted-text.txt`
- Repository root: `/home/systemsj/source/repos/intro-to-git`
- Output root: `git-devsecops-beginner-course/`

## Problem Statement

Create a complete beginner-friendly Git for DevSecOps course package with reusable teaching guides, activity packs, rehearsal scripts, and regression checks. The repository must contain real instructional content and usable demo assets rather than placeholders, and validation must prove the structure, expected content, and script syntax are intact.

## Locked Implementation Rules

### Universal

- Create tests to prevent regressions and focus them on behavior and outcomes rather than implementation details.
- Prefer real file-system and shell validation over mocks.
- Auto-update documentation as changes are made.
- Provide locally runnable verifiable outputs with concrete commands and budgets.
- Put timeouts on validation commands where practical and fix root causes before calling work complete.
- Do not create nested Git repositories inside the course repository.
- Activity instructions must keep student Git initialization in copied working folders, not inside the course-materials repo.

## Scope Boundary

### In scope

- Course root structure and all requested guides
- Every activity README, exercise-starter, and exercise-solution asset
- Useful helper folders such as `notes/`, `scripts/`, and `diagrams/` where requested
- Rehearsal README and runnable Bash scripts
- Regression checks for structure, README sections, required content markers, and shell syntax

### Out of scope

- Internet-dependent platform automation
- Real CI platform configuration beyond the requested sample workflow file
- Packaging slides beyond a `slides/README.md`

## Runtime Budgets and Timeout Contract

| Command or task | Budget |
| --- | --- |
| `bash tests/validate-course.sh` | 20 seconds |
| `bash -n rehearsal/solo-local-rehearsal/scripts/*.sh` | 10 seconds |
| Each rehearsal script smoke test | 20 seconds |
| `find git-devsecops-beginner-course ...` structure listing | 10 seconds |

## Closed-Loop Verifiable Outputs

| Output | Validation |
| --- | --- |
| Course tree exists with requested sessions and guides | `find git-devsecops-beginner-course -maxdepth 4 -type d | sort` |
| Requested files exist with non-placeholder content | `bash tests/validate-course.sh` |
| Rehearsal scripts are syntactically valid | `bash -n git-devsecops-beginner-course/rehearsal/solo-local-rehearsal/scripts/*.sh` |
| Selected rehearsal demos run successfully | timed `bash` execution of the selected scripts from the rehearsal directory |

## Phase 1: Planning and Scaffold

### Goal

Translate the source prompt into an executable repo plan and scaffold the documentation and directory structure.

### Checklist

- [x] P1-01 Create the canonical implementation checklist in-repo.
- [x] P1-02 Update the root README to explain the generated course location and validation entry point.
- [x] P1-03 Create the top-level course directories needed for guides, activities, rehearsal, tests, and docs.

### Verifiable Outputs

- Checklist file exists with phases, budgets, and validation commands.
- Root README points to the course root and validation script.

### Local Validation Tasks

```bash
test -f docs/implementation-plans/git-devsecops-beginner-course-checklist.md
test -f README.md
```

### Phase Complete When

The repo contains the implementation checklist and root documentation entry points.

## Phase 2: Core Course Content

### Goal

Create the course guides, platform docs, and all activity content with complete exercise-starter and exercise-solution assets.

### Checklist

- [x] P2-01 Write the course root README and the `slides/` placeholder guide.
- [x] P2-02 Write the student, instructor, and platform guides.
- [x] P2-03 Create Session 1 activities with complete READMEs and exercise-starter/exercise-solution files.
- [x] P2-04 Create Session 2 activities with complete READMEs, exercise-starter/exercise-solution files, and local remote scripts.
- [x] P2-05 Create Session 3 activities with complete READMEs, exercise-starter/exercise-solution files, and conflict/review assets.
- [x] P2-06 Create Session 4 activities with complete READMEs, diagrams, security content, CI/CD sample, and capstone assets.

### Verifiable Outputs

- All activity folders contain `README.md`, `exercise-starter/`, and `exercise-solution/`.
- Every activity README follows the required section template.
- Requested exercise-starter and exercise-solution files match the prompt.

### Local Validation Tasks

```bash
bash tests/validate-course.sh
```

### Phase Complete When

The full course content exists and the validation script confirms required structure and content markers.

## Phase 3: Rehearsal Automation and Regression Tests

### Goal

Create safe local rehearsal scripts and automated regression checks.

### Checklist

- [x] P3-01 Write the solo rehearsal README covering all requested simulations.
- [x] P3-02 Implement the nine rehearsal Bash scripts with safe `demo-workspace/` boundaries.
- [x] P3-03 Add repository validation tests for structure, sections, expected content, and script syntax.
- [x] P3-04 Make scripts executable where needed.

### Verifiable Outputs

- Rehearsal scripts pass `bash -n`.
- Validation tests pass.

### Local Validation Tasks

```bash
bash -n git-devsecops-beginner-course/rehearsal/solo-local-rehearsal/scripts/*.sh
bash tests/validate-course.sh
```

### Phase Complete When

The repo includes runnable local rehearsal automation and repeatable regression checks.

## Phase 4: Verification and Fix Loop

### Goal

Run the requested checks and smoke tests, fix any issues found, and capture accurate outcomes.

### Checklist

- [x] P4-01 Run shell syntax validation with a timeout budget.
- [x] P4-02 Run the structure listing commands from the repo root.
- [x] P4-03 Run the selected rehearsal scripts with timeouts from the rehearsal directory.
- [x] P4-04 Do not treat the merge conflict script as pass/fail; verify it stops intentionally with manual instructions.
- [x] P4-05 Fix any failures and rerun the affected validations.

### Verifiable Outputs

- Validation commands complete within budget.
- Final summary accurately states what was and was not tested.

### Local Validation Tasks

```bash
timeout 20s bash tests/validate-course.sh
timeout 10s bash -n git-devsecops-beginner-course/rehearsal/solo-local-rehearsal/scripts/*.sh
```

### Phase Complete When

All requested validations pass or any remaining gap is explicitly documented with reason and impact.

## Final Gate

- [x] All requested directories and files exist under `git-devsecops-beginner-course/`.
- [x] Every activity README uses the required section headings.
- [x] Exercise-starter and exercise-solution assets are populated, not placeholder-only.
- [x] Rehearsal scripts are safe, local-only, and syntactically valid.
- [x] Regression tests pass.
- [x] Final report distinguishes tested scripts from untested ones.
