# Git Command Cheatsheet

## Setup

```bash
git --version
```

Checks that Git is installed and shows the installed version.

```bash
git config --global user.name "Your Name"
```

Sets the name Git will attach to your commits.

```bash
git config --global user.email "you@example.com"
```

Sets the email Git will attach to your commits.

```bash
git config --global init.defaultBranch main
```

Makes new repositories use `main` as the default branch name.

## Local repository

```bash
git init
```

Creates a new local Git repository in the current folder.

```bash
git status
```

Shows what changed, what is staged, and what is still untracked.

```bash
git add README.md
git add .
```

Moves selected file changes into the staging area.

```bash
git commit -m "Add README"
```

Creates a commit from the staged changes with a message explaining why the change exists.

```bash
git log --oneline
```

Shows a short history of commits.

## Branches

```bash
git branch
```

Lists local branches and shows the current branch.

```bash
git switch main
```

Moves you to an existing branch.

```bash
git switch -c feature/add-homepage
```

Creates and switches to a new branch in one command.

## Remotes

```bash
git remote -v
```

Shows configured remote repositories and their URLs.

```bash
git remote add origin <url>
```

Adds a remote named `origin`.

```bash
git clone <url>
```

Copies a remote repository to your local machine.

```bash
git push origin main
```

Uploads local commits to a remote branch.

```bash
git pull origin main
```

Downloads changes from the remote branch and merges them into your current branch.

```bash
git fetch origin
```

Downloads remote updates without merging them into your current branch.

## Conflict resolution

```bash
git status
```

Shows which files are in conflict.

Edit the file manually to keep the correct final content.

```bash
git add <file>
git commit
```

Marks the conflict as resolved and records the merge result.

## Safety

`.gitignore`

Tells Git which untracked files to ignore, such as local secrets or logs.

```bash
git status
```

Use it often before `git add` so you see exactly what is about to be committed.

```bash
git diff
```

Shows unstaged file changes so you can review them before staging or committing.
