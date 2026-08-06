# Solo Local Rehearsal

This rehearsal pack lets an instructor practise the whole course on one machine with no internet access. Run it from this directory so each script creates temporary demo material under `demo-workspace/` only.

## Before you start

- Confirm Git is installed with `git --version`.
- Run the scripts from `git-devsecops-beginner-course/rehearsal/solo-local-rehearsal/`.
- Delete the demo workspace at any time with `rm -rf demo-workspace`.

## Rehearsal sequence

1. Manual chaos activity

```bash
bash scripts/01-manual-chaos.sh
```

Creates three student copies plus a release-manager copy so you can demonstrate manual file combination before Git.

2. Local Git basics

```bash
bash scripts/02-local-git-basics.sh
```

Creates a local repo, makes commits, and shows `status` and `log`.

3. Simulate a remote locally with `git init --bare`

```bash
bash scripts/03-simulate-remote.sh
```

Creates a local bare repo, connects a working repo, and pushes `main`.

4. Simulate two students with two clones

```bash
bash scripts/04-simulate-two-students.sh
```

Creates two local clones from one bare remote, pushes a change from Student A, and pulls it into Student B.

5. Branch workflow

```bash
bash scripts/05-branch-workflow.sh
```

Creates a feature branch, makes a change, and merges it back to `main`.

6. `.gitignore` and fake secret

```bash
bash scripts/06-gitignore-secrets.sh
```

Shows how to ignore `.env`, commit `.env.example`, and spot a fake secret-like value.

7. Merge conflict

```bash
bash scripts/07-merge-conflict.sh
```

Creates a conflict and stops so you can resolve it manually.

8. Origin and upstream simulation

```bash
bash scripts/08-origin-upstream.sh
```

Simulates an official repo, a student fork, and a working clone.

9. Environment branch drift

```bash
bash scripts/09-environment-branch-drift.sh
```

Shows how `dev`, `staging`, and `production` branches can drift apart if promotion is inconsistent.

## Teaching reminders

- `origin` is just a remote name.
- `upstream` mainly matters in fork workflows.
- Merge to `main` only deploys if CI/CD is configured to deploy.
- Conflict markers are a request for a human decision, not a sign that Git is broken.

## Safe cleanup

All rehearsal scripts write only under `demo-workspace/`. Remove that directory when you are done.
