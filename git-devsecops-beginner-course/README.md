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

Each activity folder contains a `README.md`, an `exercise-starter/` folder, and an `exercise-solution/` folder. Students should copy the exercise starter files into their own working folder before following the commands. Instructors can use the exercise solution to compare outcomes or recover quickly during a live class.

## `exercise-starter/` vs `exercise-solution/`

- `exercise-starter/` contains the files students need before they begin the activity.
- `exercise-solution/` contains one completed version of the activity outcome.

## How to start as a student

1. Read `student-guide/course-overview.md` first.
2. Open the Session 1 activity README files and work through them in order.
3. For each activity, copy the files from `exercise-starter/` into a separate practice folder before you run Git commands.
4. Try the activity yourself before looking at `exercise-solution/`.
5. Keep `student-guide/git-command-cheatsheet.md` open while you work.

Recommended starting point:

- `activities/session-01-local-git/01-manual-chaos-before-git/README.md`
- then continue through the rest of Session 1 in order

## Security warning

Do not commit real secrets into this course repository or into student practice repositories. Never use real passwords, tokens, private keys, certificates, or cloud credentials in demos.

## Nested repository warning

Do not create nested Git repositories inside this course repository. When an activity asks students to run `git init`, copy the exercise starter files into a separate practice folder first and run Git there.

## Recommended live teaching setup

- Course materials repo: this repository, used by the instructor
- Student template repo: a clean exercise starter repo copied or cloned by students
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
- `activities/` contains session-by-session labs with exercise starter files and exercise solutions.
- `rehearsal/solo-local-rehearsal/` contains local scripts for instructor practice without internet access.
