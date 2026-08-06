# Solo Local Rehearsal

This guide mirrors and expands the rehearsal instructions under `rehearsal/solo-local-rehearsal/README.md`. Use it when you want to practise the full course alone on one machine without internet access.

## Why rehearse locally

Local rehearsal lets you confirm every command, explain tricky steps clearly, and adapt to classrooms with weak or no internet. It also helps you separate Git concepts from platform-specific UI steps.

## Recommended rehearsal flow

1. Start with the manual chaos activity to show the pain of unmanaged file sharing.
2. Create a local repository and practise status, add, commit, and log.
3. Simulate a remote with `git init --bare`.
4. Simulate two students with two local clones.
5. Practise feature branches and small changes.
6. Demonstrate `.gitignore` and fake secret handling.
7. Create a deliberate merge conflict and resolve it manually.
8. Rehearse `origin` and `upstream` with local bare repositories.
9. Show why environment branches can drift.

## Suggested rehearsal commands

From the course rehearsal directory:

```bash
bash scripts/01-manual-chaos.sh
bash scripts/02-local-git-basics.sh
bash scripts/03-simulate-remote.sh
bash scripts/04-simulate-two-students.sh
bash scripts/05-branch-workflow.sh
bash scripts/06-gitignore-secrets.sh
bash scripts/07-merge-conflict.sh
bash scripts/08-origin-upstream.sh
bash scripts/09-environment-branch-drift.sh
```

## Teaching reminders during rehearsal

- Remind students that `origin` is just a name.
- Remind students that `upstream` usually matters in fork workflows.
- Remind students that merge to `main` does not deploy anything unless CI/CD is configured.
- Keep all demo repositories under a temporary local workspace so cleanup is easy.

## Expected rehearsal outcome

By the end of rehearsal, you should be able to teach every major course workflow locally without relying on a hosted platform.
