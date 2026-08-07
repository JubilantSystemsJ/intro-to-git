# Course Overview

## Course purpose

This course teaches Git as a practical teamwork tool for DevSecOps. The goal is not only to learn commands, but to understand how Git helps teams make safer changes, review work clearly, and avoid avoidable delivery mistakes.

## What Git is

Git is a version control system. It records changes to files over time so people can work safely, compare versions, recover earlier states, and collaborate without guessing which file copy is the newest.

## Why DevSecOps teams use Git

DevSecOps teams use Git because it helps them:

- track exactly what changed and why
- review changes before merging
- separate work with branches
- connect changes to checks and deployment workflows
- reduce the risk of accidental secrets, broken files, or unreviewed changes

## The four sessions

1. Session 1 covers local Git basics and how commits record work.
2. Session 2 explains remotes, cloning, pushing, fetching, and pulling.
3. Session 3 introduces branches, pull requests, reviews, and merge conflicts.
4. Session 4 connects Git habits to DevSecOps workflow, hygiene, safety, and CI/CD.

## How to work through the course

Use the materials in this order:

1. Read this overview once.
2. Open `student-guide/git-command-cheatsheet.md`.
3. Start with `activities/session-01-local-git/01-manual-chaos-before-git/README.md`.
4. Continue through each activity README in order.
5. For every activity, copy the files from `exercise-starter/` into your own practice folder before you begin.
6. Only check `exercise-solution/` after you have tried the task yourself.

If you want a scripted dry run first, use `rehearsal/solo-local-rehearsal/README.md`.

## What you should be able to do by the end

By the end of the course, you should be able to:

- create and work in a local Git repository
- stage and commit changes clearly
- use a remote repository for collaboration
- create and switch branches
- open or simulate a pull request or merge request
- review and update changes before merge
- resolve a basic merge conflict
- use `.gitignore` and avoid committing secrets
- explain how Git fits into a safe delivery workflow

## Rules for classroom work

- No direct commits to `main`.
- One task per branch.
- Use clear commit messages.
- Do not commit secrets.
- Always run `git status` before committing.
