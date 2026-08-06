# Introduction to Git for DevSecOps: Practical Change Control, Collaboration, Branching, and Safe Delivery

## What this course is

This course is a beginner-friendly set of materials for teaching Git as a practical DevSecOps skill. It focuses on safe change control, team collaboration, review habits, repository hygiene, and how Git connects to modern CI/CD workflows.

## Who this course is for

- Technical students who are new to Git
- Early-career engineers joining DevSecOps or platform teams
- Instructors who need hands-on classroom activities with local and offline options

## What students will learn

- How local Git tracks change safely
- How remotes support collaboration
- How branches, pull requests, and reviews reduce risk
- How merge conflicts happen and how to resolve them
- How `.gitignore`, secret handling, and branch protection support DevSecOps safety
- How Git changes can connect to CI/CD checks and safe delivery

## Recommended course format

The course is designed for four instructor-led sessions with hands-on activities. A good beginner pace is one short explanation, one demo, one student activity, and one debrief per topic.

## How to use the activities

Each activity folder contains a `README.md`, a `starter/` folder, and a `reference-solution/` folder. Students should copy the starter files into their own working folder before following the commands. Instructors can use the reference solution to compare outcomes or recover quickly during a live class.

## `starter/` vs `reference-solution/`

- `starter/` contains the files students need before they begin the activity.
- `reference-solution/` contains one completed version of the activity outcome.

## Security warning

Do not commit real secrets into this course repository or into student practice repositories. Never use real passwords, tokens, private keys, certificates, or cloud credentials in demos.

## Nested repository warning

Do not create nested Git repositories inside this course repository. When an activity asks students to run `git init`, copy the starter files into a separate practice folder first and run Git there.

## Recommended live teaching setup

- Course materials repo: this repository, used by the instructor
- Student template repo: a clean starter repo copied or cloned by students
- Group or student working repos: separate practice repos where students run Git commands safely

## Suggested four-session flow

- Session 1: Local Git basics
- Session 2: Remote collaboration
- Session 3: Branches, PRs, and conflicts
- Session 4: DevSecOps workflow

## Default beginner workflow

```text
main
 |
 |--- feature/*
 |--- fix/*
 |--- docs/*
 |--- security/*
```

## Student workflow

```text
Start from updated main.
Create a branch.
Make a small change.
Check git status.
Commit with a clear message.
Push the branch.
Open a pull request.
Get reviewed.
Fix requested changes.
Merge safely.
Delete branch after merge.
```

## Course structure

- `student-guide/` explains the course in student-friendly language.
- `instructor-guide/` provides delivery notes, troubleshooting, and rehearsal guidance.
- `platform-guides/` adapts the course to GitHub, GitLab, Gitea, and offline local-only teaching.
- `activities/` contains session-by-session labs with starter files and reference solutions.
- `rehearsal/solo-local-rehearsal/` contains local scripts for instructor practice without internet access.
