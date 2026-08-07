# Offline Local-Only Guide

## Why run the course offline

Offline local-only mode is useful when internet access is unavailable, student accounts are not ready, or you want to teach pure Git concepts without platform setup.

## Local folders

Give each student a separate folder copied from the same exercise starter content. This avoids shared-file confusion and keeps each person’s work isolated.

## Bare repositories

Use a local bare repository to simulate a remote:

```bash
git init --bare demo-remote/origin.git
```

Students can push to and pull from that path without internet access.

## Two local clones to simulate two students

Create two clones from the same local bare repository:

```bash
git clone demo-remote/origin.git demo-student-a
git clone demo-remote/origin.git demo-student-b
```

This lets you simulate collaboration, pushes, pulls, and conflicts.

## Manual review instead of platform pull requests

If you do not have a platform UI, simulate review by having one student show the branch diff and another student or the instructor give review comments before merge.

## Important clarification

Even offline, the same safety habits still matter: use branches, small commits, clear messages, and no secrets in Git.
